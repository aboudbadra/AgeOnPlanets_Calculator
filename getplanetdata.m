% Get planetary data
% Includes:
% Planet structure with following fields:
% Planet name (name)
% Planet map image (map)
% Planet rotation period (RP)
% Planet orbit period (OP)
% Polar radius (R_pol)
% Equatorial radius (R_eqt)

function planet = getplanetdata()

planet = struct();

% Planets names
planet(1).name = 'Mercury';
planet(2).name = 'Venus';
planet(3).name = 'Earth';
planet(4).name = 'Mars';
planet(5).name = 'Jupiter';
planet(6).name = 'Saturn';
planet(7).name = 'Uranus';
planet(8).name = 'Neptune';
planet(9).name = 'Pluto';

% 2D Maps of planets
planet(1).map = imread('images/Mercury_map.jpg');
planet(2).map = imread('images/Venus_map.jpg');
planet(3).map = imread('images/Earth_map.jpg');
planet(4).map = imread('images/Mars_map.jpg');
planet(5).map = imread('images/Jupiter_map.jpg');
planet(6).map = imread('images/Saturn_map.jpg');
planet(7).map = imread('images/Uranus_map.jpg');
planet(8).map = imread('images/Neptune_map.jpg');
planet(9).map = imread('images/Pluto_map.jpg');


% Rotation Period
planet(1).RP = 58.646;     % days
planet(2).RP = 243.018;    % days
planet(3).RP = 0.99726968; % days
planet(4).RP = 1.026;      % days
planet(5).RP = 0.41354;    % days
planet(6).RP = 0.444;      % days
planet(7).RP = 0.718;      % days
planet(8).RP = 0.671;      % days
planet(9).RP = 6.387;      % days

% Orbit Period
planet(1).OP = 87.970;     % days
planet(2).OP = 224.70;     % days
planet(3).OP = 365.26;     % days
planet(4).OP = 1.8808476;  % years
planet(5).OP = 11.862615;  % years
planet(6).OP = 29.447498;  % years
planet(7).OP = 84.016846;  % years
planet(8).OP = 164.79132;  % years
planet(9).OP = 247.92065;  % years

% equitorial and polar radii
planet(1).R_eqt = 2439.7; % km
planet(1).R_pol = 2439.7; % km
planet(2).R_eqt = 6051.8; % km
planet(2).R_pol = 6051.8; % km
planet(3).R_eqt = 6378.1; % km
planet(3).R_pol = 6356.8; % km
planet(4).R_eqt = 3396.2; % km
planet(4).R_pol = 3396.2; % km
planet(5).R_eqt = 71492.0; % km
planet(5).R_pol = 66854.0; % km
planet(6).R_eqt = 60268; % km
planet(6).R_pol = 54364; % km
planet(7).R_eqt = 25559; % km
planet(7).R_pol = 24973; % km
planet(8).R_eqt = 24764; % km
planet(8).R_pol = 24341; % km

end
