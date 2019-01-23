function plot_zeros_poles(band,Fs)                    
 Nfft = length(band);
 f=linspace(0, Fs, Nfft);
G=abs(fft(band, Nfft));
plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
[vz, vp] = zplane (band);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));