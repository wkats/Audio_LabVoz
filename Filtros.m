function varargout = Filtros(varargin)
% FILTROS MATLAB code for Filtros.fig
%      FILTROS, by itself, creates a new FILTROS or raises the existing
%      singleton*.
%
%      H = FILTROS returns the handle to a new FILTROS or the handle to
%      the existing singleton*.
%
%      FILTROS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTROS.M with the given input arguments.
%
%      FILTROS('Property','Value',...) creates a new FILTROS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Filtros_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Filtros_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Filtros

% Last Modified by GUIDE v2.5 20-May-2015 22:36:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Filtros_OpeningFcn, ...
                   'gui_OutputFcn',  @Filtros_OutputFcn, ...
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


% --- Executes just before Filtros is made visible.
function Filtros_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Filtros (see VARARGIN)

% Choose default command line output for Filtros
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Filtros wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Filtros_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in selecciona.
function selecciona_Callback(hObject, eventdata, handles)
% hObject    handle to selecciona (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file path] = uigetfile('*.wav','/');
disp(file)
disp(path)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over selecciona.
function selecciona_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to selecciona (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
