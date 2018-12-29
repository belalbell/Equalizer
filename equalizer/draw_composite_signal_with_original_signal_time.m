function draw_composite_signal_with_original_signal_time(composite_signal,original_signal,Fs)
Y_composite = composite_signal(:,1);
t_composite = linspace(0, length(Y_composite)./Fs, length(Y_composite));
Y_original = original_signal(:,1);
t_original = linspace(0, length(Y_original)./Fs, length(Y_original));
figure;
%two rows , one column , in the first part
subplot(2,1,1);
plot(t_composite,Y_composite);
%two rows , one column , in the second part
subplot(2,1,2);
plot(t_original,Y_original);