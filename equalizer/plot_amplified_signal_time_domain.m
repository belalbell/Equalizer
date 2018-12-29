function plot_amplified_signal_time_domain(composite_signal,Fs)
Y = composite_signal(:,1);
t = linspace(0, length(Y)./Fs, length(Y));
figure;
plot(t,Y);