%% Techs profiles
% In this file the profiles for both connectivity and sw are formed
%
% the connectivity features:
% maximum bitrate
% battery powering possibilities
% Max. distance from device to HUB/coordinator km
% Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
% approx cost of connection one device
% approx rent for using one device

% upper level features:
% source code: 1- open source, closed source 
% cloud or enterprise: 0 - cloud 1 - enterpise
% alarm delivery time to user (max.)
% cost of connection of one device
% cost of upper level functions

%% Matrix for connectivity
fprintf('Following transport techs are under consideration: \n')
fprintf('Ethernet 1G (operator), RC/Eth HUBs (private), LoRaWAN (private), PLCs (private), NB-IoT (operator), \n, 2G Cells(operator) , 3G Cells (operator), SMS (operator) \n')

techs_profiles=zeros(6,8);

% column - each for parameters

% Operators Ethernet parameters:
techs_profiles(1,1)=1000; % maximum bitrate
techs_profiles(2,1)=0; %battery powering possibilities
techs_profiles(3,1)=0.1; % Max. distance from device to HUB/coordinator
techs_profiles(4,1)=0; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(5,1)=10; % approx cost of connection one device
techs_profiles(6,1)=0.001; % approx rent for using one device


% private RC/Eth HUBs parameters:
techs_profiles(1,2)=1; % maximum bitrate
techs_profiles(2,2)=0; %battery powering possibilities
techs_profiles(3,2)=2; % Max. distance from device to HUB/coordinator
techs_profiles(4,2)=0; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(5,2)=50; % approx cost of connection one device
techs_profiles(6,2)=0; % approx rent for using one device

% private LoraWAN parameters:
techs_profiles(1,3)=0.001; % maximum bitrate
techs_profiles(2,3)=1; %battery powering possibilities
techs_profiles(4,3)=10; % Max. distance from device to HUB/coordinator
techs_profiles(5,3)=1; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(6,3)=1; % approx cost of connection one device
techs_profiles(7,3)=0; % approx rent for using one device

% PLCs parameters:
techs_profiles(1,4)=0.1; % maximum bitrate
techs_profiles(2,4)=0; %battery powering possibilities
techs_profiles(3,4)=0.1; % Max. distance from device to HUB/coordinator
techs_profiles(4,4)=2; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(5,4)=1; % approx cost of connection one device
techs_profiles(6,4)=0; % approx rent for using one device

% NB-IoT HUBs parameters:
techs_profiles(1,5)=0.1; % maximum bitrate
techs_profiles(2,5)=1; %battery powering possibilities
techs_profiles(3,5)=1; % Max. distance from device to HUB/coordinator
techs_profiles(4,5)=1; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(5,5)=0.1; % approx cost of connection one device
techs_profiles(6,5)=0.1; % approx rent for using one device

% 2G Cells HUBs parameters:
techs_profiles(1,6)=0.01; % maximum bitrate
techs_profiles(2,6)=0; %battery powering possibilities
techs_profiles(3,6)=1; % Max. distance from device to HUB/coordinator
techs_profiles(4,6)=1; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(5,6)=0.1; % approx cost of connection one device
techs_profiles(6,6)=0.1; % approx rent for using one device

% 3G Cells parameters:
techs_profiles(1,7)=0.1; % maximum bitrate
techs_profiles(2,7)=0; %battery powering possibilities
techs_profiles(3,7)=1; % Max. distance from device to HUB/coordinator
techs_profiles(4,7)=1; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(5,7)=0.2; % approx cost of connection one device
techs_profiles(6,7)=0.2; % approx rent for using one device

% SMS parameters:
techs_profiles(1,8)=0.0001; % maximum bitrate
techs_profiles(2,8)=0; %battery powering possibilities
techs_profiles(3,8)=1; % Max. distance from device to HUB/coordinator
techs_profiles(4,8)=1; % Phisical layer: 0- wired, 1 - radio, 2 - main, 4- fiber
techs_profiles(5,8)=0.001; % approx cost of connection one device
techs_profiles(6,8)=0.001; % approx rent for using one device


%% matrix for upper level sysytems
fprintf('Following sw are under consideration: \n')
fprintf('AWS, , ThingsBoard, NoUpperSystem \n')

sw_profiles=zeros(5,3);

% No Upper Level parameters:
sw_profiles(1,1)=1; % source code: 1- open source, closed source 
sw_profiles(2,1)=0; % cloud or enterprise: 0 - cloud 1 - enterpise
sw_profiles(3,1)=1000000; % alarm delivery time to user (max.)
sw_profiles(4,1)=0; % cost of connection of one device
sw_profiles(5,1)=0; %  cost of upper level functions

% AWS parameters:
sw_profiles(1,2)=0; % source code: 1- open source, closed source 
sw_profiles(2,2)=0; % cloud or enterprise: 0 - cloud 1 - enterpise
sw_profiles(3,2)=1; % alarm delivery time to user (max.)
sw_profiles(4,2)=0.01; % cost of connection of one device
sw_profiles(5,2)=0.1; %  cost of upper level functions

% ThingsBoard parameters:
sw_profiles(1,3)=1; % source code: 1- open source, closed source 
sw_profiles(2,3)=1; % cloud or enterprise: 0 - cloud 1 - enterpise
sw_profiles(3,3)=1; % alarm delivery time to user (max.)
sw_profiles(4,3)=10; % cost of connection of one device
sw_profiles(5,3)=0; %  cost of upper level functions


%End

