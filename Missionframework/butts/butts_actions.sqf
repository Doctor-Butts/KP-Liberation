//this shit is put into init_client.sqf to make it easier on me
private _butts_nightgear = -1;


	if ((_fobdistance < _distredeploy || count KP_liberation_neararsenal != 0 || count KP_liberation_nearspawn != 0 || (player distance startbase) < 200) && alive player && vehicle player == player) then {
		if (_butts_nightgear == -1) then {
			_butts_nightgear = player addAction ["<t color='#ff00e6'>Add Night Gear</t>","butts\nightgear.sqf","",-980,true,true,"","build_confirmed == 0"];
		};
	} else {
		if (_butts_nightgear != -1) then {
			player removeAction _butts_nightgear;
			_butts_nightgear = -1;
		};
	};
	
	private _butts_nightgear = -1;


	if ((_fobdistance < _distredeploy || count KP_liberation_neararsenal != 0 || count KP_liberation_nearspawn != 0 || (player distance startbase) < 200) && alive player && vehicle player == player) then {
		if (_butts_silentgear == -1) then {
			_butts_silentgear = player addAction ["<t color='#ff00e6'>Add Silent Gear</t>","butts\silentgear.sqf","",-980,true,true,"","build_confirmed == 0"];
		};
	} else {
		if (_butts_silentgear != -1) then {
			player removeAction _butts_silentgear;
			_butts_silentgear = -1;
		};
	};
	
	if ((getPlayerUID player) in arsenal_whitelist_1) then {
			[player, whitelist_1, false] call ace_arsenal_fnc_addVirtualItems;
		};