function plot_original_signal_in_freq_domain(original_signal,Fs)
%computes the discrete Fourier transform (DFT) of original_signal using a fast Fourier transform (FFT) algorithm.
freq_signal = fft(original_signal);
%linspace creates a vector its interval [0:Fs]
% number of points (victor length) is length(original_signal)
f = linspace(0,Fs,length(freq_signal));
%create a figure window  
figure
%subplot(m,n,p) divides the current figure into an m-by-n grid and creates axes in the position specified by p 
subplot(2,1,1);
 plot(f,abs(freq_signal));
 title('Original signal in frequency');
% xlim([0,300000]);
%ylim([0,400]);
 xlabel('frequency (HZ)');
 ylabel('magnitude (db)');
 