/*
	Author: github.com/Chrobo
*/

private["_unit","_weapons","_assignedItems","_primary","_headGear","_vest","_uniform","_backpack","_goggles","_handgun","_blacklist","_array"]; 				// Sets up multiple local variables

unit = _this select 1;																																			// Get unit variable (actionmenu)			To-Do: One solution, not two!
// Alternative: unit = (thisList select 0); _this = execVM "script.sqf"; 																						// Get unit variable (trigger activation)

_unit = unit; 																																					// Save global variable into local

_weapons = weaponsItems _unit;																																	// Get classes from unit and save it in local variable
_assignedItems = assignedItems _unit;																															// (Very dirty, has to be changed)
_primary = primaryWeapon _unit;
_headGear = headgear _unit; 
_vest = vest _unit;
_uniform = uniform _unit;
_backpack = backpack _unit;
_goggles = goggles _unit;
_handgun = handgunWeapon _unit;
if (CD_debugEnabled) then {
	hint parseText format["<t align='left'>_unit: %1,
	<br/><br/>_weapons: %2,
	<br/><br/>_assignedItems: %3,
	<br/><br/>_primary: %4,
	<br/><br/>_headGear: %5,
	<br/><br/>_vest: %6,
	<br/><br/>_uniform: %7,
	<br/><br/>_backpack: %8,
	<br/><br/>_goggles: %9,
	<br/><br/>_handgun: %10</t>",_unit,_weapons,_assignedItems,_primary,_headGear,_vest,_uniform,_backpack,_goggles,_handgun];
};

// Get stuff from containers
private["_uniformContainer","_vestContainer","_backpackContainer"];																								// Sets up multiple local variables

_uniformContainer = getItemCargo uniformContainer _unit;
_uniformContainer = _uniformContainer + getMagazineCargo uniformContainer _unit;
_uniformContainer = _uniformContainer + getWeaponCargo uniformContainer _unit;

_vestContainer = getItemCargo vestContainer _unit;
_vestContainer = _vestContainer + getMagazineCargo vestContainer _unit;
_vestContainer = _vestContainer + getWeaponCargo vestContainer _unit;

_backpackContainer = getItemCargo backpackContainer _unit;
_backpackContainer = _backpackContainer + getMagazineCargo backpackContainer _unit;
_backpackContainer = _backpackContainer + getWeaponCargo backpackContainer _unit;

if (CD_debugEnabled) then {
	hint parseText format["<t align='left'>_unit: %1,
	<br/><br/>_uniformContainer: %2,
	<br/><br/>_vestContainer: %3,
	<br/><br/>_backpackContainer: %4</t>",_unit,_uniformContainer,_vestContainer,_backpackContainer];
};

// Let's save it into users profile! (Very dirty, has to be changed)
profileNamespace setVariable ["CD_primary",_primary];
profileNamespace setVariable ["CD_handgun",_handgun];
profileNamespace setVariable ["CD_headGear",_headGear];
profileNamespace setVariable ["CD_vest",_vest];
profileNamespace setVariable ["CD_uniform",_uniform];
profileNamespace setVariable ["CD_backpack",_backpack];
profileNamespace setVariable ["CD_goggles",_goggles];
saveProfileNamespace;

// copyToClipboard XY;