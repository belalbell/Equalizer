function plot_filtered_signal_in_time_domain(filtered_signal,Fs)
%linspace creates a vector its interval [0:length(filtered_signal)/Fs]
% number of points (victor length) is length(filtered_signal)
t=linspace(0, length(filtered_signal)/Fs,length(filtered_signal)); 
%create a figure window  
figure
subplot(2,1,1);
 plot(t,filtered_signal);
 title('Filtered signal in time');
 xlabel('time (s)');
 ylabel('magnitude (db)');