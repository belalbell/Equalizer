function plot_original_signal_in_time_domain(original_signal,Fs)
Y = original_signal(:,1);
t = linspace(0, length(Y)./Fs, length(Y));
figure;
plot(t,Y);