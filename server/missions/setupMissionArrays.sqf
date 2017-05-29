// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupMissionArrays.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

MainMissions =
[
	// Mission filename, weight
	//["mission_ArmedDiversquad", 0.3],
	["mission_Coastal_Convoy", 1],
	["mission_Convoy", 1],
	//["mission_Hackers", 0.5],
	["mission_HostileHeliFormation", 1],
	["mission_HostileJetFormation", 1],
	//["mission_APC", 1],
	//["mission_MBT", 1],
	["mission_LightArmVeh", 0.2],
	["mission_ArmedHeli", 0.2],
	["mission_AbandonedJet", 0.2]
	//["mission_Artillary", 0.3],
	//["mission_CivHeli", 0.5]
];

SideMissions =
[
	["mission_HostileHelicopter", 0.8],
	["mission_ISIS", 0.5],
	["mission_MiniConvoy", 0.5],
	//["mission_SunkenSupplies", 1],
	["mission_TownInvasion", 0.5],
	//["mission_AirWreck", 1],
	["mission_WepCache", 0.5],
	["mission_Outpost", 0.8],
	["mission_Truck", 0.4],
	["mission_Roadblock", 0.5],
	["mission_HostileJet", 0.5],
	//["mission_Sniper", 0.5],
	["mission_Smugglers", 0.7],
	["mission_HostageRescue", 0.5],
	["mission_drugsRunners", 0.5]
];

MoneyMissions =
[
	["mission_MoneyShipment", 1],
	["mission_SunkenTreasure", 1],
//	["mission_militaryPatrol", 1],
	["mission_altisPatrol", 1]
];

MissionSpawnMarkers = (allMapMarkers select {["Mission_", _x] call fn_startsWith}) apply {[_x, false]};
ForestMissionMarkers = (allMapMarkers select {["ForestMission_", _x] call fn_startsWith}) apply {[_x, false]};
RoadblockMissionMarkers = (allMapMarkers select {["RoadBlock_", _x] call fn_startsWith}) apply {[_x, false]};
SniperMissionMarkers = (allMapMarkers select {["Sniper_", _x] call fn_startsWith}) apply {[_x, false]};
SunkenMissionMarkers = (allMapMarkers select {["SunkenMission_", _x] call fn_startsWith}) apply {[_x, false]};

if !(ForestMissionMarkers isEqualTo []) then
{
	SideMissions append
	[
		["mission_AirWreck", 3],
		["mission_WepCache", 3]
	];
};

LandConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\landConvoysList.sqf") apply {[_x, false]};
CoastalConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\coastalConvoysList.sqf") apply {[_x, false]};

MainMissions = [MainMissions, [["A3W_heliPatrolMissions", ["mission_Coastal_Convoy", "mission_HostileHeliFormation", "mission_HostileJetFormation"]], ["A3W_underWaterMissions", ["mission_ArmedDiversquad"]]]] call removeDisabledMissions;
SideMissions = [SideMissions, [["A3W_heliPatrolMissions", ["mission_HostileHelicopter", "mission_HostileJet"]], ["A3W_underWaterMissions", ["mission_SunkenSupplies"]]]] call removeDisabledMissions;
MoneyMissions = [MoneyMissions, [["A3W_underWaterMissions", ["mission_SunkenTreasure"]]]] call removeDisabledMissions;

{ _x set [2, false] } forEach MainMissions;
{ _x set [2, false] } forEach SideMissions;
{ _x set [2, false] } forEach MoneyMissions;
