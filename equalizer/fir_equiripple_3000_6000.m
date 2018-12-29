function Hd = fir_equiripple_3000_6000(Fs)
%FIR_EQUIRIPPLE_3000_6000 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.0 and the Signal Processing Toolbox 7.2.
% Generated on: 19-Dec-2018 11:29:19

% Equiripple Bandpass filter designed using the FIRPM function.

% All frequency values are in Hz.
% Fs Sampling Frequency

Fstop1 = 2950;            % First Stopband Frequency
Fpass1 = 3000;            % First Passband Frequency
Fpass2 = 5950;            % Second Passband Frequency
Fstop2 = 6000;            % Second Stopband Frequency
Dstop1 = 0.001;           % First Stopband Attenuation
Dpass  = 0.057501127785;  % Passband Ripple
Dstop2 = 0.0001;          % Second Stopband Attenuation
dens   = 20;              % Density Factor

% Calculate the order from the parameters using FIRPMORD.
[N, Fo, Ao, W] = firpmord([Fstop1 Fpass1 Fpass2 Fstop2]/(Fs/2), [0 1 ...
                          0], [Dstop1 Dpass Dstop2]);

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, Fo, Ao, W, {dens});
Hd = dfilt.dffir(b);

% [EOF]