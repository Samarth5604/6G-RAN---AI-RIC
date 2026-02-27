import pandas as pd
import numpy as np
import torch
import torch.nn as nn
from sklearn.preprocessing import StandardScaler, MinMaxScaler
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

df = pd.read_csv("6G_RIC_MultiBand_Dataset_new.csv")

FEATURES = [
    "carrier_frequency",
    "wavelength",
    "distance",
    "velocity",
    "path_loss_dB",
    "absorption_loss_dB",
    "sinr_dB",
    "doppler_Hz",
    "spectral_efficiency",
    "queue_length",
    "packet_arrival_rate",
    "mcs_index",
    "cell_load",
]


TARGET = "schedule_label"  

X = df[FEATURES].values
y = df[TARGET].values

scaler = MinMaxScaler  ()
X_scaled = scaler.fit_transform(X)

X_train, X_test, y_train, y_test = train_test_split(
    X_scaled, y, test_size=0.2, random_state=42
)

X_train = torch.tensor(X_train, dtype=torch.float32)
y_train = torch.tensor(y_train, dtype=torch.float32).view(-1, 1)

X_test = torch.tensor(X_test, dtype=torch.float32)
y_test = torch.tensor(y_test, dtype=torch.float32).view(-1, 1)

# ============================
# 3. Linear Model
# ============================
class LinearScheduler(nn.Module):
    def __init__(self):
        super().__init__()
        self.linear = nn.Linear(13, 1)

    def forward(self, x):
        return torch.sigmoid(self.linear(x))

model = LinearScheduler()


criterion = nn.BCELoss()
optimizer = torch.optim.Adam(model.parameters(), lr=0.01)

EPOCHS = 1000

for epoch in range(EPOCHS):
    optimizer.zero_grad()
    outputs = model(X_train)
    loss = criterion(outputs, y_train)
    loss.backward()
    optimizer.step()

    if epoch % 5 == 0:
        print(f"Epoch {epoch}, Loss: {loss.item():.4f}")

# ============================
# 6. Evaluate
# ============================
with torch.no_grad():
    preds = model(X_test)
    preds_binary = (preds > 0.5).float()
    acc = accuracy_score(y_test.numpy(), preds_binary.numpy())

print("Test Accuracy:", acc)

print("\nWeights and Bias:")
for name, param in model.named_parameters():
    print(name, param.data.numpy())