//Creates a group with 3 soldiers at position SP1 _group = []execVM "isis.sqf";
if (!isServer) exitwith {};

_group = [getMarkerPos "Sp1", West, ["B_G_Soldier_F", "B_G_Soldier_F", "B_G_Soldier_TL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_units = (units _group);

_wp1 = _group addWaypoint [getMarkerPos "wp1", 0];

_wp2 = _group addWaypoint [getMarkerPos "wp2", 0];

_wp3 = _group addWaypoint [getMarkerPos "wp3", 0];

_wp4 = _group addWaypoint [getMarkerPos "wp4", 0];

_wp6 = _group addWaypoint [getMarkerPos "wp6", 0];

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
