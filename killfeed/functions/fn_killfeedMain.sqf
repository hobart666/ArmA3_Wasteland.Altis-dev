/*
	File: fn_killfeedMain.sqf
	Author: chasEE

	Description:
	Adds the event handlers to the AI and/or Players.
*/

private ["_killer","_killed"];

if (killfeed_switch isEqualTo 1) then {
while {true} do {
	{
	if (((killfeed_sides_player select 0) isEqualTo true) && (isPlayer _x) && ((side _x) == west) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
		if (((killfeed_sides_player select 1) isEqualTo true) && (isPlayer _x) && ((side _x) == east) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
		if (((killfeed_sides_player select 2) isEqualTo true) && (isPlayer _x) && ((side _x) == independent) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
		if (((killfeed_sides_player select 3) isEqualTo true) && (isPlayer _x) && ((side _x) == civilian) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
		if (((killfeed_sides_ai select 0) isEqualTo true) && (!isPlayer _x) && ((side _x) == west) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
		if (((killfeed_sides_ai select 1) isEqualTo true) && (!isPlayer _x) && ((side _x) == east) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
		if (((killfeed_sides_ai select 2) isEqualTo true) && (!isPlayer _x) && ((side _x) == independent) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
		if (((killfeed_sides_ai select 3) isEqualTo true) && (!isPlayer _x) && ((side _x) == civilian) && (isNil {_x getVariable "killfeedActive"})) then {
		_x addEventHandler["Killed",{
			_killed = _this select 0;
			_killer = _this select 1;
			if (_killer == _killed) exitWith {};
			if (isNull _killer) exitWith {};
			if (isNull _killed) exitWith {};
			if (vehicle _killer isKindOf "Man") then {
				_weapon = [_killer,(currentWeapon _killer)] call kill_fnc_killfeedType;
				[[_killed,(_weapon select 0),_killer,(_weapon select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				} else {
				_vehicle = [_killer,(typeOf (vehicle _killer))] call kill_fnc_killfeedType;
				[[_killed,(_vehicle select 0),_killer,(_vehicle select 1)],"kill_fnc_killfeedCompile"] call BIS_fnc_MP;
				};
			}];
		_x setVariable["killfeedActive",1];
		};
	} forEach allUnits;
	sleep killfeed_loop_delay;
	};
};