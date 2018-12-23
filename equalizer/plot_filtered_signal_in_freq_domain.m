function plot_filtered_signal_in_freq_domain(filtered_signal,Fs)
 freq_signal = fft(filtered_signal);
 f = linspace(0,Fs,length(freq_signal));
 figure
 subplot(2,1,1);
 plot(f,abs(freq_signal));
 title('Filtered signal in frequency');
 xlabel('frequency (HZ)');
 ylabel('magnitude (db)');
