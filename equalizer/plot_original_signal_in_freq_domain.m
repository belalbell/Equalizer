function plot_original_signal_in_freq_domain(original_signal,Fs)
Nfft = length(original_signal);
f=linspace(0, Fs, Nfft);
%computes the discrete Fourier transform (DFT) of original_signal using a fast Fourier transform (FFT) algorithm.
G=abs(fft(original_signal, Nfft));
title('original frequency');
figure;
plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
 