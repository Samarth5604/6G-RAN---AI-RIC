import numpy as np
import pandas as pd

NUM_SNAPSHOTS = 8000
NUM_USERS = 16
BANDWIDTH = 10e9          # 10 GHz
NOISE_FIGURE = 7          # dB
TX_POWER_DBM = 30         # 1 Watt
TX_GAIN_DB = 35           # Beamforming gain
RX_GAIN_DB = 35           # Beamforming gain
NUM_PRB = 100

frequencies = [
    300e9,
    600e9,
    1e12,
    2e12,
    10e12
]

c = 3e8

rows = []

def fspl(distance, freq):
    return 20*np.log10(distance) + 20*np.log10(freq) - 147.55

def molecular_absorption(distance, freq):
    if freq < 100e9:
        return 0
    k = 0.003 * (freq / 100e9)
    return k * distance

def thermal_noise(bandwidth):
    kT_dBm_Hz = -174  
    return kT_dBm_Hz + 10*np.log10(bandwidth) + NOISE_FIGURE

def doppler_shift(velocity, freq):
    return (velocity / c) * freq

def spectral_efficiency(sinr):
    return np.log2(1 + 10**(sinr/10))

def mcs_from_sinr(sinr):
    return max(0, min(27, int((sinr + 5) / 2)))

NOISE_POWER_DBM = thermal_noise(BANDWIDTH)

for t in range(NUM_SNAPSHOTS): 
    cell_load = np.random.uniform(0.3, 0.95)
    snapshot_rows = []

    for user in range(NUM_USERS):
        
        fc = np.random.choice(frequencies)
        wavelength = c / fc
        
        distance = np.random.uniform(1, 50)
        velocity = np.random.uniform(0, 30)
        
        path_loss = fspl(distance, fc)
        absorption = molecular_absorption(distance, fc)
        
        total_loss = path_loss + absorption
        
        # Proper link budget with beamforming
        rx_power = TX_POWER_DBM + TX_GAIN_DB + RX_GAIN_DB - total_loss
        
        sinr = rx_power - NOISE_POWER_DBM
        sinr += np.random.normal(0, 2)
        
        doppler = doppler_shift(velocity, fc)
        
        spec_eff = spectral_efficiency(sinr)
        throughput = BANDWIDTH * spec_eff / 1e6
        latency = np.random.uniform(1, 10) / (spec_eff + 0.1)
        
        queue_length = np.random.exponential(50)
        arrival_rate = np.random.uniform(1, 20)
        
        mcs = mcs_from_sinr(sinr)
        prb_allocated = np.random.randint(1, NUM_PRB)
        
        snapshot_rows.append([
            t, user, fc, wavelength, distance, velocity,
            path_loss, absorption, sinr, doppler,
            spec_eff, throughput, latency,
            queue_length, arrival_rate,
            mcs, prb_allocated, cell_load
        ])

    # -------------------------------
    # Realistic Scheduling (RIC style)
    # Top 3 SINR users per slot
    # -------------------------------
    snapshot_df = pd.DataFrame(snapshot_rows)
    top_users = snapshot_df.nlargest(3, 8).index  # sinr index = 8
    
    schedule_labels = [1 if i in top_users else 0 for i in range(NUM_USERS)]
    
    for i in range(NUM_USERS):
        rows.append(snapshot_rows[i] + [schedule_labels[i]])

# -------------------------------
# Final DataFrame
# -------------------------------

columns = [
    "time",
    "user_id",
    "carrier_frequency",
    "wavelength",
    "distance",
    "velocity",
    "path_loss_dB",
    "absorption_loss_dB",
    "sinr_dB",
    "doppler_Hz",
    "spectral_efficiency",
    "throughput_Mbps",
    "latency_ms",
    "queue_length",
    "packet_arrival_rate",
    "mcs_index",
    "prb_allocated",
    "cell_load",
    "schedule_label"
]

df = pd.DataFrame(rows, columns=columns)

df.to_csv("6G_RIC_MultiBand_Dataset_new.csv", index=False)

print("Dataset generated successfully.")
print("Total samples:", len(df))

print("\nSINR Stats:")
print(df["sinr_dB"].describe())

print("\nSchedule Distribution:")
print(df["schedule_label"].value_counts())