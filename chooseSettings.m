% this is NOT the main analysis script.
% If you wanted the main analysis script, please use analyseMe.m

%% switch

switch upper(loadSettings)

    % =====================================================================
    % ISO2
    % =====================================================================
    
    % ---------------------------------------------------------------------
    % overview of a specific data taking
    % ---------------------------------------------------------------------
    case "ISO2,CARB,PRE"
        myTit="Steering ISO2 (2022-10-26) - Carbonio";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.10.26\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO2,CARB,POST"
        myTit="Steering ISO2 (2022-11-01) - Carbonio";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR2\2022.11.01\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO2,PROT,PRE1"
        myTit="Steering ISO2 (2022-10-27) - Protoni";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR2\2022.10.27\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO2,PROT,PRE2"
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
    % ISO3
    % =====================================================================
    
    % ---------------------------------------------------------------------
    % overview of a specific data taking
    % ---------------------------------------------------------------------
    case "ISO3,CARB"
        myTit="Steering ISO3 (2022-10-24) - Carbonio";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\CarbSO2_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\carbonio\XPR3\2022.10.24\PRC-544-*-SFP\") 
            ];
        myLabels=["CAM" "DDS" "SFP"];
    case "ISO3,PROT"
        myTit="Steering ISO3 (2022-10-24) - Protoni";
        monTypes=["CAM" "DDS" "SFP"];
        MonPaths=[...
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\ProtSO1_*\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\PRC-544-*-DDSF\") 
            strcat(kPath,"\Area dati MD\00Steering\SteeringPazienti\protoni\XPR3\2022.10.24\PRC-544-*-SFP\") 
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
        
    % =====================================================================
    % error
    % =====================================================================
    
    otherwise
        error("settings %s NOT available!",loadSettings);
end
