/*
	Author: github.com/Chrobo
*/

// Select triggering unit
_unit = _this select 1;																			// Get unit variable (actionmenu)
// Alternative: unit = (thisList select 0); _this = execVM "script.sqf"; 						// Get unit variable (trigger activation) BUGGGGGY!!!
// _unit = unit;

// Get uniform
	_array = uniform _unit;
	profileNamespace setVariable ["CD_uniform",_array];

// Get vest
	_array = vest _unit;
	profileNamespace setVariable ["CD_vest",_array];

// Get backpack
	_array = backpack _unit;
	profileNamespace setVariable ["CD_backpack",_array];

// Get headgear
	_array = headgear _unit;
	profileNamespace setVariable ["CD_headgear",_array];

// Get goggles
	_array = goggles _unit;
	profileNamespace setVariable ["CD_goggles",_array];

// Get Head Mounted Display
	_array = hmd _unit;
	profileNamespace setVariable ["CD_headMountedDisplay",_array];

// Get binocular
	_array = binocular _unit;
	profileNamespace setVariable ["CD_binocular",_array];

// Get assigned items
	_array = assignedItems _unit;
	profileNamespace setVariable ["CD_assignedItems",_array];

// Get weapons
	_array = weaponsItems _unit;
	profileNamespace setVariable ["CD_weapons",_array];

// Get uniform container
	// Get magazines
	_array = getMagazineCargo uniformContainer _unit;
	profileNamespace setVariable ["CD_magazineUniform",_array];
	// Get items
	_array = getItemCargo uniformContainer _unit;
	profileNamespace setVariable ["CD_itemUniform",_array];
	// Get weapons
	_array = getWeaponCargo uniformContainer _unit;
	profileNamespace setVariable ["CD_weaponUniform",_array];

// Get vest container
	// Get magazines
	_array = getMagazineCargo vestContainer _unit;
	profileNamespace setVariable ["CD_magazineVest",_array];
	// Get items
	_array = getItemCargo vestContainer _unit;
	profileNamespace setVariable ["CD_itemVest",_array];
	// Get weapons
	_array = getWeaponCargo vestContainer _unit;
	profileNamespace setVariable ["CD_weaponVest",_array];

// Get backpack container
	// Get magazines
	_array = getMagazineCargo backpackContainer _unit;
	profileNamespace setVariable ["CD_magazineBackpack",_array];
	// Get items
	_array = getItemCargo backpackContainer _unit;
	profileNamespace setVariable ["CD_itemBackpack",_array];
	// Get weapons
	_array = getWeaponCargo backpackContainer _unit;
	profileNamespace setVariable ["CD_weaponBackpack",_array];