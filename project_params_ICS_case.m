%% Here is a parameters of the project

params=zeros(13,1);

%connectivity requirments
params(1,1)=100; % Number of devices
params(2,1)=0.5*100*86000; % Number of massages per day
params(3,1)=100; % mean device massage size (bites)
params(4,1)=0.1; % maximum bitrate, mbit/s
params(5,1)=0; % battery powering
params(6,1)=0; % connected to ppovider network (ethernet)
params(7,1)=0; % Can use IoT provider network: 0 - no, 1- Nb-Iot, 2- LoRaWAN
params(8,1)=0.1; % Max. distance from device to HUB/coordinator, km
params(9,1)=1; % Type of business (TB) company’s strategy for IoT business

% upper level requirments
params(10,1)=20; % number of users
params(11,1)=1.1; % Scaling coefficient (SC) (realistic plan in 2 yrs.) 1 - no future expansion 100 -  max. expansion
params(12,1)=1; % Sources code are necessary 
params(13,1)=1; % alarm delivery time to user (max.)

fprintf('ICS RAS case parameters loaded \n')