 /*
	File: fn_killfeedRender.sqf
	Author: chasEE

	Description:
	Puts the feed onto each clients screen.
*/

private ["_killer","_killedby","_killed","_renderKillFeed","_renderPicture"];

_renderKillFeed = "";
_renderPicture = "";

{
_renderKillerText = if (((_x select 0) == player) or ((_x select 0) == (vehicle player))) then {"<t color='#25DD00' font='PuristaMedium'>" + name (_x select 0) + "<t/>"} else {"<t color='#FF0000' font='PuristaMedium'>" + name (_x select 0) + "<t/>"};
_renderKilledText = if (((_x select 2) == player) or ((_x select 2) == (vehicle player))) then {"<t color='#25DD00' font='PuristaMedium'>" + name (_x select 2) + "<t/>"} else {"<t color='#FF0000' font='PuristaMedium'>" + name (_x select 2) + "<t/>"};
_renderKillFeed = _renderKillFeed + _renderKillerText + " <t color='#FFFFFF'>[" + (_x select 1) + "]<t/> " + _renderKilledText + "<br/>";
} forEach killfeed_board;

(uiNamespace getVariable ["killfeed_board", displayNull] displayCtrl 0) ctrlSetStructuredText (parseText _renderKillFeed);

{
_renderPicture = _x select 0;
} forEach killfeed_picture;

(uiNamespace getVariable ["killfeed_picture", displayNull] displayCtrl 1) ctrlSetText (_renderPicture);
