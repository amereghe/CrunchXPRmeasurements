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
    % CAMeretta ONLY, to compare data sets
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
            "2022-04-06 - Machine photo (RP data taking)"
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
    case "ISO3,CARB,PRE(2023-03-09)"
        myTit="PRE-Steering ISO3 (2023-03-09) - Carbonio";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Pre-Steering\CarbSO2_LineX3_Size6_09-03-2023_0355\"
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Pre-Steering\PRC-544-230309-0354-DDSF\"
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Pre-Steering\PRC-544-230309-0344-HE-030B-SFP\"
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO3,CARB,POST(2023-03-11)"
        myTit="POST-Steering ISO3 (2023-03-11) - Carbonio";
        monTypes=["CAM"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Post-Steering\CarbSO2_LineX3_Size6_11-03-2023_0809\"
            ];
        myLabels=["CAM"];
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
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2023.02.15\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2023.02.15\PRC-544-*\") 
            ];
        myLabels=["CAM" "DDS"];
    case "ISO3,PROT(2023-03-10)"
        myTit="Steering ISO3 (2023-03-10) - Protoni";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Protoni-10Mar2023\ProtSO1_*\"
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Protoni-10Mar2023\PRC-544-230310-0354\"
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Protoni-10Mar2023\PRC-544-230310-0343\" 
            ];
        myLabels=["CAM" "DDS" "SFP"];
        
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
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Pre-Steering\CarbSO2_LineX3_Size6_09-03-2023_0355\"
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Post-Steering\CarbSO2_LineX3_Size6_11-03-2023_0809\"
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\CarbSO2_LineX3_Size6_14-03-2023_0319\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\CarbSO2_LineX3_Size6_23-03-2023_0207\") 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-08 - post-steering - err: N/A"
            "2022-10-24 - check"
            "2023-03-09 - pre-steering"
            "2023-03-11 - post-steering"
            "2023-03-14 - pre-steering GLOB"
            "2023-03-22 - post-steering GLOB"
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
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Pre-Steering\PRC-544-230309-0354-DDSF\"
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\PRC-544-230314-0318-X0-013C-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\PRC-544-230323-0206 X0-013-DDSF\") 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-08 - post-steering - err: N/A"
            "2022-10-24 - check"
            "2023-03-09 - pre-steering"
            "2023-03-14 - pre-steering GLOB"
            "2023-03-22 - post-steering GLOB"
            ];
    case "ISO3,CARB,SFP"
        myTit="Steering ISO3 - Carbonio - SFP";
        monTypes="SFP";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2021-10-18\machine_photo_C_ISO3\PRC-544-*-SFP\") 
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-03-09\machine_photo_C_ISO3\PRC-544-*-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.09.13\PRC-544-*-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.09.13\post-steering\PRC-544-*-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.08\pre-steering\PRC-544-*-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\PRC-544-*-SFP\") 
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Carbonio-9Mar2023\Pre-Steering\PRC-544-230309-0344-HE-030B-SFP\"
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\PRC-544-230314-0308-HE-030B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\PRC-544-230323-0216-HE-030B-SFP\") 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-24 - check"
            "2023-03-09 - pre-steering"
            "2023-03-14 - pre-steering GLOB"
            "2023-03-22 - post-steering GLOB"
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
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2023.02.15\ProtSO1_*\") 
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Protoni-10Mar2023\ProtSO1_*\"
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
            "2023-03-10 - pre-steering"
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
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2023.02.15\PRC-544-*\") 
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Protoni-10Mar2023\PRC-544-230310-0354\"
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
            "2023-03-10 - pre-steering"
            ];
    case "ISO3,PROT,SFP"
        myTit="Steering ISO3 - Protoni - SFP";
        monTypes="SFP";
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2021-10-19\Water\machine_photo_P\PRC-544-211019-2238-HE-030B-SFP\") 
            strcat(kPath,"\Area dati MD\00XPR\Recommissioning_with_beam_for_RP\2022-03-09\machine_photo_P_ISO3\PRC-544-220310-0230-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.09.13\PRC-544-220913-0257-HE-030B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.09.13\post-steering\PRC-544-220915-0122-HE-030B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.08\pre-steering\PRC-544-221008-1044-HE-030B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\PRC-544-*-SFP\") 
            "P:\Accelerating-System\Accelerator-data\scambio\MGP\steering XPR-3-Protoni-10Mar2023\PRC-544-230310-0343\" 
            ];
        myLabels=[...
            "2021-10-18 - Machine photo (RP data tacking) - err: ISO4 cyCodes!"
            "2022-03-09 - Machine photo (RP data tacking)"
            "2022-09-13 - pre-steering" 
            "2022-09-13 - post-steering"
            "2022-10-08 - pre-steering - err: N/A"
            "2022-10-24 - check"
            "2023-03-10 - pre-steering"
            ];
        
    % =====================================================================
	% %%%%%%%%%%%%%%%%% GLOBAL BEAM STEERING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ISO3
    % =====================================================================
    
    % ---------------------------------------------------------------------
    % overview of a specific data taking
    % ---------------------------------------------------------------------
    case "ISO3,CARB,GLOB,PRE(2023-03-14)"
        myTit="Global Pre-Steering ISO3 (2023-03-14) - Carbonio";
        monTypes=["GIM" "SFM" "SFP" "SFP" "SFP" "DDS" "CAM"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\PRC-544-230314-0219_H2-009B-GIM_AllTrig\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\PRC-544-230314-0229-H2-025B-SFM\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\2023.03.15\PRC-544-230315-0056-HE-010B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\PRC-544-230314-0258-HE-012B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\PRC-544-230314-0308-HE-030B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\PRC-544-230314-0318-X0-013C-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.14\CarbSO2_LineX3_Size6_14-03-2023_0319\") 
            ];
        myLabels=["H2-009B-GIM" "H2-025B-SFM" "HE-010B-SFP" "HE-012B-SFP" "HE-030B-SFP" "DDS" "CAM"];
        
    case "ISO3,CARB,GLOB,POST(2023-03-22)"
        myTit="Global Post-Steering ISO3 (2023-03-22) - Carbonio";
        monTypes=["SFM" "SFP" "SFP" "SFP" "DDS" "CAM"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\PRC-544-230323-0248-H2-025B-SFM\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\PRC-544-230323-0237-HE-010B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\PRC-544-230323-0226-HE-012B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\PRC-544-230323-0216-HE-030B-SFP\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\PRC-544-230323-0206 X0-013-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2023.03.22\CarbSO2_LineX3_Size6_23-03-2023_0207\") 
            ];
        myLabels=["H2-025B-SFM" "HE-010B-SFP" "HE-012B-SFP" "HE-030B-SFP" "DDS" "CAM"];
        
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
