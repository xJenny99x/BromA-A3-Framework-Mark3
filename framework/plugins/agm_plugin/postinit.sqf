if (!isServer) exitWith {};
waitUntil{(!isNil "paramsDone")};

switch (param_revive_time) do {
    case 0: { mission_revive_time = 10 };
    case 1: { mission_revive_time = 120 };
    case 2: { mission_revive_time = 300 };
    case 4: { mission_revive_time = 600 };
};

_center = createCenter sideLogic;
_group = createGroup _center;

_module = _group createUnit ["AGM_ModuleRespawn", [0,0,0],[],0.5,"NONE"];
_module setVariable ["RemoveDeadBodiesDisonncected", true];
_module setVariable ["SavePreDeathGear", true];

_module = _group createUnit ["AGM_ModuleMedical", [0,0,0],[],0.5,"NONE"];
_module setVariable ["AllowChatWhileUnconscious", false];
_module setVariable ["AllowNonmedics", false];
_module setVariable ["AutomaticWakeup", true];
_module setVariable ["CoefBleeding", true];
_module setVariable ["CoefDamage", 1];
_module setVariable ["CoefNonMedic", 4];
_module setVariable ["CoefPain", 1];
_module setVariable ["EnableOverdosing", false];
_module setVariable ["MaxUnconsciousnessTime", mission_revive_time];
_module setVariable ["PreventDeathWhileUnconscious", true];
_module setVariable ["PreventInstaDeath", true];
_module setVariable ["RequireDiagnosis", true];
_module setVariable ["RequireMEDEVAC", false];
_module setVariable ["SingleBandage", false];
_module setVariable ["DisableScreams", false];