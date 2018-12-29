function plot_filtered_signal_in_freq_domain(filtered_signal,Fs)
Nfft = length(filtered_signal);
f=linspace(0, Fs, Nfft);
G=abs(fft(filtered_signal, Nfft));
        figure;
plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
