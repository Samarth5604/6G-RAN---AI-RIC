clc;
clear;
close all;

%% ======================================
% 6G THz Sweep Simulation
% OFDM + Massive MIMO + Path Loss
% Frequency: 300 GHz → 2 THz
% ======================================

c = 3e8;
d = 50;                      % distance (meters)

f_start = 300e9;
f_end   = 2e12;
numSteps = 10;

freqs = linspace(f_start,f_end,numSteps);

%% OFDM Parameters
Nfft = 128;
cpLen = 16;
numSymbols = 200;
M = 4;   % QPSK

%% Massive MIMO
Nt = 32;
Nr = 8;

BER = zeros(1,numSteps);

%% Generate Data (same data for all frequencies)
data = randi([0 M-1], Nfft*numSymbols, 1);
modData = pskmod(data, M, pi/M);

%% OFDM Modulation
txOFDM = [];
for i = 1:numSymbols
    sym = modData((i-1)*Nfft+1:i*Nfft);
    ifftSig = ifft(sym);
    txOFDM = [txOFDM; ifftSig(end-cpLen+1:end); ifftSig];
end

%% Loop Over THz Frequencies
for k = 1:numSteps
    
    fc = freqs(k);
    lambda = c/fc;
    
    %% Frequency-Dependent Path Loss
    FSPL_dB = 20*log10(4*pi*d/lambda);
    PathLoss = 10^(-FSPL_dB/10);
    
    %% MIMO Channel
    H = (randn(Nr,Nt)+1j*randn(Nr,Nt))/sqrt(2);
    
    % Beamforming (SVD)
    [U,S,V] = svd(H);
    w = V(:,1);
    
    h_eff = H(1,:)*w;
    
    %% Transmit
    txSignal = sqrt(PathLoss) * txOFDM;
    rxSignal = h_eff * txSignal;
    
    %% Add Noise
    SNR_dB = 20;
    snrLinear = 10^(SNR_dB/10);
    
    noise = sqrt(1/(2*snrLinear)) * ...
        (randn(size(rxSignal)) + 1j*randn(size(rxSignal)));
    
    rxSignal = rxSignal + noise;
    
    %% OFDM Demodulation
    rxData = [];
    index = 1;
    for i = 1:numSymbols
        rSym = rxSignal(index+cpLen:index+cpLen+Nfft-1);
        fftSig = fft(rSym);
        rxData = [rxData; fftSig];
        index = index + Nfft + cpLen;
    end
    
    %% Equalization
    rxEq = rxData / h_eff;
    
    %% Demod
    rxBits = pskdemod(rxEq, M, pi/M);
    
    %% BER
    [~, BER(k)] = biterr(data, rxBits);
    
    disp(['Frequency = ', num2str(fc/1e9), ...
          ' GHz | BER = ', num2str(BER(k))])
end

%% Plot BER vs Frequency
figure;
plot(freqs/1e12, BER,'-o','LineWidth',2);
grid on;
xlabel('Carrier Frequency (THz)');
ylabel('Bit Error Rate');
title('BER vs Frequency (300 GHz → 2 THz)');