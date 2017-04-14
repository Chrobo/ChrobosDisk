/*
	Author: github.com/Chrobo
*/

_player = allPlayers;
_playerCount = (count _player) -1;
while {_playerCount >= 0} do {
	_unit = _player select _playerCount;
	_playerCount = _playerCount -1;

	// Get player UID
		_uid = getPlayerUID _unit;

	// Get uniform
		_array = uniform _unit;
		profileNamespace setVariable ["CD_uniform"+_uid,_array];

	// Get vest
		_array = vest _unit;
		profileNamespace setVariable ["CD_vest"+_uid,_array];

	// Get backpack
		_array = backpack _unit;
		profileNamespace setVariable ["CD_backpack"+_uid,_array];

	// Get headgear
		_array = headgear _unit;
		profileNamespace setVariable ["CD_headgear"+_uid,_array];

	// Get goggles
		_array = goggles _unit;
		profileNamespace setVariable ["CD_goggles"+_uid,_array];

	// Get Head Mounted Display
		_array = hmd _unit;
		profileNamespace setVariable ["CD_headMountedDisplay"+_uid,_array];

	// Get binocular
		_array = binocular _unit;
		profileNamespace setVariable ["CD_binocular"+_uid,_array];

	// Get assigned items
		_array = assignedItems _unit;
		profileNamespace setVariable ["CD_assignedItems"+_uid,_array];

	// Get weapons
		_array = weaponsItems _unit;
		profileNamespace setVariable ["CD_weapons"+_uid,_array];

	// Get uniform container
		// Get magazines
		_array = getMagazineCargo uniformContainer _unit;
		profileNamespace setVariable ["CD_magazineUniform"+_uid,_array];
		// Get items
		_array = getItemCargo uniformContainer _unit;
		profileNamespace setVariable ["CD_itemUniform"+_uid,_array];
		// Get weapons
		_array = getWeaponCargo uniformContainer _unit;
		profileNamespace setVariable ["CD_weaponUniform"+_uid,_array];

	// Get vest container
		// Get magazines
		_array = getMagazineCargo vestContainer _unit;
		profileNamespace setVariable ["CD_magazineVest"+_uid,_array];
		// Get items
		_array = getItemCargo vestContainer _unit;
		profileNamespace setVariable ["CD_itemVest"+_uid,_array];
		// Get weapons
		_array = getWeaponCargo vestContainer _unit;
		profileNamespace setVariable ["CD_weaponVest"+_uid,_array];

	// Get backpack container
		// Get magazines
		_array = getMagazineCargo backpackContainer _unit;
		profileNamespace setVariable ["CD_magazineBackpack"+_uid,_array];
		// Get items
		_array = getItemCargo backpackContainer _unit;
		profileNamespace setVariable ["CD_itemBackpack"+_uid,_array];
		// Get weapons
		_array = getWeaponCargo backpackContainer _unit;
		profileNamespace setVariable ["CD_weaponBackpack"+_uid,_array];
};

// Save the variables to the persistent user profile.
saveProfileNamespace;