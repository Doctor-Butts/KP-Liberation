_pWeap = primaryWeapon player;
player addItemToUniform "ACE_IR_Strobe_Item";
player linkItem "NVGoggles";
if (_pWeap == "rhs_weap_m4a1_carryhandle" or _pWeap == "rhs_weap_m4a1_carryhandle_m203" or _pWeap == "rhs_weap_m249_pip_S_para" or _pWeap == "srifle_EBR_F" or _pWeap == "rhs_weap_XM2010" or _pWeap == "rhs_weap_m16a4" or _pWeap == "rhs_weap_m4a1_carryhandle_m203S") then {
	player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
	};
if (_pWeap == "rhs_weap_XM2010" or _pWeap == "rhs_weap_M107") then {
	player addPrimaryWeaponItem "rhsusf_acc_premier_anpvs27";
	};