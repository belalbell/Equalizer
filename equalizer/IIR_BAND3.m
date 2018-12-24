function Hd = IIR_BAND3(input)
% All frequency values are in Hz.
Fs = input;  % Sampling Frequency

N   = 50;   % Order
Fc1 = 310;  % First Cutoff Frequency
Fc2 = 600;  % Second Cutoff Frequency

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass('N,F3dB1,F3dB2', N, Fc1, Fc2, Fs);
Hd = design(h, 'butter');

% [EOF]