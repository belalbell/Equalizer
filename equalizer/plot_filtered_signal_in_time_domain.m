function plot_filtered_signal_in_time_domain(filtered_signal,Fs)
Y = filtered_signal(:,1);
t = linspace(0, length(Y)./Fs, length(Y));
title('filtered time');
figure;
plot(t,Y);