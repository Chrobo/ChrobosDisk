/*
	Author: github.com/Chrobo
*/

// Select triggering unit
_unit = _this select 1;																			// Get unit variable (actionmenu)
// Alternative: unit = (thisList select 0); _this = execVM "script.sqf"; 						// Get unit variable (trigger activation)
// _unit = unit;

// Clear Inventory
	removeHeadgear _unit:
	removeGoggles _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeUniform _unit;
	removeAllWeapons _unit:
	removeAllAssignedItems _unit;

// Add uniform
	_data = profileNamespace getVariable "CD_uniform";
	_unit addUniform _data;

// Add vest
	_data = profileNamespace getVariable "CD_vest";
	_unit addVest _data;

// Add backpack
	_data = profileNamespace getVariable "CD_backpack";
	_unit addBackpack _data;

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
	_array = profileNamespace getVariable "CD_AssignedItems";
	_count = (count _array) -1;
	while {_count >= 0} do {
		_data = _array select _count;
		/*if ((_data != profileNamespace getVariable "CD_binocular") or (_data != profileNamespace getVariable "CD_headMountedDisplay")) then {
		 	_unit addItem _data;
			_unit assignItem _data;
			_count = _count -1;
		};*/
		_unit addItem _data;
		_unit assignItem _data;
		_count = _count -1;
	};
	hint format ["End"]; sleep(2);
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
	}; hint format ["End 2"]; sleep(2);
	
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
	}; hint format ["End 3"]; sleep(2);

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
	};  hint format ["End 4"]; sleep(2);

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

// Add uniform container
	// Add magazines
	_array = profileNamespace getVariable "CD_MagazineUniform";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   _unit addMagazines [_data, _data_2];
	   _count = _count -1;
	 }; 
	// Add items
	_array = profileNamespace getVariable "CD_ItemUniform";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   while {_data_2 >= 0} do {
	     _unit addItemToUniform _data;
	     _data_2 = _data_2 -1;
	   };
	   _count = _count -1;
	 }; 
	// Add weapons
	_array = profileNamespace getVariable "CD_WeaponUniform";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   _unit addWeapon [_data, _data_2];
	   _count = _count -1;
	 };

// Add vest container
	// Add magazines
	_array = profileNamespace getVariable "CD_MagazineVest";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   _unit addMagazines [_data, _data_2];
	   _count = _count -1;
	 }; 
	// Add items
	_array = profileNamespace getVariable "CD_ItemVest";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   while {_data_2 >= 0} do {
	     _unit addItemToVest _data;
	     _data_2 = _data_2 -1;
	   };
	   _count = _count -1;
	 }; 
	// Add weapons
	_array = profileNamespace getVariable "CD_WeaponVest";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   _unit addWeapon [_data, _data_2];
	   _count = _count -1;
	 };

// Add backpack container
	// Add magazines
	_array = profileNamespace getVariable "CD_MagazineBackpack";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   _unit addMagazines [_data, _data_2];
	   _count = _count -1;
	 }; 
	// Add items
	_array = profileNamespace getVariable "CD_ItemBackpack";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   while {_data_2 >= 0} do {
	     _unit addItemToBackpack _data;
	     _data_2 = _data_2 -1;
	   };
	   _count = _count -1;
	 }; 
	// Add weapons
	_array = profileNamespace getVariable "CD_WeaponBackpack";
	_count = (count (_array select 0) - 1);
	while {_count >= 0} do {
	   _data = (_array select 0) select _count;
	   _data_2 = (_array select 1) select _count;
	   _unit addWeapon [_data, _data_2];
	   _count = _count -1;
	 };

// Clear "Premium Item" (MAGIC -> Has to be changed)
	_i = 12;
	while {_i > 0} do {
	  _unit removeItem "";
	  _i - 1;
	};