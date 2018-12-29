function draw_compare_composite_signal_with_original_signal(composite_signal,original_signal,Fs)
%linspace creates a vector its interval [0:length(filtered_signal)/Fs]
% number of points (victor length) is length(filtered_signal)
t=linspace(0, length(composite_signal)/Fs,length(composite_signal)); 
%create a figure window  
figure
subplot(2,1,1);
 plot(t,composite_signal);
 title('Composite signal in time');
 xlabel('time (s)');
 ylabel('magnitude (db)');

 t=linspace(0, length(original_signal)/Fs,length(original_signal));
 subplot(2,1,2);
 plot(t,original_signal);
 title('Original signal in time');
 xlabel('time (s)');
 ylabel('magnitude (db)');
 
 
 