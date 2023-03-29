% this is NOT the main analysis script.
% If you wanted the main analysis script, please use showData.m

% acquire DB of measurements
MeasDB = readtable("MeasDB.csv","Delimiter",";","MissingRule","omitrow");

% clear descriptors
clear myTit caseIDs monTypes MonPaths myLabels shifts;

%% switch

switch upper(loadSettings)

    % =====================================================================
	% %%%%%%%%%%%%%%%%% MISTERY of INTEGRAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % compare measurements 2022-10-08 (amereghe's, with problem on
    % integral) vs 2023-02-26 (donetti's, without problem on integral)
    % CAMeretta ONLT, to compare data sets
    % =====================================================================
    case "XPR3,C270,HE-025A-QUE,SOLUTION"
        myTit="XPR3, C270mm, HE-025A-QUE scan (2022-10-08 vs 2023-02-26) - Role of HV";
        caseIDs=[ 
            find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                  strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                  strcmpi(MeasDB.LABEL,"Rough_Scan")       & contains(upper(MeasDB.MONITOR),"CAM") )
            find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                  strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                  strcmpi(MeasDB.LABEL,"CAM XPR, no HV")   & contains(upper(MeasDB.MONITOR),"CAM") )
            ];
        myLabels=MeasDB.LABEL(caseIDs)';
        shifts=[0 2];

    case "XPR3,C270,HE-025A-QUE,SOLUTION(ALL)"
        myTit="XPR3, C270mm, HE-025A-QUE scan (2022-10-08 vs 2023-02-26) - CAMeretta only";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      contains(upper(MeasDB.MONITOR),"CAM") );
        myLabels=MeasDB.LABEL(caseIDs)';
        shifts=[0 2 2 2 2 2 2 2 2];

    % =====================================================================
	% %%%%%%%%%%%%%%%%% MISTERY of INTEGRAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % measurements 2022-10-08 (amereghe's, with problem on integral)
    % CAMeretta vs DDS
    % =====================================================================

    % ---------------------------------------------------------------------
    % C270mm
    % ---------------------------------------------------------------------
    case "XPR3,C270,HE-025A-QUE(2022-10-08)"
        myTit="XPR3, C270mm, HE-025A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C270,HE-023A-QUE(2022-10-08)"
        myTit="XPR3, C270mm, HE-023A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-023A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C270,HE-020A-QUE(2022-10-08)"
        myTit="XPR3, C270mm, HE-020A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-020A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C270,HE-018A-QUE(2022-10-08)"
        myTit="XPR3, C270mm, HE-018A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-018A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];

    % ---------------------------------------------------------------------
    % C150mm
    % ---------------------------------------------------------------------
    case "XPR3,C150,HE-025A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-025A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_150") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C150,HE-023A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-023A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_150") & strcmpi(MeasDB.CONFIG,"SCAN_HE-023A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C150,HE-020A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-020A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_150") & strcmpi(MeasDB.CONFIG,"SCAN_HE-020A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C150,HE-018A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-018A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_150") & strcmpi(MeasDB.CONFIG,"SCAN_HE-018A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];

    % ---------------------------------------------------------------------
    % C030mm
    % ---------------------------------------------------------------------
    case "XPR3,C030,HE-025A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-025A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_030") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[0 0];
    case "XPR3,C030,HE-023A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-023A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_030") & strcmpi(MeasDB.CONFIG,"SCAN_HE-023A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C030,HE-020A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-020A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_030") & strcmpi(MeasDB.CONFIG,"SCAN_HE-020A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C030,HE-018A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-018A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_030") & strcmpi(MeasDB.CONFIG,"SCAN_HE-018A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];
    case "XPR3,C030,H2-022A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, H2-022A-QUE scan (2022-10-08)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_030") & strcmpi(MeasDB.CONFIG,"SCAN_H2-022A-QUE") & ...
                      MeasDB.DATE=="08/10/2022" );
        shifts=[1 0];

    % =====================================================================
	% %%%%%%%%%%%%%%%%% MISTERY of INTEGRAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % measurements 2023-02-26 (donetti's, without problem on integral)
    % CAMeretta vs DDS
    % =====================================================================

    % ---------------------------------------------------------------------
    % C270mm
    % ---------------------------------------------------------------------
    case "XPR3,C270,HE-025A-QUE,RUN1_CAMXPR(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run1CamXPR (2023-02-26,Donetti)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      strcmpi(MeasDB.LABEL,"CAM XPR, Run1")    );
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN2_CAMXPR(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run2CamXPR (2023-02-26,Donetti)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      strcmpi(MeasDB.LABEL,"CAM XPR, Run2")    );
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN3_CAMOLD_REV(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run3CamOldRev (2023-02-26,Donetti)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      strcmpi(MeasDB.LABEL,"CAM OP, Rotated, Run1")    );
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN4_CAMOLD_REV(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run4CamOldRev (2023-02-26,Donetti)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      strcmpi(MeasDB.LABEL,"CAM OP, Rotated, Run2")    );
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN5_CAMOLD(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run5CamOld (2023-02-26,Donetti)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      strcmpi(MeasDB.LABEL,"CAM OP, Run1")    );
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN6_CAMOLD(2023-02-26,DONETTI)"
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      strcmpi(MeasDB.LABEL,"CAM OP, Run2")    );
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN7_CAM_NOHV(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run7CamNoHV (2023-02-26,Donetti)";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR3")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STABILITY_270") & strcmpi(MeasDB.CONFIG,"SCAN_HE-025A-QUE") & ...
                      strcmpi(MeasDB.LABEL,"CAM XPR, no HV")    );
        shifts=[1 0];

    % =====================================================================
	% %%%%%%%%%%%%%%%%% BEAM STEERING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ISO2
    % =====================================================================
    
    % ---------------------------------------------------------------------
    % overview of a specific data taking
    % ---------------------------------------------------------------------
    case "ISO2,CARB,PRE(2022-10-26)"
        myTit="Pre-Steering ISO2 (2022-10-26) - Carbonio";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR2")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STEERING")      & strcmpi(MeasDB.LABEL,"pre_steering") & ...
                      MeasDB.DATE=="26/10/2022"     );
    case "ISO2,CARB,POST(2022-11-01)"
        myTit="Post-Steering ISO2 (2022-11-01) - Carbonio";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR2")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STEERING")      & strcmpi(MeasDB.LABEL,"post_steering") & ...
                      MeasDB.DATE=="01/11/2022"     );
    case "ISO2,PROT,PRE(2022-10-27)"
        myTit="Pre-Steering ISO2 (2022-10-27) - Protoni";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR2")              & strcmpi(MeasDB.PARTICLE,"PROT") & ...
                      strcmpi(MeasDB.CYCO_SET,"STEERING")      & strcmpi(MeasDB.LABEL,"pre_steering") & ...
                      MeasDB.DATE=="27/10/2022"     );
    case "ISO2,PROT,PRE(2022-11-01)"
        myTit="Post-Steering ISO2 (2022-11-01) - Protoni";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR2")              & strcmpi(MeasDB.PARTICLE,"PROT") & ...
                      strcmpi(MeasDB.CYCO_SET,"STEERING")      & strcmpi(MeasDB.LABEL,"post_steering") & ...
                      MeasDB.DATE=="01/11/2022"     );

    % ---------------------------------------------------------------------
    % specific checks
    % ---------------------------------------------------------------------
    case "ISO2,CARB,CAM"
        myTit="Steering ISO2 - Carbonio - CAMeretta";
        caseIDs=find( strcmpi(MeasDB.LINE,"XPR2")              & strcmpi(MeasDB.PARTICLE,"CARB") & ...
                      strcmpi(MeasDB.CYCO_SET,"STEERING")      & strcmpi(MeasDB.LABEL,"pre_steering") & ...
                      MeasDB.DATE=="26/10/2022"     );
        monTypes="CAM";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-04-06\machine_photo_C_ISO2\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\CarbSO2_*\") 
            ];
        myLabels=[...
            "2022-04-06 - Machine photo (RP data tacking)"
            "2022-10-26 - pre-steering"
            "2022-11-01 - post-steering"
            ];
    case "ISO2,CARB,DDS"
        myTit="Steering ISO2 - Carbonio - DDS";
        monTypes="DDS";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\PRC-544-*-DDSF\") 
            ];
        myLabels=[...
            "2022-10-26 - pre-steering"
            "2022-11-01 - post-steering"
            ];
    case "ISO2,PROT,CAM"
        myTit="Steering ISO2 - Protoni - CAMeretta";
        monTypes="CAM";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-04-06\machine_photo_P_ISO2\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.11.01\ProtSO1_*\") 
            ];
        myLabels=[...
            "2022-04-06 - Machine photo (RP data tacking)"
            "2022-10-27 - pre-steering"
            "2022-11-01 - pre-steering"
            ];
    case "ISO2,PROT,DDS"
        myTit="Steering ISO2 - Protoni - DDS";
        monTypes="DDS";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-04-06\machine_photo_P_ISO2\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.11.01\PRC-544-*-DDSF\") 
            ];
        myLabels=[...
            "2022-04-06 - Machine photo (RP data tacking)"
            "2022-10-27 - pre-steering"
            "2022-11-01 - pre-steering"
            ];
        
    % =====================================================================
	% %%%%%%%%%%%%%%%%% BEAM STEERING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ISO3
    % =====================================================================
    
    % ---------------------------------------------------------------------
    % overview of a specific data taking
    % ---------------------------------------------------------------------
    case "ISO3,CARB(2022-10-24)"
        myTit="Steering ISO3 (2022-10-24) - Carbonio";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO3,PROT(2022-10-24)"
        myTit="Steering ISO3 (2022-10-24) - Protoni";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO3,PROT(2023-02-15)"
        myTit="Steering ISO3 (2023-02-15) - Protoni";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\15-02-2023\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\15-02-2023\PRC-544-*\") 
            ];
        myLabels=["CAM" "DDS"];
        
    % ---------------------------------------------------------------------
    % specific checks
    % ---------------------------------------------------------------------
    case "ISO3,CARB,CAM"
        myTit="Steering ISO3 - Carbonio - CAMeretta";
        monTypes="CAM";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2021-10-18\machine_photo_C_ISO3\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-03-09\machine_photo_C_ISO3\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.09.13\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.09.13\post-steering\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.08\pre-steering\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.08\post-steering\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\CarbSO2_*\") 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-08 - post-steering - err: N/A"
            "2022-10-24 - check"
            ];
    case "ISO3,CARB,DDS"
        myTit="Steering ISO3 - Carbonio - DDS";
        monTypes="DDS";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2021-10-18\machine_photo_C_ISO3\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-03-09\machine_photo_C_ISO3\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.09.13\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.09.13\post-steering\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.08\pre-steering\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.08\post-steering\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\PRC-544-*-DDSF\") 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-08 - post-steering - err: N/A"
            "2022-10-24 - check"
            ];
    case "ISO3,PROT,CAM"
        myTit="Steering ISO3 - Protoni - CAMeretta";
        monTypes="CAM";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2021-10-19\Water\machine_photo_P\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-03-09\machine_photo_P_ISO3\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.09.13\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.09.13\post-steering\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.08\pre-steering\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.08\post-steering\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\15-02-2023\ProtSO1_*\") 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-08 - post-steering - err: N/A"
            "2022-10-24 - check"
            "2023-02-15 - pre-steering"
            ];
    case "ISO3,PROT,DDS"
        myTit="Steering ISO3 - Protoni - DDS";
        monTypes="DDS";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2021-10-19\Water\machine_photo_P\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-03-09\machine_photo_P_ISO3\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.09.13\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.09.13\post-steering\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.08\pre-steering\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.08\post-steering\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\15-02-2023\PRC-544-*\") 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-08 - post-steering - err: N/A"
            "2022-10-24 - check"
            "2023-02-15 - pre-steering" 
            ];
        
    % =====================================================================
	% %%%%%%%%%%%%%%%%%%%%%%%%% SFP CABLING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % =====================================================================

    % ---------------------------------------------------------------------
    % HE-010B-QPP and HE-012B-SFP, HE-007A-CEB kicking
    % ---------------------------------------------------------------------
    case "HE-007A-CEB,HOR,PROT,320MM"
        myTit="Check fibre - Protoni, 320mm";
        monTypes=[ "QPP" "QPP" "SFP" "SFP" ]; % CAM, DDS, GIM, QPP/SFH/SFM/SFP - QBM/PMM/PIB to come
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\SFP\2023-02-05_check_cablaggi_SFP\HE-007A-CEB\HE_010B_QPP\HOR\PRC-544-230205-0646\"
            "S:\Area Ricerca\XPR\data\SFP\2023-02-05_check_cablaggi_SFP\HE-007A-CEB\HE_010B_QPP\HOR\PRC-544-230205-0729\"
            "S:\Area Ricerca\XPR\data\SFP\2023-02-05_check_cablaggi_SFP\HE-007A-CEB\HE_012B_SFP\HOR\PRC-544-230205-0742\"
            "S:\Area Ricerca\XPR\data\SFP\2023-02-05_check_cablaggi_SFP\HE-007A-CEB\HE_012B_SFP\HOR\PRC-544-230205-0747\"
        ];
        myLabels=[...
            "HE-010B-QPP - prima di invertire i cavi"
            "HE-010B-QPP - dopo aver invertito i cavi"
            "HE-012B-SFP - prima di invertire i cavi"
            "HE-012B-SFP - dopo aver invertito i cavi"
        ];
       
    % ---------------------------------------------------------------------
    % HE-010B-QPP and HE-012B-SFP, HE-027A-CEB kicking
    % ---------------------------------------------------------------------
    case "HE-027A-CEB,HOR+VER,PROT,320MM"
        myTit="Check fibre - Protoni, 320mm";
        monTypes=[ "SFP" "SFP" "SFP" ]; % CAM, DDS, GIM, QPP/SFH/SFM/SFP - QBM/PMM/PIB to come
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\SFP\2023-02-05_check_cablaggi_SFP\HE-027A-CEB\HE_030B_SFP\HOR\PRC-544-230205-0756\"
            "S:\Area Ricerca\XPR\data\SFP\2023-02-05_check_cablaggi_SFP\HE-027A-CEB\HE_030B_SFP\HOR\PRC-544-230205-0800\"
            "S:\Area Ricerca\XPR\data\SFP\2023-02-05_check_cablaggi_SFP\HE-027A-CEB\HE_030B_SFP\VER\PRC-544-230205-0805\"
        ];
        myLabels=[...
            "HE-030B-SFP - prima di invertire i cavi"
            "HE-030B-SFP - dopo aver invertito i cavi"
            "HE-030B-SFP - dopo aver invertito i cavi - VER SCAN"
        ];
        
    % =====================================================================
	% %%%%%%%%%%%%%%%%%%%%%%%%%    ERROR    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % =====================================================================
    
    otherwise
        error("settings %s NOT available!",loadSettings);
end

%% generate additional arrays
monTypes=GetMonType(MeasDB.MONITOR(caseIDs));
MonPaths=GetFullPath(MeasDB.DISK(caseIDs),MeasDB.PATH(caseIDs));
if (exist("myLabels","var"))
    % append date
    myLabels=strcat(myLabels',string(MeasDB.DATE(caseIDs)," (yyyy-MM-dd)"));
else
    % labels coincides with monitor types
    myLabels=monTypes;
end    

function fullPaths=GetFullPath(disks,paths,kPath)
    if (~exist("kPath","var")), kPath="P:\Accelerating-System\Accelerator-data"; end
    fullPaths=strings(size(disks,1),1);
    kIndices=startsWith(upper(disks),"K:");
    fullPaths( kIndices)=strcat(kPath,"\",paths( kIndices));
    fullPaths(~kIndices)=strcat(disks(~kIndices),"\",paths(~kIndices));
end

function MonTypes=GetMonType(monitors)
    MonTypes=strings(size(monitors,1),1);
    % - CAMeretta
    camIndices=startsWith(upper(monitors),"CAM");
    if (any(camIndices)), MonTypes(camIndices)="CAM"; end
    % - DDS/NZL
    ddsIndices=(contains(upper(monitors),"DDS") | contains(upper(monitors),"NZL"));
    if (any(ddsIndices)), MonTypes(ddsIndices)="DDS"; end
    % - BD
    if (any(~camIndices & ~ddsIndices))
        myMon=split(upper(monitors(~camIndices & ~ddsIndices)),"-");
        MonTypes(~camIndices & ~ddsIndices)=string(myMon(:,3));
    end
end
