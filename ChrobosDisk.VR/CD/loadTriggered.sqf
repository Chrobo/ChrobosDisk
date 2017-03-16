/*
	Author: github.com/Chrobo
*/

private["_unit","_primary","_headGear","_vest","_uniform","_backpack","_goggles","_handgun"]; 																	// Sets up multiple local variables

// unit = _this select 1;																																		// Get unit variable (actionmenu)			To-Do: One solution, not two!
// Alternative: unit = (thisList select 0); _this = execVM "script.sqf"; 																						// Get unit variable (trigger activation)

_unit = unit; 																																					// Save global variable into local

// Let's load data from users profile! (Very dirty, has to be changed)
_primary = profileNamespace getVariable "CD_primary";
_handgun = profileNamespace getVariable "CD_handgun";
_headGear = profileNamespace getVariable "CD_headGear";
_vest = profileNamespace getVariable "CD_vest";
_uniform = profileNamespace getVariable "CD_uniform";
_backpack = profileNamespace getVariable "CD_backpack";
_goggles = profileNamespace getVariable "CD_goggles";

if (CD_debugEnabled) then {
	hint parseText format["<t align='left'>_unit: %1,
	<br/><br/>_primary: %2,
	<br/><br/>_handgun: %3,
	<br/><br/>_headGear: %4,
	<br/><br/>_vest: %5,
	<br/><br/>_uniform: %6,
	<br/><br/>_backpack: %7,
	<br/><br/>_goggles: %8</t>",_unit,_primary,_handgun,_headGear,_vest,_uniform,_backpack,_goggles];
};

// Add items to _unit
_unit addWeapon _primary;
_unit addWeapon _handgun;
_unit addHeadgear _headGear;
_unit addVest _vest;
_unit addUniform _uniform;
_unit addBackpack _backpack;
_unit addGoggles _goggles;

// Missing: Assigned Items, Mags and much more!

// copyToClipboard XY;