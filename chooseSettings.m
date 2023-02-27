% this is NOT the main analysis script.
% If you wanted the main analysis script, please use showData.m

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
        monTypes=["CAM" "CAM"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-025A-QUE\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run7CamNoHV\CarbSO2_*\"
            ];
        myLabels=[
            "ref (2022-10-08)"
            "CAM XPR (2023-02-26) - NO HV"
            ];
        shifts=[0 2];

    case "XPR3,C270,HE-025A-QUE,SOLUTION(ALL)"
        myTit="XPR3, C270mm, HE-025A-QUE scan (2022-10-08 vs 2023-02-26) - CAMeretta only";
        monTypes=["CAM" "CAM" "CAM" "CAM" "CAM" "CAM" "CAM" "CAM"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-025A-QUE\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run1CamXPR\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run2CamXPR\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run3CamOldRev\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run4CamOldRev\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run5CamOld\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run6CamOld\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run7CamNoHV\CarbSO2_*\"
            ];
        myLabels=[
            "ref (2022-10-08)"
            "CAM XPR (2023-02-26) - 1"
            "CAM XPR (2023-02-26) - 2"
            "CAM OP rotated (2023-02-26) - 1"
            "CAM OP rotated (2023-02-26) - 2"
            "CAM OP (2023-02-26) - 1"
            "CAM OP (2023-02-26) - 2"
            "CAM XPR (2023-02-26) - NO HV"
            ];
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
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-025A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-025A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-023A-QUE(2022-10-08)"
        myTit="XPR3, C270mm, HE-023A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-023A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-023A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-020A-QUE(2022-10-08)"
        myTit="XPR3, C270mm, HE-020A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-020A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-020A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-018A-QUE(2022-10-08)"
        myTit="XPR3, C270mm, HE-018A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-018A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_270mm\HE-018A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];

    % ---------------------------------------------------------------------
    % C150mm
    % ---------------------------------------------------------------------
    case "XPR3,C150,HE-025A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-025A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-025A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-025A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C150,HE-023A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-023A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-023A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-023A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C150,HE-020A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-020A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-020A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-020A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C150,HE-018A-QUE(2022-10-08)"
        myTit="XPR3, C150mm, HE-018A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-018A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_150mm\HE-018A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];

    % ---------------------------------------------------------------------
    % C030mm
    % ---------------------------------------------------------------------
    case "XPR3,C030,HE-025A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-025A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-025A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-025A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[0 0];
    case "XPR3,C030,HE-023A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-023A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-023A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-023A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C030,HE-020A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-020A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-020A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-020A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C030,HE-018A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, HE-018A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-018A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\HE-018A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C030,H2-022A-QUE(2022-10-08)"
        myTit="XPR3, C030mm, H2-022A-QUE scan (2022-10-08)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\H2-022A-QUE\CarbSO2_*\"
            "P:\Accelerating-System\Accelerator-data\Area dati MD\00XPR\XPR3\carbonio\Fuochi\Rough_scan\C_030mm\H2-022A-QUE\PRC-544-*\"
            ];
        myLabels=monTypes;
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
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run1CamXPR\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run1CamXPR\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN2_CAMXPR(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run2CamXPR (2023-02-26,Donetti)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run2CamXPR\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run2CamXPR\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN3_CAMOLD_REV(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run3CamOldRev (2023-02-26,Donetti)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run3CamOldRev\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run3CamOldRev\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN4_CAMOLD_REV(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run4CamOldRev (2023-02-26,Donetti)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run4CamOldRev\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run4CamOldRev\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN5_CAMOLD(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run5CamOld (2023-02-26,Donetti)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run5CamOld\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run5CamOld\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN6_CAMOLD(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run6CamOld (2023-02-26,Donetti)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run6CamOld\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run6CamOld\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];
    case "XPR3,C270,HE-025A-QUE,RUN7_CAM_NOHV(2023-02-26,DONETTI)"
        myTit="XPR3, C270mm, HE-025A-QUE scan, Run7CamNoHV (2023-02-26,Donetti)";
        monTypes=["CAM" "DDS"];
        MonPaths=[...
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run7CamNoHV\CarbSO2_*\"
            "S:\Area Ricerca\XPR\data\CAMeretta\2023-02-26_ProblemaIntegrale\Carbonio\HE-025A-QUE\270mm\Run7CamNoHV\PRC-544-*\"
            ];
        myLabels=monTypes;
        shifts=[1 0];

    % =====================================================================
	% %%%%%%%%%%%%%%%%% BEAM STEERING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % ISO2
    % =====================================================================
    
    % ---------------------------------------------------------------------
    % overview of a specific data taking
    % ---------------------------------------------------------------------
    case "ISO2,CARB,PRE(2022-10-26)"
        myTit="Steering ISO2 (2022-10-26) - Carbonio";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO2,CARB,POST(2022-11-01)"
        myTit="Steering ISO2 (2022-11-01) - Carbonio";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO2,PROT,PRE(2022-10-27)"
        myTit="Steering ISO2 (2022-10-27) - Protoni";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO2,PROT,PRE(2022-11-01)"
        myTit="Steering ISO2 (2022-11-01) - Protoni";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.11.01\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.11.01\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.11.01\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];

    % ---------------------------------------------------------------------
    % specific checks
    % ---------------------------------------------------------------------
    case "ISO2,CARB,CAM"
        myTit="Steering ISO2 - Carbonio - CAMeretta";
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
    % error
    % =====================================================================
    
    otherwise
        error("settings %s NOT available!",loadSettings);
end
