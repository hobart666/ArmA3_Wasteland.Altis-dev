//Creates a group with 3 soldiers at position SP1
if (!isServer) exitwith {};

_group = [getMarkerPos "Ca1", West, ["B_Helipilot_F", "B_Helipilot_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_veh = createVehicle ["B_Heli_Attack_01_F", getMarkerPos "Ca1", [], 0, "FLY"];
_group addVehicle _veh;
_units = (units _group);
(_units select 0) assignAsDriver _veh;
(_units select 0) moveInDriver _veh;

(_units select 1) assignAsGunner _veh;
(_units select 1) moveInGunner _veh;

//(_units select 2) assignAsCargo _veh;
//(_units select 2) moveInCargo _veh;

//creates the first waypoint at position marker1
_Ca2 = _group addWaypoint [getMarkerPos "Ca2", 0];


//creates the second waypoint at position marker2
_Ca3 = _group addWaypoint [getMarkerPos "Ca3", 0];


//creates the third waypoint at position marker3
/*_wp3 = _group addWaypoint [getMarkerPos "wp3", 0];


//creates the fouth waypoint at position marker4
_wp4 = _group addWaypoint [getMarkerPos "wp4", 0];

//creates the fouth waypoint at position marker4
_wp5 = _group addWaypoint [getMarkerPos "wp5", 0];*/

//Sets the behaviour and speed of the units to "SAFE" and "LIMITED" and the waypointType to "MOVE"
{
   _x setWaypointBehaviour "COMBAT"; 
_x setWaypointSpeed "NORMAL";
_x setWaypointType "SAD";
_x setWaypointBehaviour "COMBAT"; 
_x setWaypointSpeed "LIMITED";
_x setWaypointType "SAD";
//_x setWaypointLoiterType "CIRCLE_L";

} forEach [_Ca2,_Ca3];

{
	//_x setBehaviour "COMBAT";
	//_x setCombatMode "RED";
	_x setSkill ["aimingspeed", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["aimingaccuracy", 1];
	_x setSkill ["aimingshake", 1];
	_x setSkill ["spottime", 1];
	_x setSkill ["spotdistance", 1];
	_x setSkill ["commanding", 1];
	_x setSkill ["general", 1];
	_x addItem "ItemRadio";
	//_x addEventHandler ["Killed", server_playerDied];
} forEach units _group;