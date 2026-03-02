// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of sync_req
//        bit 0  - sync_req[0] (Read/Write)
//        others - reserved
// 0x14 : reserved
// 0x18 : Data signal of sync_symbol
//        bit 3~0 - sync_symbol[3:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// 0x20 : Data signal of sync_slot
//        bit 6~0 - sync_slot[6:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of symbol_num_out
//        bit 3~0 - symbol_num_out[3:0] (Read)
//        others  - reserved
// 0x2c : Control signal of symbol_num_out
//        bit 0  - symbol_num_out_ap_vld (Read/COR)
//        others - reserved
// 0x38 : Data signal of slot_num_out
//        bit 6~0 - slot_num_out[6:0] (Read)
//        others  - reserved
// 0x3c : Control signal of slot_num_out
//        bit 0  - slot_num_out_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CTRL_ADDR_SYNC_REQ_DATA       0x10
#define CTRL_BITS_SYNC_REQ_DATA       1
#define CTRL_ADDR_SYNC_SYMBOL_DATA    0x18
#define CTRL_BITS_SYNC_SYMBOL_DATA    4
#define CTRL_ADDR_SYNC_SLOT_DATA      0x20
#define CTRL_BITS_SYNC_SLOT_DATA      7
#define CTRL_ADDR_SYMBOL_NUM_OUT_DATA 0x28
#define CTRL_BITS_SYMBOL_NUM_OUT_DATA 4
#define CTRL_ADDR_SYMBOL_NUM_OUT_CTRL 0x2c
#define CTRL_ADDR_SLOT_NUM_OUT_DATA   0x38
#define CTRL_BITS_SLOT_NUM_OUT_DATA   7
#define CTRL_ADDR_SLOT_NUM_OUT_CTRL   0x3c
