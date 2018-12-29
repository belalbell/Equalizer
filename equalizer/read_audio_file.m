%reads data from the file named filename('handel.wav'), and returns sampled data , and a sample frequency for that data
%audioread(filename) : takes any type of files
%handel.wav is in matlab path
%to plot the data plot(sampledata);
%to listen to it sound(sampledata , samplerate);
function [sampledata,samplefrequency]=read_audio_file(filename)
   [sampledata,samplefrequency]= audioread(filename);