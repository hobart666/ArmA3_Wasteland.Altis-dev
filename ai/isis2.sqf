//Creates a group with 3 soldiers at position SP2
if (!isServer) exitwith {};

_group = [getMarkerPos "Sp2", West, ["B_soldier_AA_F", "B_soldier_AT_F", "B_Soldier_TL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_units = (units _group);

_wp1 = _group addWaypoint [getMarkerPos "wp1", 0];


_wp2 = _group addWaypoint [getMarkerPos "wp2", 0];


_wp3 = _group addWaypoint [getMarkerPos "wp3", 0];


_wp4 = _group addWaypoint [getMarkerPos "wp4", 0];

_wp5 = _group addWaypoint [getMarkerPos "wp5", 0];

//Sets the behaviour and speed of the units to "SAFE" and "LIMITED" and the waypointType to "MOVE"
{
	_x setWaypointBehaviour "COMBAT"; 
	_x setWaypointSpeed "NORMAL";
	_x setWaypointType "SAD";
	_x setWaypointBehaviour "COMBAT"; 
	_x setWaypointSpeed "NORMAL";
	_x setWaypointType "SAD";

} forEach [_wp1,_wp2,_wp3,_wp4];

{
	_x setBehaviour "COMBAT";
	_x setCombatMode "RED";
	_x setSkill ["aimingspeed", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["aimingaccuracy", 1];
	_x setSkill ["aimingshake", 1];
	_x setSkill ["spottime", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["commanding", 1];
	_x setSkill ["general", 1];
	_x addItem "ItemRadio";
	_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;
