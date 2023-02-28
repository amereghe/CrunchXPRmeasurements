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

% -------------------------------------------------------------------------
% CheckSFPcablaggi
% -------------------------------------------------------------------------

mySettings="HE-007A-CEB,HOR,PROT,320mm";
% mySettings="HE-027A-CEB,HOR+VER,PROT,320mm";

% -------------------------------------------------------------------------
% ProlemaIntegraleCameretta
% -------------------------------------------------------------------------
% % - amereghe's measurements
% mySettings="XPR3,C030,HE-025A-QUE(2022-10-08)";
% % myMagnets=["HE-025A-QUE" "HE-023A-QUE" "HE-020A-QUE" "HE-018A-QUE" ];
% % myBeamConfigs=["C270" "C150" "C030"];
% % mySettings=strings(length(myMagnets)*length(myBeamConfigs)+1,1);
% % kk=0;
% % for jj=1:length(myBeamConfigs)
% %     for ii=1:length(myMagnets)
% %         kk=kk+1;
% %         mySettings(kk)=sprintf("XPR3,%s,%s(2022-10-08)",myBeamConfigs(jj),myMagnets(ii));
% %     end
% % end
% % mySettings(end)="XPR3,C030,H2-022A-QUE(2022-10-08)";
% 
% % - donettis's measurements
% mySettings="XPR3,C270,HE-025A-QUE,RUN2_CAMXPR(2023-02-26,DONETTI)";
% % mySettings=[
% %     "XPR3,C270,HE-025A-QUE,RUN3_CAMOLD_REV(2023-02-26,DONETTI)"
% %     "XPR3,C270,HE-025A-QUE,RUN4_CAMOLD_REV(2023-02-26,DONETTI)"
% %     "XPR3,C270,HE-025A-QUE,RUN5_CAMOLD(2023-02-26,DONETTI)"
% %     "XPR3,C270,HE-025A-QUE,RUN6_CAMOLD(2023-02-26,DONETTI)"
% %     "XPR3,C270,HE-025A-QUE,RUN7_CAM_NOHV(2023-02-26,DONETTI)"
% %     "XPR3,C270,HE-025A-QUE,RUN1_CAMXPR(2023-02-26,DONETTI)"
% %     "XPR3,C270,HE-025A-QUE,RUN2_CAMXPR(2023-02-26,DONETTI)"
% %     ];
% 
% % - comparisons
% mySettings="XPR3,C270,HE-025A-QUE,SOLUTION(ALL)";

% -------------------------------------------------------------------------
% General settings
% -------------------------------------------------------------------------
lSkip=false; % DDS summary file: skip first 2 lines (in addition to header line)
myFigPath=strcat(pwd,"\figs");

%% actually do the job
for iLoad=1:length(mySettings)
    loadSettings=mySettings(iLoad);
    myFigName=strrep(strrep(strrep(loadSettings,",","_"),"(","_"),")","");
    run("chooseSettings.m");
    run("externals\MatLabTools\DisplayBeamProfiles.m");
end
