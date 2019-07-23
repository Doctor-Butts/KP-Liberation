_pWeap = primaryWeapon player;

if (_pWeap == "rhs_weap_m4a1_carryhandle" or _pWeap == "rhs_weap_m4a1_carryhandle_m203" or _pWeap == "rhs_weap_m249_pip_S_para" or _pWeap == "rhs_weap_m16a4" or _pWeap == "rhs_weap_m4a1_carryhandle_m203S") then {
	player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
	};

if (_pWeap == "rhs_weap_XM2010") then {
	player addPrimaryWeaponItem "rhsusf_acc_M2010S_wd";
	};

if (_pWeap == "srifle_EBR_F") then {
	player addPrimaryWeaponItem "muzzle_snds_B";
	};

if (_pWeap == "rhs_weap_m240G") then {
	player addPrimaryWeaponItem "muzzle_snds_h_mg_blk_f";
	};