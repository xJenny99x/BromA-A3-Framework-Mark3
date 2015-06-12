
// INFO ========================================================================
/*

    US Army 2014.
    
*/

_defaultSide = WEST;
_defaultVoice = [_voiceAMERICAN];
_defaultFace = [_faceWHITE, _faceBLACK, _faceASIAN];
_defaultName = [_nameAMERICAN];
_defaultInsignia = "USP_PATCH_USA_TAB_RANGER_1BN_UCP";

// CAMO ========================================================================
/*
	"ucp"
	"ocp" 
*/

_camo = "ucp";

// WEAPONS =====================================================================

_commonRIFLE = _RHSM4;
_commonRIFLEGL = _RHSM4GL203;
_commonPISTOL = _M9;
_commonMG = _M249PIP;
_commonMARKSMAN = _M14SOPMOD;
_commonSNIPER = _M200;
_commonAT = _AT4CSHEAT;
_specAT = _MAAWS;
_commonSMG = _RHSM4;
_commonRCO = "rhsusf_acc_ACOG3";
_commonCCO = "rhsusf_acc_eotech_552";
_commonMAGNIFIED = "optic_LRPS";
_commonSUPPRESSOR = "rhsusf_acc_rotex5_grey";
_commonPISTOLSUPPRESSOR = "RH_m9qd";
_NVG = "rhsusf_ANPVS_15";

// AMMO COUNT ==================================================================

_countRIFLE = 9;
_countRIFLELOW = 6;
_countPISTOL = 2;
_countMG = 5;
_countSNIPER = 5;
_countAT = 3;
_countGRENADES = 3;
_count40mm = 15;

_countRifleCARGO = 30;
_countPistolCARGO = 10;
_countMgCARGO = 20;
_countSniperCARGO = 30;
_countATCARGO = 15;
_countGrenadesCARGO = 20;
_count40mmCARGO = 40;

// MEDICAL SUPPLIES ============================================================

switch (true) do {
    
    case (mission_AGM_enabled): {

        _countBANDAGE = 20;
        _countMORPHINE = 15;
        _countEPI = 10;
        _countBLOODBAG = 5;

        _countBandageCARGO = 40;
        _countMorphineCARGO = 30;
        _countEpiCARGO = 20;
        _countBloodbagCARGO = 10;    
            
        _suppliesMEDIC = [[_unit,[_bandage,_countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_bloodbag,_countBLOODBAG]]];
        _suppliesNORMAL = [[_unit,[_bandage, 5], [_morphine,2],[_epi, 2]]];
    };
    
    case (mission_ACE3_enabled): {
        
        _countBANDAGE = 25;
        _countMORPHINE = 20;
        _countEPI = 10;
        _countCAT = 20;
        _countBLOODBAG = 3;

        _countBandageCARGO = 40;
        _countMorphineCARGO = 30;
        _countEpiCARGO = 20;
        _countBloodbagCARGO = 10;
        
        switch (param_ace3_medical_level) do {
            
            case 0: { // SIMPLE
                _suppliesMEDIC = [[_unit,[_fieldDressing,_countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_bloodbag,_countBLOODBAG]]];
                _suppliesNORMAL = [[_unit,[_fieldDressing, 2], [_morphine,1],[_epi, 1]]];
            };
            case 1: { // ADVANCED
                _suppliesMEDIC = [[_unit,[_packingBandage,_countBANDAGE], [_morphine,_countMORPHINE],[_epi,_countEPI],[_saline250,_countBLOODBAG]]];
                _suppliesNORMAL = [[_unit,[_fieldDressing, 2],[_packingBandage, 1],[_tourniquet, 1],[_morphine,1],[_epi,1]]];
            };
        };
    };
    
    default {
        _suppliesMEDIC = [[_unit,["FirstAidKit",20],["Medikit",1]]];
        _suppliesNORMAL = [[_unit,["FirstAidKit",3]]];
    };    
};

// UNIFORMS ====================================================================

_headsLIST = [
    "rhsusf_ach_helmet_"+_camo,
    "rhsusf_ach_helmet_ESS_"+_camo,
    "rhsusf_ach_helmet_headset_"+_camo
];

_vestsLIST = [
    "rhsusf_iotv_"+_camo+"_SAW",
    "rhsusf_iotv_"+_camo+"_Rifleman"
];

_goggleLIST = [
    "TRYK_Shemagh_shade",
    "TRYK_Shemagh",
    "empty"
];

_randomHEAD = _headsLIST call BIS_fnc_selectRandom;
_randomVEST = _vestsLIST call BIS_fnc_selectRandom;
_randomGOGGLE = _goggleLIST call BIS_fnc_selectRandom;

_commonHEAD = _randomHEAD;
_leaderHEAD = "rhsusf_ach_helmet_headset_ess_"+_camo;
_officerHEAD = "rhsusf_patrolcap_"+_camo;
_medicHEAD = _commonHEAD;
_crewmanHEAD = "rhsusf_cvc_green_ess";
_pilotHEAD = "rhsusf_hgu56p";
_helicrewHEAD = "rhsusf_hgu56p";
_helipilotHEAD = "rhsusf_hgu56p";
_sniperHEAD = _commonHEAD;
_demoHEAD = _commonHEAD;
_reconHEAD = "rhs_Booniehat_"+_camo;

_commonUNIFORM = "rhs_uniform_cu_"+_camo;
_officerUNIFORM = _commonUNIFORM;
_pilotUNIFORM = "TRYK_OVERALL_SAGE";
_sniperUNIFORM = "U_B_GhillieSuit";
_marksmanUNIFORM = _commonUNIFORM;
_helicrewUNIFORM = "TRYK_OVERALL_SAGE";
_crewUNIFORM = _commonUNIFORM;
_mgUNIFORM = _commonUNIFORM;
_medicUNIFORM = _commonUNIFORM;
_demoUNIFORM = _commonUNIFORM;
_reconUNIFORM = _commonUNIFORM;

_commonVEST = "rhsusf_iotv_"+_camo+"_Rifleman";
_officerVEST = "rhsusf_iotv_"+_camo+"_Squadleader";
_ftlVEST = "rhsusf_iotv_"+_camo+"_Squadleader";
_slVEST = "rhsusf_iotv_"+_camo+"_Squadleader";
_mgVEST = _commonVEST;
_grenadierVEST = "rhsusf_iotv_"+_camo+"_Grenadier";
_medicVEST = "rhsusf_iotv_"+_camo+"_Medic";
_demoVEST = _commonVEST;
_marksmanVEST = _commonVEST;
_reconVEST = _commonVEST;

_commonBACKPACK = "rhsusf_assault_eagleaiii_"+_camo;
_bigBACKPACK = "rhsusf_assault_eagleaiii_"+_camo;

_unit addGoggles _randomGOGGLE;

_HMG = "RHS_M2_Gun_Bag";
_tripod = "RHS_M2_Tripod_Bag";

// =============================================================================
if (!_isMan) exitWith {};
switch (true) do {
// =============================================================================    
    
    case (_isOfficer): {   
        [_officerHEAD, _officerUNIFORM, _officerVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        ["ItemGPS"] call _linkItem;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
        ["LR"] call _addRadio;
        ["BP"] call _addRadio;
    };
    
    case (_isSquadLeader): {
        [_leaderHEAD, _commonUNIFORM, _slVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        ["ItemGPS"] call _linkItem;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonRCO] call _attachToWeapon;
        ["rangefinder"] call _addOptics;
        ["LR"] call _addRadio;
        ["BP"] call _addRadio;
    };
    
    case (_isTeamLeader): {
        [_leaderHEAD, _commonUNIFORM, _ftlVEST, _commonBackpack] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonRIFLEGL, _countRIFLE] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
		    ["primary", _commonCCO] call _attachToWeapon;
		    [[_unit,[(_commonRIFLEGL select 1),5],[(_commonRIFLEGL select 2),_count40mm],[_wsmoke,2],[_rsmoke,2],[_grenade,2]]] call _addtoBackpack;
        ["binoc"] call _addOptics;
        ["LR"] call _addRadio;
    };
    
    case (_isReconLeader): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_rchemlight,2],[_bchemlight,2],[_wflare,2],[_mapTools,1]]] call _addtoVest;
        ["ItemGPS"] call _linkItem;
        ["laserdesignator"] call _addOptics;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
        ["secondary", _commonPISTOLSUPPRESSOR] call _attachToWeapon;
        ["primary", _commonRCO] call _attachToWeapon;
        ["LR"] call _addRadio;
        ["BP"] call _addRadio;        
    };    
    
    case (_isRTO): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2], [_grenade,_countGRENADES],[_mapTools,1]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
        ["BP"] call _addRadio;
    };    
    
    case (_isRifleman): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _commonBackpack] call _useUniform;
        [[_unit,[_wsmoke,2],[_grenade,_countGRENADES]]] call _addtoVest;
		[[_unit,[(_commonRIFLE select 1),5],[_wsmoke,2],[_grenade,2]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };
    
    case (_isDemo): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _bigBACKPACK] call _useUniform;
        [[_unit, [_clacker,1],[_mineDetector,1],[_defusalKit,1]]] call _addtoUniform;
        [[_unit,[_apMINE,2],[_apBoundingMINE,2]]] call _addtoVest;
        [[_unit,[_C4,3],[_satchelCharge,1],[_deadManSwitch,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
    };    
    
    case (_isRiflemanAT): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _bigBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2], [_rsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        [_commonAT] call _addWeapon;
        [[_unit,[(_commonRIFLEGL select 1),5],[_wsmoke,2],[_grenade,2]]] call _addtoBackpack;
    };
    
    case (_isMarksman): {
        [_commonHEAD, _marksmanUNIFORM, _marksmanVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2], [_rsmoke,2]]] call _addtoVest;
        [_commonMARKSMAN, _countRIFLE] call _addWeaponKit;
        ["primary", _commonRCO] call _attachToWeapon;
    };
    
    case (_isAutorifleman): {
        [_commonHEAD, _mgUNIFORM, _mgVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_spareBarrel,1]]] call _addtoVest;
        [_commonMG, _countMG] call _addWeaponKit;
    };
    
    case (_isGrenadier): {
        [_commonHEAD, _commonUNIFORM, _grenadierVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [[_unit,[_commonRIFLEGL select 2, _count40mm]]] call _addtoBackpack;
        [_commonRIFLEGL, _countRIFLE] call _addWeaponKit;
    };
    
    case (_isLifeSaver): {
        [_medicHEAD, _medicUNIFORM, _medicVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2], [_gsmoke,3]]] call _addtoVest;
        _suppliesMEDIC call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        _defaultInsignia = "MedB";
    };
    
    case (_isMMG): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _HMG] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };
    
    case (_isMMGTripod): {
        [_commonHEAD, _commonUNIFORM, _commonVEST, _tripod] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
    };
    
    case (_isRecon): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, _commonBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_rchemlight,2],[_bchemlight,2],[_wflare,2],[_mapTools,1]]] call _addtoVest;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
		[[_unit,[(_commonRIFLE select 1),5],[_wsmoke,2],[_grenade,2]]] call _addtoBackpack;		
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
		["primary", _commonRCO] call _attachToWeapon;

    };
    
    case (_isReconMedic): {
        [_medicHEAD, _reconUNIFORM, _reconVEST, _commonBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_mapTools,1]]] call _addtoVest;        
        _suppliesMEDIC call _addtoBackpack;
        [_commonRIFLE, _countRIFLE] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;
        _defaultInsignia = "MedB";
    };    
    
    case (_isReconDemo): {
        [_reconHEAD, _reconUNIFORM, _reconVEST, _bigBACKPACK] call _useUniform;
        ["binoc"] call _addOptics;
        [[_unit, [_clacker,1],[_mineDetector,1],[_defusalKit,1]]] call _addtoUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_mapTools,1]]] call _addtoVest;
        [[_unit,[_C4,3],[_satchelCharge,1],[_deadManSwitch,1]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        ["primary", _commonSUPPRESSOR] call _attachToWeapon;     
    };        
    
    case (_isPilot): {
        [_pilotHEAD, _pilotUNIFORM, "empty", _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_mapTools,1]]] call _addtoVest;
        [_commonPISTOL, _countPISTOL] call _addWeaponKit;
    };
    
    case (_isHelicopterCrew): {
        [_helicrewHEAD, _helicrewUNIFORM, "empty", _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
    };
    
    case (_isHelicopterPilot): {
        [_helipilotHEAD, _helicrewUNIFORM, "empty", _parachute] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
    };     
    
    case (_isCrewman): {
        [_crewmanHEAD, _crewUNIFORM, "empty", "empty"] call _useUniform;
        [[_unit,[_wsmoke,2]]] call _addtoVest;
        [_commonSMG, _countRIFLELOW] call _addWeaponKit;
        if (_isLeader) then { ["BP"] call _addRadio };
    };
    
    case (_isSniper): {
        [_sniperHEAD, _sniperUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_mapTools,1],[_kestrel,1]]] call _addtoVest;
        [_commonSNIPER, _countSNIPER] call _addWeaponKit;
        ["primary", _commonMAGNIFIED] call _attachToWeapon;
        if (_isLeader) then { ["BP"] call _addRadio };
    };
    
    case (_isSpotter): {
        [_sniperHEAD, _sniperUNIFORM, _commonVEST, _commonBACKPACK] call _useUniform;
        [[_unit,[_wsmoke,2],[_rsmoke,2],[_gsmoke,2],[_mapTools,1],[_kestrel,1]]] call _addtoVest;
        [[_unit,[_commonSNIPER select 1, (_countSNIPER*2)]]] call _addtoBackpack;
        [_commonRIFLE, _countRIFLELOW] call _addWeaponKit;
        ["laserdesignator"] call _addOptics;
    };    
    
    default {
        [_commonHEAD, _commonUNIFORM, _commonVEST, "empty"] call _useUniform;
        [[_unit,[_wsmoke,2],[_grenade,3]]] call _addtoVest;
        [_commonRIFLE, 5] call _addWeaponKit;
    };
};

// ADDS ESSENTIALS =============================================================

_suppliesNORMAL call _addtoUniform;

["ItemMap", "ItemCompass", "ItemWatch", _NVG] call _linkItem;

["SR"] call _addRadio;

if ((mission_AGM_enabled)||(mission_ACE3_enabled)) then { [[_unit, [_earBuds,1]]] call _addtoUniform };
