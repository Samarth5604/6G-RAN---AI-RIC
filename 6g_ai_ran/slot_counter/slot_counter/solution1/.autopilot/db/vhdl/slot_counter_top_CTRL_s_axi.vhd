-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
-- Tool Version Limit: 2024.05
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- 
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity slot_counter_top_CTRL_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 6;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    sync_req              :out  STD_LOGIC_VECTOR(0 downto 0);
    sync_symbol           :out  STD_LOGIC_VECTOR(3 downto 0);
    sync_slot             :out  STD_LOGIC_VECTOR(6 downto 0);
    symbol_num_out        :in   STD_LOGIC_VECTOR(3 downto 0);
    symbol_num_out_ap_vld :in   STD_LOGIC;
    slot_num_out          :in   STD_LOGIC_VECTOR(6 downto 0);
    slot_num_out_ap_vld   :in   STD_LOGIC
);
end entity slot_counter_top_CTRL_s_axi;

-- ------------------------Address Info-------------------
-- Protocol Used: ap_ctrl_none
--
-- 0x00 : reserved
-- 0x04 : reserved
-- 0x08 : reserved
-- 0x0c : reserved
-- 0x10 : Data signal of sync_req
--        bit 0  - sync_req[0] (Read/Write)
--        others - reserved
-- 0x14 : reserved
-- 0x18 : Data signal of sync_symbol
--        bit 3~0 - sync_symbol[3:0] (Read/Write)
--        others  - reserved
-- 0x1c : reserved
-- 0x20 : Data signal of sync_slot
--        bit 6~0 - sync_slot[6:0] (Read/Write)
--        others  - reserved
-- 0x24 : reserved
-- 0x28 : Data signal of symbol_num_out
--        bit 3~0 - symbol_num_out[3:0] (Read)
--        others  - reserved
-- 0x2c : Control signal of symbol_num_out
--        bit 0  - symbol_num_out_ap_vld (Read/COR)
--        others - reserved
-- 0x38 : Data signal of slot_num_out
--        bit 6~0 - slot_num_out[6:0] (Read)
--        others  - reserved
-- 0x3c : Control signal of slot_num_out
--        bit 0  - slot_num_out_ap_vld (Read/COR)
--        others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of slot_counter_top_CTRL_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_SYNC_REQ_DATA_0       : INTEGER := 16#10#;
    constant ADDR_SYNC_REQ_CTRL         : INTEGER := 16#14#;
    constant ADDR_SYNC_SYMBOL_DATA_0    : INTEGER := 16#18#;
    constant ADDR_SYNC_SYMBOL_CTRL      : INTEGER := 16#1c#;
    constant ADDR_SYNC_SLOT_DATA_0      : INTEGER := 16#20#;
    constant ADDR_SYNC_SLOT_CTRL        : INTEGER := 16#24#;
    constant ADDR_SYMBOL_NUM_OUT_DATA_0 : INTEGER := 16#28#;
    constant ADDR_SYMBOL_NUM_OUT_CTRL   : INTEGER := 16#2c#;
    constant ADDR_SLOT_NUM_OUT_DATA_0   : INTEGER := 16#38#;
    constant ADDR_SLOT_NUM_OUT_CTRL     : INTEGER := 16#3c#;
    constant ADDR_BITS         : INTEGER := 6;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_sync_req        : UNSIGNED(0 downto 0) := (others => '0');
    signal int_sync_symbol     : UNSIGNED(3 downto 0) := (others => '0');
    signal int_sync_slot       : UNSIGNED(6 downto 0) := (others => '0');
    signal int_symbol_num_out_ap_vld : STD_LOGIC;
    signal int_symbol_num_out  : UNSIGNED(3 downto 0) := (others => '0');
    signal int_slot_num_out_ap_vld : STD_LOGIC;
    signal int_slot_num_out    : UNSIGNED(6 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 2) & (1 downto 0 => '0'));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_SYNC_REQ_DATA_0 =>
                        rdata_data <= RESIZE(int_sync_req(0 downto 0), 32);
                    when ADDR_SYNC_SYMBOL_DATA_0 =>
                        rdata_data <= RESIZE(int_sync_symbol(3 downto 0), 32);
                    when ADDR_SYNC_SLOT_DATA_0 =>
                        rdata_data <= RESIZE(int_sync_slot(6 downto 0), 32);
                    when ADDR_SYMBOL_NUM_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_symbol_num_out(3 downto 0), 32);
                    when ADDR_SYMBOL_NUM_OUT_CTRL =>
                        rdata_data(0) <= int_symbol_num_out_ap_vld;
                    when ADDR_SLOT_NUM_OUT_DATA_0 =>
                        rdata_data <= RESIZE(int_slot_num_out(6 downto 0), 32);
                    when ADDR_SLOT_NUM_OUT_CTRL =>
                        rdata_data(0) <= int_slot_num_out_ap_vld;
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    sync_req             <= STD_LOGIC_VECTOR(int_sync_req);
    sync_symbol          <= STD_LOGIC_VECTOR(int_sync_symbol);
    sync_slot            <= STD_LOGIC_VECTOR(int_sync_slot);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_sync_req(0 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SYNC_REQ_DATA_0) then
                    int_sync_req(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_sync_req(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_sync_symbol(3 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SYNC_SYMBOL_DATA_0) then
                    int_sync_symbol(3 downto 0) <= (UNSIGNED(WDATA(3 downto 0)) and wmask(3 downto 0)) or ((not wmask(3 downto 0)) and int_sync_symbol(3 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_sync_slot(6 downto 0) <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SYNC_SLOT_DATA_0) then
                    int_sync_slot(6 downto 0) <= (UNSIGNED(WDATA(6 downto 0)) and wmask(6 downto 0)) or ((not wmask(6 downto 0)) and int_sync_slot(6 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_symbol_num_out <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (symbol_num_out_ap_vld = '1') then
                    int_symbol_num_out <= UNSIGNED(symbol_num_out);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_symbol_num_out_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (symbol_num_out_ap_vld = '1') then
                    int_symbol_num_out_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_SYMBOL_NUM_OUT_CTRL) then
                    int_symbol_num_out_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_slot_num_out <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (slot_num_out_ap_vld = '1') then
                    int_slot_num_out <= UNSIGNED(slot_num_out);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_slot_num_out_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (slot_num_out_ap_vld = '1') then
                    int_slot_num_out_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_SLOT_NUM_OUT_CTRL) then
                    int_slot_num_out_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
