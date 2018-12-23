function plot_original_signal_in_time_domain(original_signal,Fs)
%linspace creates a vector its interval [0:length(original_signal)/Fs]
% number of points (victor length) is length(original_signal)
t=linspace(0, length(original_signal)/Fs,length(original_signal)); 
%create a figure window 
figure
%subplot(m,n,p) divides the current figure into an m-by-n grid and creates axes in the position specified by p
 subplot(2,1,1);
 plot(t,original_signal);
 title('Original signal in time');
 xlabel('time (s)');
 ylabel('magnitude (db)');