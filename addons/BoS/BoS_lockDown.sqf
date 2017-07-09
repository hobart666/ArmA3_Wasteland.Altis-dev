//	@file Version:
//	@file Name:
//	@file Author: Cael817, edited to follow LouDs safe script
//	@file Created:

private ["_baselocker"];
_baselocker = cursorTarget;

_baselocker setVariable ["lockDown", true, true];
pvar_manualObjectSave = netId _baselocker;
publicVariableServer "pvar_manualObjectSave";

hint "Base is now under Lock Down";