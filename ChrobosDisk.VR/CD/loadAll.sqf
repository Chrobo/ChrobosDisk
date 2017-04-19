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

	// Clear Inventory
		removeHeadgear _unit:
		removeGoggles _unit;
		removeVest _unit;
		removeBackpack _unit;
		removeUniform _unit;
		removeAllWeapons _unit:
		removeAllAssignedItems _unit;

	// Add uniform
		_data = profileNamespace getVariable "CD_uniform"+_uid;
		_unit addUniform _data;

	// Add vest
		_data = profileNamespace getVariable "CD_vest"+_uid;
		_unit addVest _data;

	// Add backpack
		_data = profileNamespace getVariable "CD_backpack"+_uid;
		_unit addBackpack _data;

	// Add headgear
		_data = profileNamespace getVariable "CD_headgear"+_uid;
		_unit addHeadgear _data;

	// Add goggles
		_data = profileNamespace getVariable "CD_goggles"+_uid;
		_unit addGoggles _data;

	// Add Head Mounted Display
		_data = profileNamespace getVariable "CD_headMountedDisplay"+_uid;
		_unit addWeapon _data;

	// Add binocular
		_data = profileNamespace getVariable "CD_binocular"+_uid;
		_unit addWeapon _data;

	// Add assigned Items
		_array = profileNamespace getVariable "CD_assignedItems"+_uid;
		_count = (count _array) -1;
		while {_count >= 0} do {
			_data = _array select _count;
			if (_data != profileNamespace getVariable "CD_binocular"+_uid) then {
			 	_unit addItem _data;
				_unit assignItem _data;
				_count = _count -1;
			}
			else {
				_count = _count -1;
			};
		};
	// Add weapons
		_array = profileNamespace getVariable "CD_weapons"+_uid;
		// How many weapons do we have?
		_count = (count _array) - 1;
		_data = (_array select _count) select 0;
		while {_count >= 0} do
			{
				_hasMag = count ((_array select _count) select 4);
				if (_hasMag > 0) then {
					_data = ((_array select _count) select 4) select 0;
					_data_2 = ((_array select _count) select 4) select 1;
					_unit addMagazine [_data, _data_2];
				};
				_data = (_array select _count) select 0;
				_unit addWeapon _data;
				_data = (_array select _count) select 1;
				_unit addPrimaryWeaponItem _data;
				_unit addHandgunItem _data; 															// THIS IS NOT THE WAY IT SHOULD BE DONE!!! (TO-DO)
				_data = (_array select _count) select 2;
				_unit addPrimaryWeaponItem _data;
				_unit addHandgunItem _data;
				_data = (_array select _count) select 3;
				_unit addPrimaryWeaponItem _data;
				_unit addHandgunItem _data;
				_data = (_array select _count) select 5;
				_unit addPrimaryWeaponItem _data;
				_unit addHandgunItem _data;
				_count = _count -1;
			};

	// Add uniform container
		// Add magazines
		_array = profileNamespace getVariable "CD_magazineUniform"+_uid;
		_count = (count (_array select 0) - 1);
		while {_count >= 0} do {
		   _data = (_array select 0) select _count;
		   _data_2 = (_array select 1) select _count;
		   _unit addMagazines [_data, _data_2];
		   _count = _count -1;
		 }; 
		// Add items
		_array = profileNamespace getVariable "CD_itemUniform"+_uid;
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
		_array = profileNamespace getVariable "CD_weaponUniform"+_uid;
		_count = (count (_array select 0) - 1);
		while {_count >= 0} do {
			_data = (_array select 0) select _count;
			_data_2 = (_array select 1) select _count;
			_unit addWeaponCargo [_data,_data_2];
			_count = _count -1;
		};

	// Add vest container
		// Add magazines
		_array = profileNamespace getVariable "CD_magazineVest"+_uid;
		_count = (count (_array select 0) - 1);
		while {_count >= 0} do {
			_data = (_array select 0) select _count;
			_data_2 = (_array select 1) select _count;
			_unit addMagazines [_data, _data_2];
			_count = _count -1;
		 }; 
		// Add items
		_array = profileNamespace getVariable "CD_itemVest"+_uid;
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
		_array = profileNamespace getVariable "CD_weaponVest"+_uid;
		_count = (count (_array select 0) - 1);
		while {_count >= 0} do {
			_data = (_array select 0) select _count;
			_data_2 = (_array select 1) select _count;
			_unit addWeaponCargo [_data,_data_2];
			_count = _count -1;
		};

	// Add backpack container
		// Add magazines
		_array = profileNamespace getVariable "CD_magazineBackpack"+_uid;
		_count = (count (_array select 0) - 1);
		while {_count >= 0} do {
		   _data = (_array select 0) select _count;
		   _data_2 = (_array select 1) select _count;
		   _unit addMagazines [_data, _data_2];
		   _count = _count -1;
		 }; 
		// Add items
		_array = profileNamespace getVariable "CD_itemBackpack"+_uid;
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
		_array = profileNamespace getVariable "CD_weaponBackpack"+_uid;
		_count = (count (_array select 0) - 1);
		while {_count >= 0} do {
			_data = (_array select 0) select _count;
			_data_2 = (_array select 1) select _count;
			_unit addWeaponCargo [_data,_data_2];
			_count = _count -1;
		};
};