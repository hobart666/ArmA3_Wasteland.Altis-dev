/*
	File: fn_killfeedCompile.sqf
	Author: chasEE

	Description:
	Compiles everything globally on all clients.
*/

private ["_killed","_killedby","_killer","_amount","_time"];

_killed = _this select 0;
_killedby = _this select 1;
_killer = _this select 2;
_picture = _this select 3;
_time = killfeed_board_time;

if (count killfeed_board > 0) then {
	killfeed_board deleteAt 0
};
killfeed_board pushBack [_killer,_killedby,_killed];

if (count killfeed_picture > 0) then {
	killfeed_picture deleteAt 0
};
killfeed_picture pushBack [_picture];

[] call kill_fnc_killfeedRender;
sleep (_time);
killfeed_board deleteAt 0;
killfeed_picture deleteAt 0;
[] call kill_fnc_killfeedRender;