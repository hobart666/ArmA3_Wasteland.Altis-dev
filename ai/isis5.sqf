//Creates a group with 3 soldiers at position [6128.5,6306.5,24]
if (!isServer) exitwith {};

_group = [[6363,6168,-3], West, ["B_diver_exp_F", "B_diver_exp_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_units = (units _group);

/*_d1 = _group addWaypoint [getMarkerPos "d1", 25];

_d2 = _group addWaypoint [getMarkerPos "d2", 25];

{
	_x setWaypointBehaviour "COMBAT"; 
	_x setWaypointSpeed "NORMAL";
	_x setWaypointType "MOVE";
	_x setWaypointBehaviour "COMBAT"; 
	_x setWaypointSpeed "NORMAL";
	_x setWaypointType "MOVE";

} forEach [_d1,_d2];*/

{
	_x allowFleeing 0;
	_x setBehaviour "COMBAT";
	_x setCombatMode "RED";
	_x setSkill ["aimingspeed", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["aimingaccuracy", 1];
	_x setSkill ["aimingshake", 0];
	_x setSkill ["spottime", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["commanding", 1];
	_x setSkill ["general", 1];
	_x addItem "ItemRadio";
	//_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;
