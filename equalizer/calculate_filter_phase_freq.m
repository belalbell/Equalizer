function calculate_filter_phase_freq(filtered_signal)
Nfft = length(filtered_signal);
filtered_signal_freq=abs(fft(filtered_signal, Nfft));
fvtool(filtered_signal_freq);