// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: donatorCheck.sqf
//	@file Author: LouD

private["_IsProtected","_IsAllowed"];

// player groupChat format["Starting Donator Check"]; // Debug
_IsProtected = false;
_IsAllowed = false;

{
// player groupChat format["Starting Donator Script 1"]; // Debug
	if(((player distance getMarkerPos (_x select 3)) <  (_x select 1))) then
	{	
		// player groupChat format["Starting Donator Script 2"]; // Debug
		_IsProtected = true;			
		// player groupChat format["IsProtected true"]; // Debug
		if ((getPlayerUID player) in (_x select 5)) then {				
			_IsAllowed = true;
			// player groupChat format["IsAllowed true"]; // Debug
		};
	};// else { player groupChat format["NOT IN HERE"]; }; // Debug
} forEach call Donators;

// player groupChat format["Starting Donator Check Script 3"]; // Debug

if ((_IsProtected) && !(_IsAllowed)) exitwith {	 
	hint "You are not allowed to log in at this location! Random teleporting you!";
	player groupChat format["You are not allowed to log in at this location! Random teleporting you!"];
	// player groupChat format["Starting Donator Teleport"]; // Debug
	player spawn spawnRandom;
};
//player groupChat format["Ending Donator Check"]; // Debug