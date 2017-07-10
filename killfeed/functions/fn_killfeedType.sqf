/*
	File: fn_killfeedType.sqf
	Author: chasEE

	Description:
	Finds what killed you.
*/

private ["_killer"];

_killer = _this select 0;

if (vehicle _killer isKindOf "Man") then {
	_output = [];
	_weapon = _this select 1;
	_config = (configFile >> "CfgWeapons" >> _weapon);
    _displayName = if (isText(_config >> "displayName")) then {getText(_config >> "displayName")};
    _displayPicture = if (isText(_config >> "picture")) then {getText(_config >> "picture")};
	_output = [_displayName,_displayPicture];
	_output;
} else {
	_output = [];
	_vehicle = _this select 1;
	_config  = (configFile >>  "CfgVehicles" >>  _vehicle);
	_displayName = if (isText(_config >> "displayName")) then {getText(_config >> "displayName")};
	_displayPicture = if (isText(_config >> "picture")) then {getText(_config >> "picture")};
	_output = [_displayName,_displayPicture];
	_output;
};