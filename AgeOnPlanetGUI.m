% Age Calculator GUI on different planets
% Input: DD, MM, YYYY in Edit text boxes
% Main functions:
% AgeOnPlanetGUI_OpeningFcn: sets the GUI and draws the rotating planets
% CalculateAge_Callback: calculates the age based on the given birth date and displays the results for each planet in days and years.
% Created by: Aboud Albadra
% https://github.com/aboudbadra

function varargout = AgeOnPlanetGUI(varargin)
% AGEONPLANETGUI MATLAB code for AgeOnPlanetGUI.fig
%      AGEONPLANETGUI, by itself, creates a new AGEONPLANETGUI or raises the existing
%      singleton*.
%
%      H = AGEONPLANETGUI returns the handle to a new AGEONPLANETGUI or the handle to
%      the existing singleton*.
%
%      AGEONPLANETGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AGEONPLANETGUI.M with the given input arguments.
%
%      AGEONPLANETGUI('Property','Value',...) creates a new AGEONPLANETGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AgeOnPlanetGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AgeOnPlanetGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AgeOnPlanetGUI

% Last Modified by GUIDE v2.5 16-Dec-2019 01:16:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AgeOnPlanetGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @AgeOnPlanetGUI_OutputFcn, ...
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


% --- Executes just before AgeOnPlanetGUI is made visible.
function AgeOnPlanetGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AgeOnPlanetGUI (see VARARGIN)

% Choose default command line output for AgeOnPlanetGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AgeOnPlanetGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

fig = handles.figure1;

% read planet data
planets = getplanetdata();
% set time for rotation
t= linspace(0,150*pi,20000);
% create a sphere (note: An ellipsoid is a more accurate representation)
[x,y,z] = sphere;

% Display 3D images of planets
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes1)
Re = planets(1).R_eqt; % equatorial radius
Rp = planets(1).R_pol; % polar radius

HMERC = surf(x*Re, y*Re, -z*Re);

set(HMERC,'facecolor','texture',...
                  'cdata',im2double(planets(1).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes2)
Re = planets(2).R_eqt; % equatorial radius
Rp = planets(2).R_pol; % polar radius

HVENS = surf(x*Re, y*Re, -z*Re);

set(HVENS,'facecolor','texture',...
                  'cdata',im2double(planets(2).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes3)
Re = planets(3).R_eqt; % equatorial radius
Rp = planets(3).R_pol; % polar radius

HEARTH = surf(x*Re, y*Re, -z*Re);

set(HEARTH,'facecolor','texture',...
                  'cdata',im2double(planets(3).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes4)
Re = planets(4).R_eqt; % equatorial radius
Rp = planets(4).R_pol; % polar radius

HMARS = surf(x*Re, y*Re, -z*Re);

set(HMARS,'facecolor','texture',...
                  'cdata',im2double(planets(4).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes5)
Re = planets(5).R_eqt; % equatorial radius
Rp = planets(5).R_pol; % polar radius

HJUPI = surf(x*Re, y*Re, -z*Re);

set(HJUPI,'facecolor','texture',...
                  'cdata',im2double(planets(5).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes6)
Re = planets(6).R_eqt; % equatorial radius
Rp = planets(6).R_pol; % polar radius

HSATU = surf(x*Re, y*Re, -z*Re);

set(HSATU,'facecolor','texture',...
                  'cdata',im2double(planets(6).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes7)
Re = planets(7).R_eqt; % equatorial radius
Rp = planets(7).R_pol; % polar radius

HURAN = surf(x*Re, y*Re, -z*Re);

set(HURAN,'facecolor','texture',...
                  'cdata',im2double(planets(7).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes8)
Re = planets(8).R_eqt; % equatorial radius
Rp = planets(8).R_pol; % polar radius

HNEPT = surf(x*Re, y*Re, -z*Re);

set(HNEPT,'facecolor','texture',...
                  'cdata',im2double(planets(8).map),...
                  'edgecolor','none');
axis equal
axis off
% ---------------------------------------------------------------%
% ---------------------------------------------------------------%
axes(handles.axes9)
Re = planets(3).R_eqt; % equatorial radius
Rp = planets(3).R_pol; % polar radius

HPLUTO = surf(x*Re, y*Re, -z*Re);

set(HPLUTO,'facecolor','texture',...
                  'cdata',im2double(planets(9).map),...
                  'edgecolor','none');
axis equal
axis off

% Rotating planets on their axis
for k = 2:length(t)
% Rotation speed set relative to earth
rotate(HMERC, [0,0,1], planets(3).RP/planets(1).RP);
rotate(HVENS, [0,0,1], planets(3).RP/planets(2).RP);
rotate(HEARTH,[0,0,1], planets(3).RP/planets(3).RP);
rotate(HMARS, [0,0,1], planets(3).RP/planets(4).RP);
rotate(HJUPI, [0,0,1], planets(3).RP/planets(5).RP);
rotate(HSATU, [0,0,1], planets(3).RP/planets(6).RP);
rotate(HURAN, [0,0,1], planets(3).RP/planets(7).RP);
rotate(HNEPT, [0,0,1], planets(3).RP/planets(8).RP);
rotate(HPLUTO,[0,0,1], planets(3).RP/planets(9).RP);

drawnow;

% If GUI is closed, break out of the loop
if ~ishghandle(fig)
    pause(0.2)
    return
end
    
end

% - Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: delete(hObject) closes the figure
delete(hObject); 


% --- Outputs from this function are returned to the command line.
function varargout = AgeOnPlanetGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure

% varargout{1} = handles.output;

% --- Executes during object deletion, before destroying properties.
function figure1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function DD_Callback(hObject, eventdata, handles)
% hObject    handle to DD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DD as text
%        str2double(get(hObject,'String')) returns contents of DD as a double
handles.Bday = get(hObject,'String');
if isnan(str2double(handles.Bday)) || isempty(str2double(handles.Bday))
    set(hObject,'String','DD');
    warndlg('Input must be numerical')
end
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function DD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MM_Callback(hObject, eventdata, handles)
% hObject    handle to MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MM as text
%        str2double(get(hObject,'String')) returns contents of MM as a double
handles.Bmonth = get(hObject,'String');
if isnan(str2double(handles.Bmonth)) || isempty(str2double(handles.Bmonth))
    set(hObject,'String','MM');
    warndlg('Input must be numerical')
end
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function MM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function YYYY_Callback(hObject, eventdata, handles)
% hObject    handle to YYYY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YYYY as text
%        str2double(get(hObject,'String')) returns contents of YYYY as a double
handles.Byear = get(hObject,'String');
if isnan(str2double(handles.Byear)) || isempty(str2double(handles.Byear))
    set(hObject,'String','YYYY');
    warndlg('Input must be numerical')
end

guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function YYYY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YYYY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CalculateAge.
function CalculateAge_Callback(hObject, eventdata, handles)
% hObject    handle to CalculateAge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% get planets data
planets = getplanetdata();

% get current date
curr_date = datestr(now,'dd/mm/yyyy');

% get current values of birthday edit text boxes 
day   = get(handles.DD,'String');
month = get(handles.MM,'String');
year  = get(handles.YYYY,'String');

birth_date = [day month year];

% trigger warning if user pressed calculate but did not input anything 
if isnan(str2double(birth_date)) || isempty(str2double(birth_date))
    warndlg('Input your birthday date in the form of dd/mm/yyyy (e.g. 24/07/1990)')
else
    % get birthday date
    birth_date = strcat(handles.Bday,'/',handles.Bmonth, '/',handles.Byear);
 
    % number of earth days since birth
    numdays = datenum(curr_date,'dd/mm/yyyy') - datenum(birth_date,'dd/mm/yyyy');

    % Calculate Age [years]
    MercuryYears = round(numdays/planets(1).OP,2);
    VenusYears   = round(numdays/planets(2).OP,2);
    EarthYears   = round(numdays/planets(3).OP,2);
    % Rest of orbit periods (OP) are expressed in earth years instead of earth days
    % multiple numdays/period by 1/365.26 to convert
    % planet years = [earth days] * [1 planet year/earth year] * [1 earth year/365.26 earth days]
    MarsYears    = round(numdays/(planets(4).OP*planets(3).OP),2);  
    JupiterYears = round(numdays/(planets(5).OP*planets(3).OP),2);
    SaturnYears  = round(numdays/(planets(6).OP*planets(3).OP),2);
    UranusYears  = round(numdays/(planets(7).OP*planets(3).OP),3);
    NeptuneYears = round(numdays/(planets(8).OP*planets(3).OP),3);
    PlutoYears   = round(numdays/(planets(9).OP*planets(3).OP),3);
    
    % Display Years Values
    set(handles.MercuryYears, 'String', num2str(MercuryYears))
    set(handles.VenusYears, 'String', num2str(VenusYears))
    set(handles.EarthYears, 'String', num2str(EarthYears))
    set(handles.MarsYears, 'String', num2str(MarsYears))
    set(handles.JupiterYears, 'String', num2str(JupiterYears))
    set(handles.SaturnYears, 'String', num2str(SaturnYears))
    set(handles.UranusYears, 'String', num2str(UranusYears))
    set(handles.NeptuneYears, 'String', num2str(NeptuneYears))
    set(handles.PlutoYears, 'String', num2str(PlutoYears))
    
    % Calculate Age [days]
    MercuryDays = round(numdays/planets(1).RP,1); 
    VenusDays   = round(numdays/planets(2).RP,1);
    EarthDays   = numdays;
    MarsDays    = round(numdays/planets(4).RP,1);
    JupiterDays = round(numdays/planets(5).RP,1);
    SaturnDays  = round(numdays/planets(6).RP,1);
    UranusDays  = round(numdays/planets(7).RP,1);
    NeptuneDays = round(numdays/planets(8).RP,1);
    PlutoDays   = round(numdays/planets(9).RP,1);
    
    % Display Days Values
    set(handles.MercuryDays, 'String', num2str(MercuryDays))
    set(handles.VenusDays, 'String', num2str(VenusDays))
    set(handles.EarthDays, 'String', num2str(EarthDays))
    set(handles.MarsDays, 'String', num2str(MarsDays))
    set(handles.JupiterDays, 'String', num2str(JupiterDays))
    set(handles.SaturnDays, 'String', num2str(SaturnDays))
    set(handles.UranusDays, 'String', num2str(UranusDays))
    set(handles.NeptuneDays, 'String', num2str(NeptuneDays))
    set(handles.PlutoDays, 'String', num2str(PlutoDays))

end


function MercuryYears_Callback(hObject, eventdata, handles)
% hObject    handle to MercuryYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MercuryYears as text
%        str2double(get(hObject,'String')) returns contents of MercuryYears as a double
%set(handles.VenusYears, 'String', num2str(handles.venus_yy))

% --- Executes during object creation, after setting all properties.
function MercuryYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MercuryYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function VenusYears_Callback(hObject, eventdata, handles)
% hObject    handle to VenusYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VenusYears as text
%        str2double(get(hObject,'String')) returns contents of VenusYears as a double
%set(handles.VenusYears, 'String', num2str(handles.venus_yy))

% --- Executes during object creation, after setting all properties.
function VenusYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VenusYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EarthYears_Callback(hObject, eventdata, handles)
% hObject    handle to EarthYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EarthYears as text
%        str2double(get(hObject,'String')) returns contents of EarthYears as a double


% --- Executes during object creation, after setting all properties.
function EarthYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EarthYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MarsYears_Callback(hObject, eventdata, handles)
% hObject    handle to MarsYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MarsYears as text
%        str2double(get(hObject,'String')) returns contents of MarsYears as a double


% --- Executes during object creation, after setting all properties.
function MarsYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MarsYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function JupiterYears_Callback(hObject, eventdata, handles)
% hObject    handle to JupiterYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JupiterYears as text
%        str2double(get(hObject,'String')) returns contents of JupiterYears as a double


% --- Executes during object creation, after setting all properties.
function JupiterYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JupiterYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SaturnYears_Callback(hObject, eventdata, handles)
% hObject    handle to SaturnYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SaturnYears as text
%        str2double(get(hObject,'String')) returns contents of SaturnYears as a double


% --- Executes during object creation, after setting all properties.
function SaturnYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SaturnYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function UranusYears_Callback(hObject, eventdata, handles)
% hObject    handle to UranusYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of UranusYears as text
%        str2double(get(hObject,'String')) returns contents of UranusYears as a double


% --- Executes during object creation, after setting all properties.
function UranusYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UranusYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function NeptuneYears_Callback(hObject, eventdata, handles)
% hObject    handle to NeptuneYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NeptuneYears as text
%        str2double(get(hObject,'String')) returns contents of NeptuneYears as a double


% --- Executes during object creation, after setting all properties.
function NeptuneYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NeptuneYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function PlutoYears_Callback(hObject, eventdata, handles)
% hObject    handle to PlutoYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PlutoYears as text
%        str2double(get(hObject,'String')) returns contents of PlutoYears as a double


% --- Executes during object creation, after setting all properties.
function PlutoYears_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PlutoYears (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MercuryDays_Callback(hObject, eventdata, handles)
% hObject    handle to MercuryDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MercuryDays as text
%        str2double(get(hObject,'String')) returns contents of MercuryDays as a double


% --- Executes during object creation, after setting all properties.
function MercuryDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MercuryDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VenusDays_Callback(hObject, eventdata, handles)
% hObject    handle to VenusDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VenusDays as text
%        str2double(get(hObject,'String')) returns contents of VenusDays as a double


% --- Executes during object creation, after setting all properties.
function VenusDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VenusDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EarthDays_Callback(hObject, eventdata, handles)
% hObject    handle to EarthDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EarthDays as text
%        str2double(get(hObject,'String')) returns contents of EarthDays as a double


% --- Executes during object creation, after setting all properties.
function EarthDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EarthDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MarsDays_Callback(hObject, eventdata, handles)
% hObject    handle to MarsDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MarsDays as text
%        str2double(get(hObject,'String')) returns contents of MarsDays as a double


% --- Executes during object creation, after setting all properties.
function MarsDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MarsDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function JupiterDays_Callback(hObject, eventdata, handles)
% hObject    handle to JupiterDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of JupiterDays as text
%        str2double(get(hObject,'String')) returns contents of JupiterDays as a double


% --- Executes during object creation, after setting all properties.
function JupiterDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to JupiterDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SaturnDays_Callback(hObject, eventdata, handles)
% hObject    handle to SaturnDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SaturnDays as text
%        str2double(get(hObject,'String')) returns contents of SaturnDays as a double


% --- Executes during object creation, after setting all properties.
function SaturnDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SaturnDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function UranusDays_Callback(hObject, eventdata, handles)
% hObject    handle to UranusDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of UranusDays as text
%        str2double(get(hObject,'String')) returns contents of UranusDays as a double


% --- Executes during object creation, after setting all properties.
function UranusDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UranusDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NeptuneDays_Callback(hObject, eventdata, handles)
% hObject    handle to NeptuneDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NeptuneDays as text
%        str2double(get(hObject,'String')) returns contents of NeptuneDays as a double


% --- Executes during object creation, after setting all properties.
function NeptuneDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NeptuneDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PlutoDays_Callback(hObject, eventdata, handles)
% hObject    handle to PlutoDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PlutoDays as text
%        str2double(get(hObject,'String')) returns contents of PlutoDays as a double


% --- Executes during object creation, after setting all properties.
function PlutoDays_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PlutoDays (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
