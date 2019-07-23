["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

["ace_arsenal_onLoadoutLoad", {
    params ["_loadout", "_loadoutName"];

	if (_loadoutName == "Combat Medic") then {
		player setVariable ["ace_medical_medicClass", 1, true];
	}
		else {
		player setVariable ["ace_medical_medicClass", 0, true];
	};
	
	if (_loadoutName == "Engineer" or _loadoutName == "Explosives Expert") then {
		player setVariable ["ace_isEngineer",1, true];
	}
		else {
		player setVariable ["ace_isEngineer",0, true];
	};
	if (_loadoutName == "Surgeon (Unarmed)") then {
		player setVariable ["ace_medical_medicClass", 2, true];
	};

	//[format ["%1 changed role to: %2", name player, _loadoutName]] remoteExec ["systemChat", 0,true];
	[[WEST,"base"],format ["%1 switched to: %2", name player, _loadoutName]] remoteExec ["commandChat", 0,true];
}
] call CBA_fnc_addEventHandler;