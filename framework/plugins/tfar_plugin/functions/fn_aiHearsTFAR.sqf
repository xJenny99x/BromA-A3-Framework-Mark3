// Written by beta and Krause
// AI can hear you talk on TFAR
// version 2

if !(hasInterface) exitWith {};
if !(isClass(configFile>>"CfgPatches">>"task_force_radio")) exitWith {};


private ["_nearAI", "_revealAmount", "_sideUnit", "_nearAISingle", "_sideAI", "_sideUnits", "_inContact", "_enemyInContact", "_dist"];
brm_aiHearsTFAR_talkTime = 0;
b_hasRadioCheck = {
	if ([_this select 0] call TFAR_fnc_haveSWRadio) then { true } 
	else { false };
};        
sleep 5;  //wait for init
brm_aihearsTFAR_pfh = [{
	if (player call TFAR_fnc_isSpeaking) then {
		brm_aiHearsTFAR_talkTime = brm_aiHearsTFAR_talkTime + 0.25;

		if (brm_aiHearsTFAR_talkTime >= 1.0) then {
			_dist = (TF_speak_volume_meters * 2);

			_nearAI = nearestObjects [player, ["Man"], _dist];
			_nearAI = _nearAI - [playableUnits];
			{
				if ((alive _x) && (_x knowsAbout player < 1.0) && !(_x knowsAbout player >= 4.0)) then {
					_nearAISingle = _x; 
					_sideAI = side _nearAISingle; 
					_sideUnits = [];
					_inContact = false; 

					//AI hears talking
					_revealAmount = 1.0;

					//Command and control checks
					if ([_nearAISingle] call b_hasRadioCheck) then {
						_revealAmount = _revealAmount + 1.0; 
						//AI has a radio 
						{
							if ((side _x == _sideAI) && !(isplayer _x)) then {
								_sideUnits = _sideUnits + [_x]; 
							};
							true
						} count allunits; 
						{
							_sideUnit = _x; 
							{
								if ((_sideUnit knowsAbout _x > 2) && ([_nearAISingle] call b_hasRadioCheck)) exitWith {
									_inContact = true; 
									_revealAmount = _revealAmount + 1.0; 
									//AI has radio link to other troops in contact
								};
								true
							} count playableunits; 
							true
						} count _sideUnits;
					};
					if (!isNull ((leader (group _nearAISingle)) findNearestEnemy (getPos leader (group _nearAISingle)))) then {
						_enemyInContact = (leader (group _nearAISingle)) findNearestEnemy (getPos leader (group _nearAISingle));
						if (_enemyInContact distance _nearAISingle < 2000) then {
							_revealAmount = _revealAmount + 1.0; 
							//AI is already in contact with enemy
						};					
					};
					[0, {(_this select 0) reveal (_this select 1);}, [_nearAISingle, [player, _revealAmount]]] call CBA_fnc_globalExecute;
				};
				true
			} count _nearAI;
		};
	}
		else
	{
		if (brm_aiHearsTFAR_talkTime > 0) then { brm_aiHearsTFAR_talkTime = 0; };
	};
}, 0.25] call CBA_fnc_addPerFrameHandler;
