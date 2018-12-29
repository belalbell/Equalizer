function plot_amplified_signal_freq_domain(composite_signal,Fs)
Nfft = length(composite_signal);
f=linspace(0, Fs, Nfft);
G=abs(fft(composite_signal, Nfft));
title('amplified frequency');
        figure;
plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );