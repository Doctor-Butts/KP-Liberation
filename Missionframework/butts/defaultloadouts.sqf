//called in init.sqf
//create units to hold loadouts

//
l_base = "B_Survivor_F" createVehicle [0,0,0];
l_rifleman = "B_Survivor_F" createVehicle [0,0,0];
l_grenadier = "B_Survivor_F" createVehicle [0,0,0];
l_autorifleman = "B_Survivor_F" createVehicle [0,0,0];
l_teamleader = "B_Survivor_F" createVehicle [0,0,0];
l_marksman  = "B_Survivor_F" createVehicle [0,0,0];
l_ar_assist  = "B_Survivor_F" createVehicle [0,0,0];
l_at_javelin  = "B_Survivor_F" createVehicle [0,0,0];
l_at_maaws  = "B_Survivor_F" createVehicle [0,0,0];
l_at_ass_maaws  = "B_Survivor_F" createVehicle [0,0,0];
l_at_ass_javelin = "B_Survivor_F" createVehicle [0,0,0];
l_engineer = "B_Survivor_F" createVehicle [0,0,0];
l_explosives_expert = "B_Survivor_F" createVehicle [0,0,0];
l_heli_pilot = "B_Survivor_F" createVehicle [0,0,0];
l_heli_crew = "B_Survivor_F" createVehicle [0,0,0];
l_crewman = "B_Survivor_F" createVehicle [0,0,0];
l_medic = "B_Survivor_F" createVehicle [0,0,0];
l_jfo = "B_Survivor_F" createVehicle [0,0,0];
l_squadleader = "B_Survivor_F" createVehicle [0,0,0];
l_rto = "B_Survivor_F" createVehicle [0,0,0];
l_sniper = "B_Survivor_F" createVehicle [0,0,0];
l_spotter = "B_Survivor_F" createVehicle [0,0,0];
l_sniper_m107 = "B_Survivor_F" createVehicle [0,0,0];
l_jet_pilot = "B_Survivor_F" createVehicle [0,0,0];
l_aa = "B_Survivor_F" createVehicle [0,0,0];
l_aa_ass = "B_Survivor_F" createVehicle [0,0,0];
l_mg = "B_Survivor_F" createVehicle [0,0,0];
l_mg_ass = "B_Survivor_F" createVehicle [0,0,0];
l_uav_op = "B_Survivor_F" createVehicle [0,0,0];
// comment out with ace medical
//l_surgeon = "B_Survivor_F" createVehicle [0,0,0];

//your array of units
sim_arr = [l_base,l_rifleman,l_grenadier,l_autorifleman,l_teamleader,l_marksman,l_ar_assist,l_at_javelin,l_at_maaws,l_at_ass_maaws,l_at_ass_javelin,l_engineer,l_explosives_expert,l_heli_pilot,l_heli_crew,l_crewman,l_medic,l_jfo,l_squadleader,l_rto,l_sniper,l_spotter,l_sniper_m107,l_jet_pilot,l_aa,l_aa_ass,l_mg,l_mg_ass,l_uav_op];//l_surgeon put back in if ace advanced medical

//take everything away, make them invisible, no simulation. Almost all have the same uniform and other base stuff
{_x enableSimulation false;
_x hideObject true;
removeAllWeapons _x;
removeAllItems _x;
removeAllAssignedItems _x;
removeUniform _x;
removeVest _x;
removeBackpack _x;
removeHeadgear _x;
removeGoggles _x;
_x forceAddUniform "rhs_uniform_cu_ocp";
//the following is for advanced medical. comment out if not using
/* for "_i" from 1 to 6 do {_x addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 6 do {_x addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 6 do {_x addItemToUniform "ACE_quikclot";};
_x addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 4 do {_x addItemToUniform "ACE_packingBandage";}; */
//the following is ace basic medical
for "_i" from 1 to 3 do {this addItemToUniform "ACE_morphine";};
for "_i" from 1 to 10 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_x addItemToUniform "ACE_CableTie";};
_x addItemToUniform "ACE_Canteen";
_x addItemToUniform "ACE_EarPlugs";
_x addItemToUniform "ACE_epinephrine";
_x addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_x addItemToUniform "ACE_morphine";};
_x linkItem "ItemMap";
_x linkItem "ItemCompass";
_x linkItem "ItemWatch";
_x addGoggles "rhs_googles_clear";
_x addBackpack "B_Carryall_cbr"; //add weapon ammo here to go in weapon
} forEach sim_arr;

//loadout lists go below
//Remember to add mags to Uniform/backpack before adding weapon, so the weapon auto-loads the mag.
//make sure radios are added in order

//Basic Unarmed Soldier, with gear
l_base forceAddUniform "rhs_uniform_cu_ocp";
l_base addVest "rhsusf_iotv_ocp_Rifleman";
l_base addItemToVest "ACRE_PRC343";
l_base addHeadgear "rhsusf_ach_helmet_ocp";
l_base addItemToVest "ACRE_PRC148";

// Rifleman
l_rifleman forceAddUniform "rhs_uniform_cu_ocp";
l_rifleman addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_rifleman addWeapon "rhs_weap_m4a1_carryhandle";
removeBackpack l_rifleman;
l_rifleman addVest "rhsusf_iotv_ocp_Rifleman";
l_rifleman addItemToVest "ACRE_PRC343";
for "_i" from 1 to 7 do {l_rifleman addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_rifleman addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_rifleman addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_rifleman addItemToVest "SmokeShell";};
l_rifleman addItemToVest "ACRE_PRC148";
l_rifleman addItemToVest "SmokeShellRed";
l_rifleman addHeadgear "rhsusf_ach_helmet_ocp";
l_rifleman addPrimaryWeaponItem "rhsusf_acc_compm4";

//Grenadier
l_grenadier addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_grenadier addItemToBackpack "rhs_mag_M441_HE";
l_grenadier addWeapon "rhs_weap_m4a1_carryhandle_m203";
removeBackpack l_grenadier;
l_grenadier addVest "rhsusf_iotv_ocp_Grenadier";
l_grenadier addItemToVest "ACRE_PRC343";
for "_i" from 1 to 2 do {l_grenadier addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_grenadier addItemToVest "SmokeShell";};
l_grenadier addItemToVest "ACRE_PRC148";
l_grenadier addItemToVest "SmokeShellRed";
for "_i" from 1 to 6 do {l_grenadier addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
l_grenadier addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
for "_i" from 1 to 4 do {l_grenadier addItemToVest "rhs_mag_M441_HE";};
l_grenadier addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 2 do {l_grenadier addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 5 do {l_grenadier addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {l_grenadier addItemToBackpack "rhs_mag_M397_HET";};
for "_i" from 1 to 2 do {l_grenadier addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
l_grenadier addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";
l_grenadier addHeadgear "rhsusf_ach_helmet_ocp";
l_grenadier addPrimaryWeaponItem "rhsusf_acc_compm4";

//autorifleman
l_autorifleman addItemToBackpack "rhsusf_200Rnd_556x45_mixed_soft_pouch";
l_autorifleman addItemToBackpack "rhsusf_mag_15Rnd_9x19_FMJ";
l_autorifleman addWeapon "rhs_weap_m249_pip_S_para";
l_autorifleman addWeapon "rhsusf_weap_m9";
removeBackpack l_autorifleman;
l_autorifleman addVest "rhsusf_iotv_ocp_SAW";
l_autorifleman addItemToVest "ACRE_PRC343";
for "_i" from 1 to 2 do {l_autorifleman addItemToVest "rhsusf_200Rnd_556x45_mixed_soft_pouch";};
for "_i" from 1 to 2 do {l_autorifleman addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_autorifleman addItemToVest "SmokeShell";};
l_autorifleman addItemToVest "ACRE_PRC148";
l_autorifleman addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {l_autorifleman addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
l_autorifleman addHeadgear "rhsusf_ach_helmet_ocp";
l_autorifleman addPrimaryWeaponItem "rhsusf_acc_ELCAN";

//teamleader
l_teamleader addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_teamleader addWeapon "rhs_weap_m4a1_carryhandle";
removeBackpack l_teamleader;
l_teamleader addVest "rhsusf_iotv_ocp_Rifleman";
l_teamleader addItemToVest "ACRE_PRC343";
for "_i" from 1 to 7 do {l_teamleader addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_teamleader addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_teamleader addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_teamleader addItemToVest "SmokeShell";};
l_teamleader addItemToVest "ACRE_PRC148";
l_teamleader addItemToVest "SmokeShellRed";
l_teamleader addHeadgear "rhsusf_ach_helmet_ocp";
l_teamleader addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
l_teamleader linkItem "ItemGPS";

//Designated Marksman
l_marksman addItemToBackpack "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";
l_marksman addWeapon "srifle_EBR_F";
removeBackpack l_marksman;
l_marksman addVest "rhsusf_iotv_ocp_Rifleman";
l_marksman addItemToVest "ACRE_PRC343";
for "_i" from 1 to 7 do {l_marksman addItemToVest "ACE_20Rnd_762x51_Mk319_Mod_0_Mag";};
l_marksman addItemToVest "ACRE_PRC148";
l_marksman addHeadgear "rhsusf_ach_helmet_ocp";
l_marksman addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
l_marksman addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

//Autorifleman Assistant
l_ar_assist addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_ar_assist addWeapon "rhs_weap_m4a1_carryhandle";
removeBackpack l_ar_assist;
l_ar_assist addVest "rhsusf_iotv_ocp_Rifleman";
l_ar_assist addItemToVest "ACRE_PRC343";
l_ar_assist addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_ar_assist addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_ar_assist addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_ar_assist addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_ar_assist addItemToVest "SmokeShell";};
l_ar_assist addItemToVest "SmokeShellRed";
l_ar_assist addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 3 do {l_ar_assist addItemToBackpack "rhsusf_200Rnd_556x45_mixed_soft_pouch";};
l_ar_assist addHeadgear "rhsusf_ach_helmet_ocp";
l_ar_assist addPrimaryWeaponItem "rhsusf_acc_compm4";

//Anti-Tank Javelin
l_at_javelin addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_at_javelin addWeapon "rhs_weap_m4a1_carryhandle";
l_at_javelin addItemToBackpack "rhs_fgm148_magazine_AT";
l_at_javelin addWeapon "rhs_weap_fgm148";
removeBackpack l_at_javelin;
l_at_javelin addVest "rhsusf_iotv_ocp_Rifleman";
l_at_javelin addItemToVest "ACRE_PRC343";
for "_i" from 1 to 7 do {l_at_javelin addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_at_javelin addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_at_javelin addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_at_javelin addItemToVest "SmokeShell";};
l_at_javelin addItemToVest "ACRE_PRC148";
l_at_javelin addItemToVest "SmokeShellRed";
l_at_javelin addHeadgear "rhsusf_ach_helmet_ocp";
l_at_javelin addPrimaryWeaponItem "rhsusf_acc_compm4";

//Anti-Tank MAAWS
l_at_maaws addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_at_maaws addItemToBackpack "MRAWS_HEAT_F";
l_at_maaws addWeapon "rhs_weap_m4a1_carryhandle";
l_at_maaws addPrimaryWeaponItem "rhsusf_acc_compm4";
l_at_maaws addWeapon "launch_MRAWS_green_F";
removeBackpack l_at_maaws;
l_at_maaws addVest "rhsusf_iotv_ocp_Rifleman";
l_at_maaws addItemToVest "ACRE_PRC343";
l_at_maaws addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_at_maaws addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_at_maaws addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_at_maaws addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_at_maaws addItemToVest "SmokeShell";};
l_at_maaws addItemToVest "SmokeShellRed";
l_at_maaws addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 2 do {l_at_maaws addItemToBackpack "MRAWS_HEAT_F";};
l_at_maaws addHeadgear "rhsusf_ach_helmet_ocp";

//AT Assistant (MAAWS)
l_at_ass_maaws addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_at_ass_maaws addWeapon "rhs_weap_m4a1_carryhandle";
l_at_ass_maaws addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_at_ass_maaws;
l_at_ass_maaws addVest "rhsusf_iotv_ocp_Rifleman";
l_at_ass_maaws addItemToVest "ACRE_PRC343";
for "_i" from 1 to 7 do {l_at_ass_maaws addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_at_ass_maaws addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_at_ass_maaws addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_at_ass_maaws addItemToVest "SmokeShell";};
l_at_ass_maaws addItemToVest "ACRE_PRC148";
l_at_ass_maaws addItemToVest "SmokeShellRed";
l_at_ass_maaws addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 3 do {l_at_ass_maaws addItemToBackpack "MRAWS_HEAT_F";};
for "_i" from 1 to 2 do {l_at_ass_maaws addItemToBackpack "MRAWS_HE_F";};
l_at_ass_maaws addHeadgear "rhsusf_ach_helmet_ocp";

//Anti Tank Assistant (Javelin)
l_at_ass_javelin addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_at_ass_javelin addWeapon "rhs_weap_m4a1_carryhandle";
l_at_ass_javelin addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_at_ass_javelin;
l_at_ass_javelin addVest "rhsusf_iotv_ocp_Rifleman";
l_at_ass_javelin addItemToVest "ACRE_PRC343";
for "_i" from 1 to 7 do {l_at_ass_javelin addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_at_ass_javelin addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_at_ass_javelin addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_at_ass_javelin addItemToVest "SmokeShell";};
l_at_ass_javelin addItemToVest "ACRE_PRC148";
l_at_ass_javelin addItemToVest "SmokeShellRed";
l_at_ass_javelin addBackpack "B_Carryall_mcamo";
l_at_ass_javelin addItemToBackpack "rhs_fgm148_magazine_AT";
l_at_ass_javelin addHeadgear "rhsusf_ach_helmet_ocp";

//Engineer
l_engineer addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_engineer addWeapon "rhs_weap_m4a1_carryhandle";
l_engineer addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_engineer;
l_engineer addVest "rhsusf_iotv_ocp_Repair";
l_engineer addItemToVest "ACRE_PRC343";
l_engineer addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_engineer addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_engineer addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_engineer addItemToVest "rhs_mag_m67";};
l_engineer addBackpack "rhsusf_assault_eagleaiii_ocp";
l_engineer addItemToBackpack "ToolKit";
l_engineer addItemToBackpack "ACE_wirecutter";
l_engineer addItemToBackpack "ACE_EntrenchingTool";
l_engineer addItemToBackpack "ACE_Fortify";
l_engineer addItemToBackpack "ACE_rope15";
l_engineer addHeadgear "rhsusf_ach_helmet_ocp";

//explosives expert
l_explosives_expert addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_explosives_expert addWeapon "rhs_weap_m4a1_carryhandle";
l_explosives_expert addPrimaryWeaponItem "rhsusf_acc_compm4";
l_explosives_expert addWeapon "ACE_VMH3";
removeBackpack l_explosives_expert;
l_explosives_expert addVest "rhsusf_iotv_ocp_Repair";
l_explosives_expert addItemToVest "ACRE_PRC343";
l_explosives_expert addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_explosives_expert addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_explosives_expert addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_explosives_expert addItemToVest "rhs_mag_m67";};
l_explosives_expert addBackpack "rhsusf_assault_eagleaiii_ocp";
l_explosives_expert addItemToBackpack "ACE_DefusalKit";
l_explosives_expert addItemToBackpack "ACE_Clacker";
for "_i" from 1 to 3 do {l_explosives_expert addItemToBackpack "DemoCharge_Remote_Mag";};
l_explosives_expert addItemToBackpack "SatchelCharge_Remote_Mag";
l_explosives_expert addHeadgear "rhsusf_ach_helmet_ocp";

//Helicopter Pilot
l_heli_pilot addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";
l_heli_pilot addWeapon "rhsusf_weap_m9";
removeBackpack l_heli_pilot;
removeGoggles l_heli_pilot;
l_heli_pilot addVest "rhsusf_spcs_ocp_crewman";
l_heli_pilot addItemToVest "ACRE_PRC343";
l_heli_pilot addItemToVest "ACRE_PRC148";
for "_i" from 1 to 3 do {l_heli_pilot addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {l_heli_pilot addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {l_heli_pilot addItemToVest "SmokeShellBlue";};
l_heli_pilot addHeadgear "rhsusf_hgu56p";
l_heli_pilot addGoggles "rhs_googles_black";

//Helicopter Crew
l_heli_crew addItemToBackpack "rhsusf_mag_15Rnd_9x19_JHP";
l_heli_crew addWeapon "rhsusf_weap_m9";
removeBackpack l_heli_crew;
removeGoggles l_heli_crew;
l_heli_crew addVest "rhsusf_spcs_ocp_crewman";
l_heli_crew addItemToVest "ACRE_PRC343";
l_heli_crew addItemToVest "ACRE_PRC148";
for "_i" from 1 to 3 do {l_heli_crew addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {l_heli_crew addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {l_heli_crew addItemToVest "SmokeShellBlue";};
l_heli_crew addHeadgear "rhsusf_hgu56p_mask";
l_heli_crew addGoggles "rhs_googles_black";

//Crewman (vehicle)
l_crewman addItemToBackpack "rhsusf_mag_15Rnd_9x19_FMJ";
l_crewman addWeapon "rhsusf_weap_m9";
removeBackpack l_crewman;
removeGoggles l_crewman;
l_crewman addVest "rhsusf_spcs_ocp_crewman";
l_crewman addItemToVest "ACRE_PRC343";
l_crewman addItemToVest "ACRE_PRC148";
for "_i" from 1 to 2 do {l_crewman addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {l_crewman addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 3 do {l_crewman addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
l_crewman addHeadgear "rhsusf_cvc_helmet";
l_crewman addGoggles "rhs_googles_black";

//medic
l_medic addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_medic addWeapon "rhs_weap_m4a1_carryhandle";
l_medic addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_medic;
l_medic addVest "rhsusf_iotv_ocp_Medic";
for "_i" from 1 to 6 do {l_medic addItemToVest "ACE_CableTie";};
l_medic addItemToVest "ACE_Flashlight_XL50";
l_medic addItemToVest "ACRE_PRC148";
l_medic addItemToVest "ACRE_PRC343";
for "_i" from 1 to 7 do {l_medic addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
l_medic addBackpack "rhsusf_assault_eagleaiii_ocp";
//first block comment out if using ace basic
/* for "_i" from 1 to 15 do {l_medic addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {l_medic addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {l_medic addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {l_medic addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 15 do {l_medic addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 2 do {l_medic addItemToBackpack "ACE_plasmaIV_500";};
for "_i" from 1 to 2 do {l_medic addItemToBackpack "ACE_salineIV_500";};
l_medic addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 5 do {l_medic addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 15 do {l_medic addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {l_medic addItemToBackpack "ACE_bloodIV_500";}; */
//second block is for basic medical
for "_i" from 1 to 30 do {l_medic addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 9 do {l_medic addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 15 do {l_medic addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 20 do {l_medic addItemToBackpack "ACE_morphine";};
l_medic addHeadgear "rhsusf_ach_helmet_ocp";

// Joint Fires Observer
l_jfo addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_jfo addItemToBackpack "1Rnd_Smoke_Grenade_shell";
l_jfo addItemToBackpack "Laserbatteries";
l_jfo addWeapon "rhs_weap_m4a1_carryhandle_m203";
l_jfo addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
l_jfo addWeapon "Laserdesignator";
removeBackpack l_jfo;
l_jfo addVest "rhsusf_iotv_ocp_Teamleader";
l_jfo addItemToVest "ACRE_PRC343";
l_jfo addItemToVest "ACRE_PRC148";
for "_i" from 1 to 5 do {l_jfo addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 3 do {l_jfo addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_jfo addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_jfo addItemToVest "SmokeShell";};
l_jfo addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {l_jfo addItemToVest "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {l_jfo addItemToVest "1Rnd_SmokeYellow_Grenade_shell";};
l_jfo addItemToVest "Laserbatteries";
l_jfo addBackpack "rhsusf_assault_eagleaiii_ocp";
l_jfo addItemToBackpack "ACRE_PRC117F";
for "_i" from 1 to 4 do {l_jfo addItemToBackpack "1Rnd_SmokeOrange_Grenade_shell";};
for "_i" from 1 to 4 do {l_jfo addItemToBackpack "1Rnd_SmokePurple_Grenade_shell";};
l_jfo addHeadgear "rhsusf_ach_helmet_headset_ocp";
l_jfo linkItem "ItemGPS";

//squad leader
l_squadleader addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_squadleader addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";
l_squadleader addWeapon "rhs_weap_m4a1_carryhandle_m203";
l_squadleader addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
removeBackpack l_squadleader;
l_squadleader addVest "rhsusf_iotv_ocp_Squadleader";
l_squadleader addItemToVest "ACRE_PRC343";
l_squadleader addItemToVest "ACRE_PRC148";
l_squadleader addItemToVest "ACRE_PRC152";
l_squadleader addItemToVest "ACE_MapTools";
for "_i" from 1 to 6 do {l_squadleader addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_squadleader addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_squadleader addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_squadleader addItemToVest "SmokeShell";};
l_squadleader addItemToVest "SmokeShellRed";
l_squadleader addItemToVest "SmokeShellGreen";
l_squadleader addBackpack "rhsusf_assault_eagleaiii_ocp";
l_squadleader addItemToBackpack "ACRE_PRC343";
l_squadleader addItemToBackpack "ACRE_PRC148";
l_squadleader addItemToBackpack "ACRE_PRC152";
for "_i" from 1 to 5 do {l_squadleader addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 2 do {l_squadleader addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 3 do {l_squadleader addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
for "_i" from 1 to 2 do {l_squadleader addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
l_squadleader addHeadgear "rhsusf_ach_helmet_headset_ocp";
l_squadleader linkItem "ItemGPS";
l_squadleader addWeapon "rhsusf_bino_m24_ARD";

//RTO
l_rto addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_rto linkItem "ItemGPS";
l_rto addWeapon "rhs_weap_m4a1_carryhandle";
l_rto addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_rto;
l_rto addVest "rhsusf_spcs_ocp_teamleader_alt";
l_rto addItemToVest "ACRE_PRC343";
l_rto addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_rto addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_rto addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_rto addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_rto addItemToVest "SmokeShell";};
l_rto addItemToVest "SmokeShellRed";
l_rto addBackpack "rhsusf_assault_eagleaiii_ocp";
l_rto addItemToBackpack "ACRE_PRC152";
l_rto addHeadgear "rhsusf_ach_helmet_headset_ocp";

//sniper
l_sniper addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";
l_sniper addItemToBackpack "rhsusf_mag_15Rnd_9x19_FMJ";
l_sniper addWeapon "rhs_weap_XM2010";
l_sniper addPrimaryWeaponItem "rhsusf_acc_M8541";
l_sniper addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
l_sniper addWeapon "rhsusf_weap_m9";
l_sniper addWeapon "rhsusf_bino_m24_ARD";
removeBackpack l_sniper;
removeGoggles l_sniper;
l_sniper addVest "rhsusf_spcs_ocp_sniper";
l_sniper addItemToVest "ACRE_PRC343";
l_sniper addItemToVest "ACRE_PRC148";
l_sniper addItemToVest "ACE_RangeCard";
for "_i" from 1 to 18 do {l_sniper addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
for "_i" from 1 to 2 do {l_sniper addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 3 do {l_sniper addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {l_sniper addItemToVest "SmokeShellRed";};
for "_i" from 1 to 4 do {l_sniper addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
l_sniper addHeadgear "rhsusf_ach_helmet_ocp";
l_sniper addGoggles "rhs_googles_yellow";

//spotter
l_spotter addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag";
l_spotter addItemToBackpack "rhsusf_mag_15Rnd_9x19_FMJ";
l_spotter addWeapon "rhs_weap_m16a4";
l_spotter addPrimaryWeaponItem "rhsusf_acc_ACOG_RMR";
l_spotter addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
l_spotter addWeapon "rhsusf_weap_m9";
l_spotter addWeapon "Rangefinder";
removeBackpack l_spotter;
removeGoggles l_spotter;
l_spotter addVest "rhsusf_spcs_ocp_rifleman_alt";
l_spotter addItemToVest "ACRE_PRC343";
l_spotter addItemToVest "ACRE_PRC148";
l_spotter addItemToVest "ACRE_PRC152";
l_spotter addItemToVest "ACE_MapTools";
for "_i" from 1 to 2 do {l_spotter addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_spotter addItemToVest "SmokeShell";};
l_spotter addItemToVest "SmokeShellRed";
for "_i" from 1 to 8 do {l_spotter addItemToVest "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
l_spotter addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";
l_spotter addHeadgear "rhsusf_ach_helmet_ocp";
l_spotter addGoggles "rhs_googles_yellow";

//sniper m107
l_sniper_m107 addItemToBackpack "rhsusf_mag_10Rnd_STD_50BMG_M33";
l_sniper_m107 addWeapon "rhs_weap_M107";
l_sniper_m107 addPrimaryWeaponItem "rhsusf_acc_premier";
l_sniper_m107 addWeapon "rhsusf_weap_m9";
removeBackpack l_sniper_m107;
removeGoggles l_sniper_m107;
l_sniper_m107 addVest "rhsusf_iotv_ocp_SAW";
l_sniper_m107 addItemToVest "ACRE_PRC343";
l_sniper_m107 addItemToVest "ACRE_PRC148";
for "_i" from 1 to 2 do {l_sniper_m107 addItemToVest "rhsusf_mag_10Rnd_STD_50BMG_M33";};
l_sniper_m107 addItemToVest "rhsusf_mag_10Rnd_STD_50BMG_mk211";
l_sniper_m107 addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";
l_sniper_m107 addHeadgear "rhsusf_ach_helmet_ocp";
l_sniper_m107 addGoggles "rhs_googles_yellow";

//jet pilot
removeUniform l_jet_pilot;
l_jet_pilot addItemToBackpack "rhsusf_mag_15Rnd_9x19_FMJ";
l_jet_pilot addWeapon "rhsusf_weap_m9";
removeBackpack l_jet_pilot;
removeGoggles l_jet_pilot;
l_jet_pilot forceAddUniform "U_B_PilotCoveralls";
l_jet_pilot addItemToUniform "ACRE_PRC152";
l_jet_pilot addItemToUniform "ACE_Flashlight_XL50";
l_jet_pilot addItemToUniform "ACE_MapTools";
//ace advanced
/* for "_i" from 1 to 2 do {l_jet_pilot addItemToUniform "ACE_morphine";};
l_jet_pilot addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 2 do {l_jet_pilot addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {l_jet_pilot addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {l_jet_pilot addItemToUniform "ACE_elasticBandage";};
l_jet_pilot addItemToUniform "ACE_tourniquet"; */
/// ace basic
for "_i" from 1 to 10 do {l_jet_pilot addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {l_jet_pilot addItemToUniform "ACE_morphine";};
l_jet_pilot addItemToUniform "ACE_Canteen";
for "_i" from 1 to 2 do {l_jet_pilot addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {l_jet_pilot addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {l_jet_pilot addItemToUniform "SmokeShellRed";};
l_jet_pilot addHeadgear "RHS_jetpilot_usaf";
l_jet_pilot addGoggles "G_Aviator";
l_jet_pilot linkItem "ItemGPS";
l_jet_pilot linkItem "NVGoggles_OPFOR";

// aa specialist
l_aa addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_aa addItemToBackpack "rhs_fim92_mag";
l_aa addWeapon "rhs_weap_m4a1_carryhandle";
l_aa addPrimaryWeaponItem "rhsusf_acc_compm4";
l_aa addWeapon "rhs_weap_fim92";
removeBackpack l_aa;
l_aa addVest "rhsusf_iotv_ocp_Rifleman";
l_aa addItemToVest "ACRE_PRC343";
l_aa addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_aa addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_aa addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_aa addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_aa addItemToVest "SmokeShell";};
l_aa addItemToVest "SmokeShellRed";
l_aa addHeadgear "rhsusf_ach_helmet_ocp";

//AA Assistant
l_aa_ass addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_aa_ass addWeapon "rhs_weap_m4a1_carryhandle";
l_aa_ass addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_aa_ass;
l_aa_ass addVest "rhsusf_iotv_ocp_Rifleman";
l_aa_ass addItemToVest "ACRE_PRC343";
l_aa_ass addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_aa_ass addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_aa_ass addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_aa_ass addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_aa_ass addItemToVest "SmokeShell";};
l_aa_ass addItemToVest "SmokeShellRed";
l_aa_ass addBackpack "B_TacticalPack_mcamo";
for "_i" from 1 to 2 do {l_aa_ass addItemToBackpack "rhs_fim92_mag";};
l_aa_ass addHeadgear "rhsusf_ach_helmet_ocp";
l_aa_ass addWeapon "rhsusf_bino_m24_ARD";

//machinegunner
l_mg addItemToBackpack "rhsusf_100Rnd_762x51_m80a1epr";
l_mg addItemToBackpack "rhsusf_mag_15Rnd_9x19_FMJ";
l_mg addWeapon "rhs_weap_m240G";
l_mg addPrimaryWeaponItem "rhsusf_acc_ELCAN_ard";
l_mg addWeapon "rhsusf_weap_m9";
removeBackpack l_mg;
l_mg addVest "rhsusf_iotv_ocp_SAW";
l_mg addItemToVest "ACRE_PRC343";
l_mg addItemToVest "ACRE_PRC148";
for "_i" from 1 to 2 do {l_mg addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_mg addItemToVest "SmokeShell";};
l_mg addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {l_mg addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {l_mg addItemToVest "rhsusf_100Rnd_762x51_m80a1epr";};
l_mg addHeadgear "rhsusf_ach_helmet_ocp";

//mg assistant
l_mg_ass addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_mg_ass addWeapon "rhs_weap_m4a1_carryhandle";
l_mg_ass addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_mg_ass;
l_mg_ass addVest "rhsusf_iotv_ocp_Rifleman";
l_mg_ass addItemToVest "ACRE_PRC343";
l_mg_ass addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_mg_ass addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_mg_ass addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_mg_ass addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_mg_ass addItemToVest "SmokeShell";};
l_mg_ass addItemToVest "SmokeShellRed";
l_mg_ass addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 3 do {l_mg_ass addItemToBackpack "rhsusf_100Rnd_762x51_m80a1epr";};
l_mg_ass addItemToBackpack "rhsusf_100Rnd_762x51_m61_ap";
l_mg_ass addItemToBackpack "rhsusf_50Rnd_762x51_m62_tracer";
l_mg_ass addHeadgear "rhsusf_ach_helmet_ocp";

//surgeon
//this dude is not need for advanced medical
/* removeAllWeapons l_surgeon;
removeAllItems l_surgeon;
removeAllAssignedItems l_surgeon;
removeUniform l_surgeon;
removeVest l_surgeon;
removeBackpack l_surgeon;
removeHeadgear l_surgeon;
removeGoggles l_surgeon;
l_surgeon forceAddUniform "U_C_Scientist";
l_surgeon addItemToUniform "ACRE_PRC343";
l_surgeon addItemToUniform "ACRE_PRC148";
l_surgeon addBackpack "B_Messenger_IDAP_F";
for "_i" from 1 to 10 do {l_surgeon addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 10 do {l_surgeon addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {l_surgeon addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 3 do {l_surgeon addItemToBackpack "ACE_bloodIV_500";};
l_surgeon addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 3 do {l_surgeon addItemToBackpack "ACE_plasmaIV_500";};
for "_i" from 1 to 3 do {l_surgeon addItemToBackpack "ACE_salineIV_500";};
l_surgeon addItemToBackpack "ACE_surgicalKit";
for "_i" from 1 to 5 do {l_surgeon addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {l_surgeon addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 5 do {l_surgeon addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 5 do {l_surgeon addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 5 do {l_surgeon addItemToBackpack "ACE_tourniquet";};
l_surgeon addHeadgear "H_Bandanna_sand";
l_surgeon addGoggles "G_Respirator_white_F"; */

//uav operator
l_uav_op addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";
l_uav_op addWeapon "rhs_weap_m4a1_carryhandle";
l_uav_op addPrimaryWeaponItem "rhsusf_acc_compm4";
removeBackpack l_uav_op;
l_uav_op addVest "rhsusf_iotv_ocp_Rifleman";
l_uav_op addItemToVest "ACRE_PRC343";
l_uav_op addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {l_uav_op addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {l_uav_op addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {l_uav_op addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {l_uav_op addItemToVest "SmokeShell";};
l_uav_op addItemToVest "SmokeShellRed";
l_uav_op addBackpack "B_UAV_01_backpack_F";
l_uav_op addHeadgear "rhsusf_ach_helmet_ocp";
l_uav_op linkItem "B_UavTerminal";



//grab the loadouts and add them to default loadouts
["Base (Unarmed)", getUnitLoadout l_base] call ace_arsenal_fnc_addDefaultLoadout;
["Rifleman", getUnitLoadout l_rifleman] call ace_arsenal_fnc_addDefaultLoadout;
["Grenadier", getUnitLoadout l_grenadier] call ace_arsenal_fnc_addDefaultLoadout;
["Automatic Rifleman", getUnitLoadout l_autorifleman] call ace_arsenal_fnc_addDefaultLoadout;
["Team Leader", getUnitLoadout l_teamleader] call ace_arsenal_fnc_addDefaultLoadout;
["Designated Marksman (M14)", getUnitLoadout l_marksman] call ace_arsenal_fnc_addDefaultLoadout;
["Automatic Rifleman Assistant", getUnitLoadout l_ar_assist] call ace_arsenal_fnc_addDefaultLoadout;
["AT Specialist (Javelin)", getUnitLoadout l_at_javelin] call ace_arsenal_fnc_addDefaultLoadout;
["AT Specialist (MAAWS)", getUnitLoadout l_at_maaws] call ace_arsenal_fnc_addDefaultLoadout;
["AT Assistant (MAAWS)", getUnitLoadout l_at_ass_maaws] call ace_arsenal_fnc_addDefaultLoadout;
["AT Assistant (Javelin)", getUnitLoadout l_at_ass_javelin] call ace_arsenal_fnc_addDefaultLoadout;
["Engineer", getUnitLoadout l_engineer] call ace_arsenal_fnc_addDefaultLoadout;
["Explosives Expert", getUnitLoadout l_explosives_expert] call ace_arsenal_fnc_addDefaultLoadout;
["Helicopter Pilot", getUnitLoadout l_heli_pilot] call ace_arsenal_fnc_addDefaultLoadout;
["Helicopter Crew", getUnitLoadout l_heli_crew] call ace_arsenal_fnc_addDefaultLoadout;
["Crewman", getUnitLoadout l_crewman] call ace_arsenal_fnc_addDefaultLoadout;
["Combat Medic", getUnitLoadout l_medic] call ace_arsenal_fnc_addDefaultLoadout;
["Joint Fires Observer", getUnitLoadout l_jfo] call ace_arsenal_fnc_addDefaultLoadout;
["Squad Leader", getUnitLoadout l_squadleader] call ace_arsenal_fnc_addDefaultLoadout;
["RTO", getUnitLoadout l_rto] call ace_arsenal_fnc_addDefaultLoadout;
["Sniper (XM2010)", getUnitLoadout l_sniper] call ace_arsenal_fnc_addDefaultLoadout;
["Spotter", getUnitLoadout l_spotter] call ace_arsenal_fnc_addDefaultLoadout;
["Sniper (M107)", getUnitLoadout l_sniper_m107] call ace_arsenal_fnc_addDefaultLoadout;
["Jet Pilot", getUnitLoadout l_jet_pilot] call ace_arsenal_fnc_addDefaultLoadout;
["AA Specialist", getUnitLoadout l_aa] call ace_arsenal_fnc_addDefaultLoadout;
["AA Assistant", getUnitLoadout l_aa_ass] call ace_arsenal_fnc_addDefaultLoadout;
["Machinegunner", getUnitLoadout l_mg] call ace_arsenal_fnc_addDefaultLoadout;
["Machinegunner Assistant", getUnitLoadout l_mg_ass] call ace_arsenal_fnc_addDefaultLoadout;
["UAV Operator", getUnitLoadout l_uav_op] call ace_arsenal_fnc_addDefaultLoadout;
//["Surgeon (Unarmed)", getUnitLoadout l_surgeon] call ace_arsenal_fnc_addDefaultLoadout;

//clean it all up
{deletevehicle _x} forEach sim_arr;