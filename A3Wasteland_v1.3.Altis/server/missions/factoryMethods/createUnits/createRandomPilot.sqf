//	@file Name: createRandomSoldier.sqf
/*
 * Creates a random civilian soldier.
 *
 * Arguments: [ position, group, init, skill, rank]: Array
 *    position: Position - Location unit is created at.
 *    group: Group - Existing group new unit will join.
 *    init: String - (optional, default "") Command to be executed upon creation of unit. Parameter this is set to the created unit and passed to the code.
 *    skill: Number - (optional, default 0.5)
 *    rank: String - (optional, default "PRIVATE")
 */

if (!isServer) exitWith {};

private ["_soldierTypes","_uniformTypes","_vestTypes","_backpackTypes","_weaponTypes","_group","_position","_soldier"];

_soldierTypes = ["O_Pilot_F","O_crew_F","O_Soldier_lite_F","O_Soldier_F","O_officer_F"];
_uniformTypes = ["U_B_HeliPilotCoveralls"];
_vestTypes = ["V_PlateCarrier1_rgr","V_PlateCarrier2_rgr"];
_backpackTypes = ["B_Parachute"];
_weaponTypes = ["arifle_TRG20_F","LMG_Mk200_F","arifle_MXM_F","arifle_MX_GL_F"];

_group = _this select 0;
_position = _this select 1;

_soldier = _group createUnit [_soldierTypes call BIS_fnc_selectRandom, _position, [], 0, "NONE"];
_soldier addUniform (_uniformTypes call BIS_fnc_selectRandom);
_soldier addVest (_vestTypes call BIS_fnc_selectRandom);
_soldier addBackpack (_backpackTypes call BIS_fnc_selectRandom);
_soldier addItem "ItemRadio";
_soldier addItem "ItemMap";
_soldier addItem "ItemGPS";
_soldier addItem "ItemCompass";
_soldier addItem "ItemWatch";
_soldier addItem "NVGoggles";
[_soldier, _weaponTypes call BIS_fnc_selectRandom, 3] call BIS_fnc_addWeapon;

sleep 0.1; // Without this delay, headgear doesn't get removed properly

removeAllAssignedItems _soldier;
_soldier addHeadgear "H_PilotHelmetHeli_B";

_soldier spawn refillPrimaryAmmo;
_soldier call setMissionSkill;

_soldier addEventHandler ["Killed", server_playerDied];

_soldier
