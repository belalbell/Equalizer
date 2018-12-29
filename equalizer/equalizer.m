function varargout = equalizer(varargin)
% EQUALIZER MATLAB code for equalizer.fig
%      EQUALIZER, by itself, creates a new EQUALIZER or raises the existing
%      singleton*.
%
%      H = EQUALIZER returns the handle to a new EQUALIZER or the handle to
%      the existing singleton*.
%
%      EQUALIZER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EQUALIZER.M with the given input arguments.
%
%      EQUALIZER('Property','Value',...) creates a new EQUALIZER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before equalizer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to equalizer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help equalizer

% Last Modified by GUIDE v2.5 29-Dec-2018 13:11:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @equalizer_OpeningFcn, ...
                   'gui_OutputFcn',  @equalizer_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before equalizer is made visible.
function equalizer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to equalizer (see VARARGIN)
global y;
global Fs;
global band1;
global band2;
global band3;
global band4;
global band5;
global band6;
global band7;
global band8;
global band9;
global gains;
%Initialize Gains vector with zeros as default
gains=zeros(1,9);

% Choose default command line output for equalizer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes equalizer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = equalizer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% --- browse to get the *.wav file
[filename pathname]=uigetfile({'*.wav'},'File Selector');
handles.fullpathname = strcat(pathname,filename);
set(handles.address ,'string' ,handles.fullpathname)
guidata(hObject ,handles);


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% --- slider for the gain of 1 band



% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% --- slider for the gain of 2 band


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% --- slider for the gain of 3 band


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% --- slider for the gain of 4 band


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% --- slider for the gain of 5 band


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% --- slider for the gain of 6 band


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% --- slider for the gain of 7 band


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% --- slider for the gain of 8 band


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% --- slider for the gain of 9 band


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- get all user input and filter the wav
function [y,Fs,gains]=play_equalizer(hObject, handles)
global player;
% --- getting the sample data and the sample freq from the *.wav file
[handles.y,handles.Fs] = audioread(handles.fullpathname);
%y=handles.y;
%Fs=handles.Fs;
% --- setting the volume
handles.Volume=get(handles.volume,'value');
player = audioplayer(handles.Volume*handles.y, handles.Fs);
% --- setting the Fs on the user input
if handles.input.Value == 1
     handles.Fs = handles.rate.Value;
elseif handles.half.Value == 1
    handles.Fs = handles.Fs/2;
elseif handles.default.Value == 1
    handles.Fs = handles.Fs;
elseif handles.double.Value == 1
    handles.Fs = handles.Fs * 2;
end
disp(handles.Fs);
if handles.fir.Value == 1
     %--- FIR FILTERS
     
elseif handles.iir.Value == 1
         %--- IIR FILTERS
end
 
handles.g1=get(handles.slider1,'value'); % --- 1 band gain
handles.g2=get(handles.slider2,'value'); % --- 2 band gain
handles.g3=get(handles.slider3,'value'); % --- 3 band gain
handles.g4=get(handles.slider4,'value'); % --- 4 band gain
handles.g5=get(handles.slider5,'value'); % --- 5 band gain
handles.g6=get(handles.slider6,'value'); % --- 6 band gain
handles.g7=get(handles.slider7,'value'); % --- 7 band gain
handles.g8=get(handles.slider8,'value'); % --- 8 band gain
handles.g9=get(handles.slider9,'value'); % --- 9 band gain
set(handles.text17, 'String',handles.g1);
set(handles.text18, 'String',handles.g2);
set(handles.text19, 'String',handles.g3);
set(handles.text20, 'String',handles.g4);
set(handles.text21, 'String',handles.g5);
set(handles.text22, 'String',handles.g6);
set(handles.text23, 'String',handles.g7);
set(handles.text24, 'String',handles.g8);
set(handles.text25, 'String',handles.g9);
%Save the user input gains in gains vector
gains(1)=handles.g1;
gains(2)=handles.g2;
gains(3)=handles.g3;
gains(4)=handles.g4;
gains(5)=handles.g5;
gains(6)=handles.g6;
gains(7)=handles.g7;
gains(8)=handles.g8;
gains(9)=handles.g9;
y = handles.y; % --- y is the samople data
Fs = handles.Fs; % --- Fs is the sample freq


     

% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% --- play button to play the wav
global player
[y,Fs,gains]=play_equalizer(hObject , handles);
play(player);
guidata(hObject);

% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% --- pause button to pause the wav
global player
[y,Fs,gains,gains]=play_equalizer(hObject , handles);
pause(player);
guidata(hObject);

% --- Executes on button press in resume.
function resume_Callback(hObject, eventdata, handles)
% --- resume button to resume the wav
global player
[y,Fs,gains]=play_equalizer(hObject , handles);
resume(player);
guidata(hObject);

% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% --- stop button to freeze the wav
global player
[y,Fs,gains]=play_equalizer(hObject , handles);
stop(player);
guidata(hObject);

% --- Executes on slider movement.
function volume_Callback(hObject, eventdata, handles)
% --- volume slider 


% --- Executes during object creation, after setting all properties.
function volume_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function rate_Callback(hObject, eventdata, handles)
% --- get the output sample rate


% --- Executes during object creation, after setting all properties.
function rate_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in input_time.
function input_time_Callback(hObject, eventdata, handles)
% --- plot the input in time domain
global player
[y,Fs,gains]=play_equalizer(hObject , handles);
plot_original_signal_in_time_domain(y,Fs);


% --- Executes on button press in amp_time.
function [output] = amp_time_Callback(hObject, eventdata, handles)
% --- plot the amplified output on time domain
global y;
global Fs;
global band1;
global band2;
global band3;
global band4;
global band5;
global band6;
global band7;
global band8;
global band9;
global amplifiedwave;
%Get Fs and y and user gains
%Get the output of each band Filter
[y,Fs,gains]=play_equalizer(hObject , handles);
%Check if user choose IIR Filter
if handles.iir.Value == 1
band1=filter(BIIR170(Fs),y);
band2=filter(BIIR310(Fs),y);
band3=filter(BIIR600(Fs),y);
band4=filter(BIIR1000(Fs),y);
band5=filter(BIIR3K(Fs),y);
band6=filter(BIIR6K(Fs),y);
band7=filter(BIIR12K(Fs),y);
band8=filter(BIIR14K(Fs),y);
band9=filter(BIIR16K(Fs),y);
% Get the amplified output
amplifiedwave = band1*gains(1)+band2*gains(2)+band3*gains(3)+band4*gains(4)+band5*gains(5)+band6*gains(6)+band7*gains(7)+band8*gains(8)+band9*gains(9);
output = amplifiedwave ;
%Plotting the amplified output in frequency domain

Y = amplifiedwave(:,1);
t = linspace(0, length(Y)./Fs, length(Y));
figure;
plot(t,Y);

elseif handles.fir.Value == 1
composite_signal=calculate_composite_signal(y,Fs,gains);
 draw_composite_signal_with_original_signal_time(composite_signal,y,Fs);
filter_order = calculate_filter_order(composite_signal);
end


% --- Executes on button press in amp_freq.
function amp_freq_Callback(hObject, eventdata, handles)
% --- plot the amplified output on freq domain
%Here plotglobal gains;
global Fs;
global y;
global gains;
global band1;
global band2;
global band3;
global band4;
global band5;
global band6;
global band7;
global band8;
global band9;
global amplifiedwave;
[y,Fs,gains]=play_equalizer(hObject , handles);
if handles.iir.Value == 1
band1=filter(BIIR170(Fs),y);
band2=filter(BIIR310(Fs),y);
band3=filter(BIIR600(Fs),y);
band4=filter(BIIR1000(Fs),y);
band5=filter(BIIR3K(Fs),y);
band6=filter(BIIR6K(Fs),y);
band7=filter(BIIR12K(Fs),y);
band8=filter(BIIR14K(Fs),y);
band9=filter(BIIR16K(Fs),y);
amplifiedwave = band1*gains(1)+band2*gains(2)+band3*gains(3)+band4*gains(4)+band5*gains(5)+band6*gains(6)+band7*gains(7)+band8*gains(8)+band9*gains(9);
%Plotting the amplified output in frequency domain
Nfft = length(amplifiedwave);
f=linspace(0, Fs, Nfft);
G=abs(fft(amplifiedwave, Nfft));
        figure;
plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );

elseif handles.fir.Value == 1
composite_signal=calculate_composite_signal(y,Fs,gains);
 draw_composite_signal_with_original_signal_freq(composite_signal,y,Fs);
filter_order = calculate_filter_order(composite_signal);
end


% --- Executes on button press in otuput_time.
function otuput_time_Callback(hObject, eventdata, handles)
% --- plot the output without amplification on time domain
global gains;
global Fs;
global y;
[y,Fs,gains]=play_equalizer(hObject , handles);
%Plotting the output in time domain

if handles.iir.Value == 1
Y = y(:,1);
t = linspace(0, length(Y)./Fs, length(Y));
figure;
plot(t,Y);

elseif handles.fir.Value == 1
   gain =[1 1 1 1 1 1 1 1 1]; 
composite_signal=calculate_composite_signal(y,Fs,gain);
 draw_composite_signal_with_original_signal_time(composite_signal,y,Fs);
filter_order = calculate_filter_order(composite_signal);
end
%global player
%[y,Fs,final_filteredSignal]=play_equalizer(hObject , handles);
%draw_compare_composite_signal_with_original_signal(final_filteredSignal,y,Fs);

% --- Executes on button press in output_freq.
function output_freq_Callback(hObject, eventdata, handles)
% --- plot the output without amplification on the freq domain
global gains;
global Fs;
global y;
[y,Fs,gains]=play_equalizer(hObject , handles);
if handles.iir.Value == 1
    %Plotting the output in frequency domain
Nfft = length(y);
f=linspace(0, Fs, Nfft);
G=abs(fft(y, Nfft));
        figure;
plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );


elseif handles.fir.Value == 1
   gain =[1 1 1 1 1 1 1 1 1]; 
composite_signal=calculate_composite_signal(y,Fs,gain);
 draw_composite_signal_with_original_signal_freq(composite_signal,y,Fs);
 filter_order = calculate_filter_order(composite_signal);
end
        

% --- Executes on button press in input_freq.
function input_freq_Callback(hObject, eventdata, handles)
% --- plot the input on the freq domain
global player
[y,Fs,gains]=play_equalizer(hObject , handles);
plot_original_signal_in_freq_domain(y,Fs);

% --- Executes on button press in plot_1_band.
function plot_1_band_Callback(hObject, eventdata, handles)

global band1;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);
if handles.iir.Value == 1
    er=BIIR170(Fs);
    band1=filter(er,y);
 %Plotting Time Domain
        Y = band1(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
        %Plotting Frequency Domain
    Nfft = length(band1);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band1, Nfft));
        figure;
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
        %Plotting Zero/poles 
                [vz, vp] = zplane (band1);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_0_170(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end

% --- Executes on button press in plot_2_band.
function plot_2_band_Callback(hObject, eventdata, handles)
% ----- plot filter 170-310 hz
global band2;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);
if handles.iir.Value == 1
    er=BIIR310(Fs);
    band2=filter(er,y);
    %Plotting Time Domain
        Y = band2(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band2);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band2, Nfft));
                figure;
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
                            %Plotting Zero/Pole
                [vz, vp] = zplane (band2);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_170_310(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end

% --- Executes on button press in plot_3_band.
function plot_3_band_Callback(hObject, eventdata, handles)
% ----- plot filter 310-600 hz
global band3;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);
if handles.iir.Value == 1
    er=BIIR600(Fs);
    band3=filter(er,y);
        %Plotting Time Domain
        Y = band3(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band3);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band3, Nfft));
                figure;
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
                            %Plotting Zero/Pole
                [vz, vp] = zplane (band3);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
        elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_310_600(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end

% --- Executes on button press in plot_4_band.
function plot_4_band_Callback(hObject, eventdata, handles)
% ----- plot filter 600-1000 hz
global band4;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);
if handles.iir.Value == 1
    er=BIIR1000(Fs);
    band4=filter(er,y);
        %Plotting Time Domain
        Y = band4(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band4);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band4, Nfft));
                figure;
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
                            %Plotting Zero/Pole
                [vz, vp] = zplane (band4);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
          elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_600_1000(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end

% --- Executes on button press in plot_5_band.
function plot_5_band_Callback(hObject, eventdata, handles)
% ----- plot filter 1-3 khz
global band5;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);

if handles.iir.Value == 1
    [y,Fs,gains]=play_equalizer(hObject , handles);
    er=BIIR3K(Fs);
    band5=filter(er,y);
             %Plotting Time Domain
        Y = band5(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band5);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band5, Nfft));
                figure;
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
                            %Plotting Zero/Pole
               [vz, vp] = zplane (band5);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
      elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_1000_3000(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end

% --- Executes on button press in plot_6_band.
function plot_6_band_Callback(hObject, eventdata, handles)
% ----- plot filter 3-6 khz
global band6;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);

if handles.iir.Value == 1
    er=BIIR6K(Fs);
    band6=filter(er,y);
        %Plotting Time Domain
        Y = band6(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band6);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band6, Nfft));
        figure;        
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
                            %Plotting Zero/Pole
                [vz, vp] = zplane (band6);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
      elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_3000_6000(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end

% --- Executes on button press in plot_7_band.
function plot_7_band_Callback(hObject, eventdata, handles)
% ----- plot filter 6-12 khz
global band7;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);

if handles.iir.Value == 1
    er=BIIR12K(Fs);
    band7=filter(er,y);
        %Plotting Time Domain
        Y = band7(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band7);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band7, Nfft));
                figure;
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
                            %Plotting Zero/Pole
                [vz, vp] = zplane (band7);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
              elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_6000_12000(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end
% --- Executes on button press in plot_8_band.
function plot_8_band_Callback(hObject, eventdata, handles)
% ----- plot filter 12-14 khz
global band8;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);

if handles.iir.Value == 1
    er=BIIR14K(Fs);
    band8=filter(er,y);
        %Plotting Time Domain
        Y = band8(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band8);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band8, Nfft));
                figure;
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
                            %Plotting Zero/Pole
                [vz, vp] = zplane (band8);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
              elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_12000_14000(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end

% --- Executes on button press in plot_9_band.
function plot_9_band_Callback(hObject, eventdata, handles)
% ----- plot filter 14-16 khz
global band9;
global gains;
global Fs;
global y;
    [y,Fs,gains]=play_equalizer(hObject , handles);

if handles.iir.Value == 1
    er=BIIR16K(Fs);
    band9=filter(er,y);
       %Plotting Time Domain
        Y = band9(:,1);
        t = linspace(0, length(Y)./Fs, length(Y));
        figure;
        plot(t,Y);
                %Plotting Frequency Domain
    Nfft = length(band9);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(band9, Nfft));
                figure;
                    %Plotting Zero/Pole
        plot(f(1:Nfft/2), G(1:Nfft/2) , 'r-' );
         [vz, vp] = zplane (band9);
plot (real (vz), imag (vz), 'o');
set (gca, 'ColorOrderIndex', 1);
plot (real (vp), imag (vp));
              elseif handles.fir.Value == 1
    filtered_signal=filter(fir_equiripple_14000_16000(Fs),y);
    
    plot_filtered_signal_in_time_domain(filtered_signal,Fs);
    plot_filtered_signal_in_freq_domain(filtered_signal,Fs);
fvtool(filtered_signal);
end


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% --- saving the output of the equilzer into a file 
global y;
global Fs;
global band1;
global band2;
global band3;
global band4;
global band5;
global band6;
global band7;
global band8;
global band9;
global amplifiedwave;
if handles.iir.Value == 1
[y,Fs,gains]=play_equalizer(hObject , handles);
band1=filter(BIIR170(Fs),y);
band2=filter(BIIR310(Fs),y);
band3=filter(BIIR600(Fs),y);
band4=filter(BIIR1000(Fs),y);
band5=filter(BIIR3K(Fs),y);
band6=filter(BIIR6K(Fs),y);
band7=filter(BIIR12K(Fs),y);
band8=filter(BIIR14K(Fs),y);
band9=filter(BIIR16K(Fs),y);
amplifiedwave = band1*gains(1)+band2*gains(2)+band3*gains(3)+band4*gains(4)+band5*gains(5)+band6*gains(6)+band7*gains(7)+band8*gains(8)+band9*gains(9);
output = amplifiedwave ;
end
filename = 'output.wav';
audiowrite(filename,y,Fs);
