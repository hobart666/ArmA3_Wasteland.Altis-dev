/*
	File: killfeed.sqf
	Author: chasEE

	Description:
	Settings and init stuff for killfeed.
*/

killfeed_switch = 1; // 1 = ON, 0 = OFF. DEFAULT: 1
killfeed_loop_delay = 1; // Time in seconds between checks. Don't go too high. DEFAULT: 1
killfeed_sides_player = [true,true,true,true]; // Changes what sides work with killfeed for Players. [West,East,Independent,Civilian]. DEFAULT: true,true,true,true
killfeed_sides_ai = [true,true,true,true]; // Changes what sides work with killfeed for AI. [West,East,Independent,Civilian]. DEFAULT: true,true,true,true
killfeed_board_time = 6; // How many seconds one name can be on the board. DEFAULT: 6

// DO NOT TOUCH BELOW
if (killfeed_switch isEqualTo 1) then {
	killfeed_board = [];
	killfeed_picture = [];
	201 cutRsc ["killfeed_board", "PLAIN"];
	200 cutRsc ["killfeed_picture", "PLAIN"];
	[] spawn kill_fnc_killfeedMain;
};