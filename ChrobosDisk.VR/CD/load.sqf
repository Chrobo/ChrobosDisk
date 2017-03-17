/*
	Author: github.com/Chrobo
*/

// Select triggering unit
_unit = _this select 1;																			// Get unit variable (actionmenu)
// Alternative: _unit = (thisList select 0); _this = execVM "script.sqf"; 						// Get unit variable (trigger activation)

// Clear Inventory
	removeHeadgear _unit:
	removeGoggles _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeUniform _unit;
	removeAllWeapons _unit:
	removeAllAssignedItems _unit;

// Add uniform
	_data = profileNamespace getVariable "CD_Uniform";
	_unit addUniform _data;

// Add headgear
	_data = profileNamespace getVariable "CD_headgear";
	_unit addHeadgear _data;

// Add goggles
	_data = profileNamespace getVariable "CD_goggles";
	_unit addGoggles _data;

// Add Head Mounted Display
	_data = profileNamespace getVariable "CD_headMountedDisplay";
	_unit addWeapon _data;

// Add binocular
	_data = profileNamespace getVariable "CD_binocular";
	_unit addWeapon _data;

// Add assigned Items
	// Get 1st item
	_data = profileNamespace getVariable "CD_1stAssignedItem";
	_unit addItem _data;
	_unit assignItem _data;
	// Get 2nd item
	_data = profileNamespace getVariable "CD_2ndAssignedItem";
	_unit addItem _data;
	_unit assignItem _data;
	// Get 3rd attachment
	_data = profileNamespace getVariable "CD_3rdAssignedItem";
	_unit addItem _data;
	_unit assignItem _data;
	// Get 4th attachment
	_data = profileNamespace getVariable "CD_4thAssignedItem";
	_unit addItem _data;
	_unit assignItem _data;
	// Get 5th attachment
	_data = profileNamespace getVariable "CD_5thAssignedItem";
	_unit addItem _data;
	_unit assignItem _data;

// Add weapons

	// Add 1st weapon
	if (profileNamespace getVariable "CD_1stWeapon" != "empty") then {
			// Add magazine + count (Magazine will be added to weapon)
			_data = profileNamespace getVariable "CD_1stWeaponMagazine";
			_data_2 = profileNamespace getVariable "CD_1stWeaponMagazineCount";
			_unit addMagazine [_data, _data_2];
	// Add 1st weapon
	_data = profileNamespace getVariable "CD_1stWeapon";
	_unit addWeapon _data;
		// Add 1st attachment
		_data = profileNamespace getVariable "CD_1stWeaponAttachment1st";
		_unit addPrimaryWeaponItem _data;
		// Add 2nd attachment
		_data = profileNamespace getVariable "CD_1stWeaponAttachment2nd";
		_unit addPrimaryWeaponItem _data;
		// Add 3rd attachment
		_data = profileNamespace getVariable "CD_1stWeaponAttachment3rd";
		_unit addPrimaryWeaponItem _data;
		// Add 4th attachment
		_data = profileNamespace getVariable "CD_1stWeaponAttachment4th";
		_unit addPrimaryWeaponItem _data;
	};

	// Add 2nd weapon
	if (profileNamespace getVariable "CD_2ndWeapon" != "empty") then {
			// Add magazine + count (Magazine will be added to weapon)
			_data = profileNamespace getVariable "CD_2ndWeaponMagazine";
			_data_2 = profileNamespace getVariable "CD_2ndWeaponMagazineCount";
			_unit addMagazine [_data, _data_2];
	// Add 2nd weapon
	_data = profileNamespace getVariable "CD_2ndWeapon";
	_unit addWeapon _data;
		// Add 1st attachment
		_data = profileNamespace getVariable "CD_2ndWeaponAttachment1st";
		_unit addHandgunItem _data;
		// Add 2nd attachment
		_data = profileNamespace getVariable "CD_2ndWeaponAttachment2nd";
		_unit addHandgunItem _data;
		// Add 3rd attachment
		_data = profileNamespace getVariable "CD_2ndWeaponAttachment3rd";
		_unit addHandgunItem _data;
		// Add 4th attachment
		_data = profileNamespace getVariable "CD_2ndWeaponAttachment4th";
		_unit addHandgunItem _data;
	};

	// Add 3rd weapon
	if (profileNamespace getVariable "CD_3rdWeapon" != "empty") then {
			// Add magazine + count (Magazine will be added to weapon)
			_data = profileNamespace getVariable "CD_3rdWeaponMagazine";
			_data_2 = profileNamespace getVariable "CD_3rdWeaponMagazineCount";
			_unit addMagazine [_data, _data_2];
	// Add 3rd weapon
	_data = profileNamespace getVariable "CD_3rdWeapon";
	_unit addWeapon _data;
		// Add 1st attachment
		_data = profileNamespace getVariable "CD_3rdWeaponAttachment1st";
		_unit addHandgunItem _data;
		// Add 2nd attachment
		_data = profileNamespace getVariable "CD_3rdWeaponAttachment2nd";
		_unit addHandgunItem _data;
		// Add 3rd attachment
		_data = profileNamespace getVariable "CD_3rdWeaponAttachment3rd";
		_unit addHandgunItem _data;
		// Add 4th attachment
		_data = profileNamespace getVariable "CD_3rdWeaponAttachment4th";
		_unit addHandgunItem _data;
	};

	/*********************** Binoculars ***********************

	// Add 4th weapon
	if (profileNamespace getVariable "CD_4thWeapon" != "empty") then {
			// Add magazine + count (Magazine will be added to weapon)
			_data = profileNamespace getVariable "CD_4thWeaponMagazine";
			_data_2 = profileNamespace getVariable "CD_4thWeaponMagazineCount";
			_unit addMagazine [_data, _data_2];
	// Add 4th weapon
	_data = profileNamespace getVariable "CD_4thWeapon";
	_unit addWeapon _data;
		// Add 1st attachment
		_data = profileNamespace getVariable "CD_4thWeaponAttachment1st";
		_unit addHandgunItem _data;
		// Add 2nd attachment
		_data = profileNamespace getVariable "CD_4thWeaponAttachment2nd";
		_unit addHandgunItem _data;
		// Add 3rd attachment
		_data = profileNamespace getVariable "CD_4thWeaponAttachment3rd";
		_unit addHandgunItem _data;
		// Add 4th attachment
		_data = profileNamespace getVariable "CD_4thWeaponAttachment4th";
		_unit addHandgunItem _data;
	}; */

// Clear "Premium Item"
	_i = 10;
	while {_i > 0} do {
	  _unit removeItem "";
	  _i - 1;
	};