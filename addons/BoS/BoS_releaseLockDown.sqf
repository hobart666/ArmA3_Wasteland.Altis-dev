//	@file Version:
//	@file Name:
//	@file Author: Cael817, edited to follow LouDs safe script
//	@file Created:

private ["_baselocker"];
_baselocker = cursorTarget;

_baselocker setVariable ["lockDown", false, true];
pvar_manualObjectSave = netId _baselocker;
publicVariableServer "pvar_manualObjectSave";

hint "Released Lock Down";