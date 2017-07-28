//Creates a group with 3 soldiers at position SP1
if (!isServer) exitwith {};

_group = [getMarkerPos "Ca4", West, ["B_diver_TL_F", "B_diver_exp_F", "B_diver_exp_F", "B_diver_exp_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_veh = createVehicle ["B_Boat_Armed_01_minigun_F", getMarkerPos "Ca4", [], 0, "NONE"];
_group addVehicle _veh;
_units = (units _group);
(_units select 0) assignAsDriver _veh;
(_units select 0) moveInDriver _veh;

(_units select 1) assignAsGunner _veh;
(_units select 1) moveInGunner _veh;

(_units select 2) assignAsGunner _veh;
(_units select 2) moveInGunner _veh;

(_units select 3) assignAsCargo _veh;
(_units select 3) moveInCargo _veh;

//creates the first waypoint at position marker1
_Ca5 = _group addWaypoint [getMarkerPos "Ca5", 0];


//creates the second waypoint at position marker2
_Ca6 = _group addWaypoint [getMarkerPos "Ca6", 0];


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
	_x setWaypointType "CYCLE";
	_x setWaypointBehaviour "COMBAT"; 
	_x setWaypointSpeed "NORMAL";
	_x setWaypointType "SAD";
	//_x setWaypointLoiterRadius 1000;
  // _x setWaypointLoiterType "CIRCLE_L";

} forEach [_Ca5,_Ca6];

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