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

% Last Modified by GUIDE v2.5 24-Dec-2018 17:26:16

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
function [y,Fs]=play_equalizer(hObject, handles)
global player;
% --- getting the sample data and the sample freq from the *.wav file
[handles.y,handles.Fs] = audioread(handles.fullpathname);
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
y = handles.y; % --- y is the samople data
Fs = handles.Fs; % --- Fs is the sample freq


     

% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% --- play button to play the wav
global player
[y,Fs]=play_equalizer(hObject , handles);
play(player);
guidata(hObject);

% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% --- pause button to pause the wav
global player
[y,Fs]=play_equalizer(hObject , handles);
pause(player);
guidata(hObject);

% --- Executes on button press in resume.
function resume_Callback(hObject, eventdata, handles)
% --- resume button to resume the wav
global player
[y,Fs]=play_equalizer(hObject , handles);
resume(player);
guidata(hObject);

% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% --- stop button to freeze the wav
global player
[y,Fs]=play_equalizer(hObject , handles);
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
[y,Fs]=play_equalizer(hObject , handles);
plot_original_signal_in_time_domain(y,Fs);


% --- Executes on button press in amp_time.
function amp_time_Callback(hObject, eventdata, handles)
% --- plot the amplified output on time domain


% --- Executes on button press in amp_freq.
function amp_freq_Callback(hObject, eventdata, handles)
% --- plot the amplified output on freq domain


% --- Executes on button press in otuput_time.
function otuput_time_Callback(hObject, eventdata, handles)
% --- plot the output without amplification on time domain

%global player
%[y,Fs,final_filteredSignal]=play_equalizer(hObject , handles);
%draw_compare_composite_signal_with_original_signal(final_filteredSignal,y,Fs);

% --- Executes on button press in output_freq.
function output_freq_Callback(hObject, eventdata, handles)
% --- plot the output without amplification on the freq domain


% --- Executes on button press in input_freq.
function input_freq_Callback(hObject, eventdata, handles)
% --- plot the input on the freq domain
global player
[y,Fs]=play_equalizer(hObject , handles);
plot_original_signal_in_freq_domain(y,Fs);


% --- Executes on button press in plot_1_band.
function plot_1_band_Callback(hObject, eventdata, handles)
% ----- plot filter 0-170 hz


% --- Executes on button press in plot_2_band.
function plot_2_band_Callback(hObject, eventdata, handles)
% ----- plot filter 170-310 hz


% --- Executes on button press in plot_3_band.
function plot_3_band_Callback(hObject, eventdata, handles)
% ----- plot filter 310-600 hz


% --- Executes on button press in plot_4_band.
function plot_4_band_Callback(hObject, eventdata, handles)
% ----- plot filter 600-1000 hz


% --- Executes on button press in plot_5_band.
function plot_5_band_Callback(hObject, eventdata, handles)
% ----- plot filter 1-3 khz


% --- Executes on button press in plot_6_band.
function plot_6_band_Callback(hObject, eventdata, handles)
% ----- plot filter 3-6 khz


% --- Executes on button press in plot_7_band.
function plot_7_band_Callback(hObject, eventdata, handles)
% ----- plot filter 6-12 khz

% --- Executes on button press in plot_8_band.
function plot_8_band_Callback(hObject, eventdata, handles)
% ----- plot filter 12-14 khz


% --- Executes on button press in plot_9_band.
function plot_9_band_Callback(hObject, eventdata, handles)
% ----- plot filter 14-16 khz
