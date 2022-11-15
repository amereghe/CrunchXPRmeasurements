% {}~

%% include libraries (necessary only the first time the script is run)
% - include Matlab libraries
pathToLibrary="externals\MatLabTools";
addpath(genpath(pathToLibrary));
% - include Matlab libraries
pathToLibrary="externals\ExternalMatLabTools";
addpath(genpath(pathToLibrary));
% % - include local library with functions
% pathToLibrary="lib";
% addpath(genpath(pathToLibrary));

%% user setting
clear loadSettings lSkip kPath;
% please check chooseSettings.m
loadSettings="ISO2,PROT,PRE2";
lSkip=false; % DDS summary file: skip first 2 lines (in addition to header line)
kPath="P:\Accelerating-System\Accelerator-data";

%% actually do the job
run("chooseSettings.m");
run("externals\MatLabTools\DisplayBeamProfiles.m");
