function draw_composite_signal_with_original_signal_freq(composite_signal,original_signal,Fs)
Nfft_composite = length(composite_signal);
f=linspace(0, Fs, Nfft_composite);
G_composite=abs(fft(composite_signal, Nfft_composite));
%two rows , one column , in the first part
subplot(2,1,1);
plot(f(1:Nfft_composite/2), G_composite(1:Nfft_composite/2) , 'r-' );



Nfft_original = length(original_signal);
f=linspace(0, Fs, Nfft_original);
G_original=abs(fft(original_signal, Nfft_original));
%two rows , one column , in the second part
subplot(2,1,2);
plot(f(1:Nfft_original/2), G_original(1:Nfft_original/2) , 'r-' );