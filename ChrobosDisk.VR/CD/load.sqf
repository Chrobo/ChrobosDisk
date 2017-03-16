/*
	Author: github.com/Chrobo
*/

// Select triggering unit
unit = _this select 1;																									// Get unit variable (actionmenu)
// Alternative: unit = (thisList select 0); _this = execVM "script.sqf"; 												// Get unit variable (trigger activation)
_unit = unit; 																											// Save global variable into local

// Add weapons

	// Add 1st weapon
	_data = profileNamespace getVariable "CD_1stWeapon";
	_unit addWeapon _data;