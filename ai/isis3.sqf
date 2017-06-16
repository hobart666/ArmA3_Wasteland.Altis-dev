//Creates a group with 3 soldiers at position [6128.5,6306.5,24]
if (!isServer) exitwith {};

//_group = [[6128.5,6306.5,24], West, ["B_soldier_AA_F", "B_soldier_AT_F", "B_Soldier_TL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_group = [[6128.5,6306.5,24], West, 3,[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_units = (units _group);

_g1 = _group addWaypoint [getMarkerPos "g1", 25];

_g2 = _group addWaypoint [getMarkerPos "g2", 25];

{
	_x setWaypointBehaviour "AWARE"; 
	_x setWaypointSpeed "NORMAL";
	_x setWaypointType "MOVE";
	_x setWaypointBehaviour "AWARE"; 
	_x setWaypointSpeed "NORMAL";
	_x setWaypointType "MOVE";

} forEach [_g1,_g2];

{
	_x allowFleeing 0;
	_x setBehaviour "COMBAT";
	_x setCombatMode "RED";
	_x setSkill ["aimingspeed", 0.7];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["aimingaccuracy", 1];
	_x setSkill ["aimingshake", 0.8];
	_x setSkill ["spottime", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["commanding", 1];
	_x setSkill ["general", 1];
	_x addItem "ItemRadio";
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;
