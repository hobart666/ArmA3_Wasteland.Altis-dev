//Creates a group with 3 soldiers at position SP1
if (!isServer) exitwith {};

_group = [getMarkerPos "Sp1", West, ["B_G_Soldier_F", "B_G_Soldier_F", "B_G_Soldier_TL_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
//_veh = "B_G_Offroad_01_armed_F" createVehicle getMarkerPos "jpsp";
//_group addVehicle _veh;
/*_units = (units _group);
(_units select 0) assignAsDriver _veh;
(_units select 0) moveInDriver _veh;

(_units select 1) assignAsGunner _veh;
(_units select 1) moveInGunner _veh;

(_units select 2) assignAsCargo _veh;
(_units select 2) moveInCargo _veh;*/

//creates the first waypoint at position marker1
_wp1 = _group addWaypoint [getMarkerPos "wp1", 0];


//creates the second waypoint at position marker2
_wp2 = _group addWaypoint [getMarkerPos "wp2", 0];


//creates the third waypoint at position marker3
_wp3 = _group addWaypoint [getMarkerPos "wp3", 0];


//creates the fouth waypoint at position marker4
_wp4 = _group addWaypoint [getMarkerPos "wp4", 0];

//creates the fouth waypoint at position marker4
_wp6 = _group addWaypoint [getMarkerPos "wp6", 0];

//Sets the behaviour and speed of the units to "SAFE" and "LIMITED" and the waypointType to "MOVE"
{
   _x setWaypointBehaviour "COMBAT"; 
_x setWaypointSpeed "NORMAL";
_x setWaypointType "GetInNearest";
_x setWaypointBehaviour "COMBAT"; 
_x setWaypointSpeed "NORMAL";
_x setWaypointType "MOVE";

} forEach [_wp1,_wp2,_wp3,_wp4]