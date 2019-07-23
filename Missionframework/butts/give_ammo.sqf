//give_ammo_crate.sqf

private _crate = KP_liberation_ammo_crate createVehicle getPos player;
_crate setMass 500;
_crate setVariable ["KP_liberation_crate_value", 100, true];
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
clearBackpackCargoGlobal _crate;
clearItemCargoGlobal _crate;

if(KP_liberation_ace) then {[_crate, true, [0, 1.5, 0], 0] remoteExec ["ace_dragging_fnc_setCarryable"];};

_crate