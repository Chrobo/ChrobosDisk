/*
	Author: github.com/Chrobo
*/

// Select triggering unit
_unit = _this select 1;																			// Get unit variable (actionmenu)
// Alternative: _unit = (thisList select 0); _this = execVM "script.sqf"; 						// Get unit variable (trigger activation)

// Get weapons
_array = weaponsItems _unit;

	// Get 1st weapon
	// Check for count of weapons
	_count =  count _array;
	if (_count > 0) then {
		_result = (_array select 0) select 0;
		profileNamespace setVariable ["CD_1stWeapon",_result];
			// Get 1st attachment
			_result = (_array select 0) select 1;
			profileNamespace setVariable ["CD_1stWeaponAttachment1st",_result];
			// Get 2nd attachment
			_result = (_array select 0) select 2;
			profileNamespace setVariable ["CD_1stWeaponAttachment2nd",_result];
			// Get 3nd attachment
			_result = (_array select 0) select 3;
			profileNamespace setVariable ["CD_1stWeaponAttachment3rd",_result];
				// Check for magazine
				_count =  count ((_array select 0) select 4);
				// Get magazine
				if (_count > 0) then {
					_result = ((_array select 0) select 4) select 0;
					profileNamespace setVariable ["CD_1stWeaponMagazine",_result];
					// Get magazine count
					_result = ((_array select 0) select 4) select 1;
					profileNamespace setVariable ["CD_1stWeaponMagazineCount",_result];
				}
				else { // Empty values
					profileNamespace setVariable ["CD_1stWeaponMagazine",""];
					profileNamespace setVariable ["CD_1stWeaponMagazineCount",0];
				};
			// Get 4th attachment
			_result = (_array select 0) select 5;
			profileNamespace setVariable ["CD_1stWeaponAttachment4th",_result];
	}
	else { // Empty values
		profileNamespace setVariable ["CD_1stWeapon","empty"];
		profileNamespace setVariable ["CD_1stWeaponAttachment1st",""];
		profileNamespace setVariable ["CD_1stWeaponAttachment2nd",""];
		profileNamespace setVariable ["CD_1stWeaponAttachment3rd",""];
		profileNamespace setVariable ["CD_1stWeaponMagazine",""];
		profileNamespace setVariable ["CD_1stWeaponMagazineCount",0];
		profileNamespace setVariable ["CD_1stWeaponAttachment4th",""];
	};

	// Get 2nd weapon
	// Check for count of weapons
	_count =  count _array;
	if (_count > 1) then {
		_result = (_array select 1) select 0;
		profileNamespace setVariable ["CD_2ndWeapon",_result];
			// Get 1st attachment
			_result = (_array select 1) select 1;
			profileNamespace setVariable ["CD_2ndWeaponAttachment1st",_result];
			// Get 2nd attachment
			_result = (_array select 1) select 2;
			profileNamespace setVariable ["CD_2ndWeaponAttachment2nd",_result];
			// Get 3nd attachment
			_result = (_array select 1) select 3;
			profileNamespace setVariable ["CD_2ndWeaponAttachment3rd",_result];
				// Check for magazine
				_count =  count ((_array select 1) select 4);
				// Get magazine
				if (_count > 0) then {
					_result = ((_array select 1) select 4) select 0;
					profileNamespace setVariable ["CD_2ndWeaponMagazine",_result];
					// Get magazine
					_result = ((_array select 1) select 4) select 1;
					profileNamespace setVariable ["CD_2ndWeaponMagazineCount",_result];
				}
				else { // Empty values
					profileNamespace setVariable ["CD_2ndWeaponMagazine",""];
					profileNamespace setVariable ["CD_2ndWeaponMagazineCount",0];
				};
			// Get 4th attachment
			_result = (_array select 1) select 5;
			profileNamespace setVariable ["CD_2ndWeaponAttachment4th",_result];
	}
	else { // Empty values
		profileNamespace setVariable ["CD_2ndWeapon","empty"];
		profileNamespace setVariable ["CD_2ndWeaponAttachment1st",""];
		profileNamespace setVariable ["CD_2ndWeaponAttachment2nd",""];
		profileNamespace setVariable ["CD_2ndWeaponAttachment3rd",""];
		profileNamespace setVariable ["CD_2ndWeaponMagazine",""];
		profileNamespace setVariable ["CD_2ndWeaponMagazineCount",0];
		profileNamespace setVariable ["CD_2ndWeaponAttachment4th",""];
	};

	// Get 3rd weapon
	// Check for count of weapons
	_count =  count _array;
	if (_count > 2) then {
		_result = (_array select 2) select 0;
		profileNamespace setVariable ["CD_3rdWeapon",_result];
			// Get 1st attachment
			_result = (_array select 2) select 1;
			profileNamespace setVariable ["CD_3rdWeaponAttachment1st",_result];
			// Get 2nd attachment
			_result = (_array select 2) select 2;
			profileNamespace setVariable ["CD_3rdWeaponAttachment2nd",_result];
			// Get 3nd attachment
			_result = (_array select 2) select 3;
			profileNamespace setVariable ["CD_3rdWeaponAttachment3rd",_result];
				// Check for magazine
				_count =  count ((_array select 2) select 4);
				// Get magazine
				if (_count > 0) then {
					_result = ((_array select 2) select 4) select 0;
					profileNamespace setVariable ["CD_3rdWeaponMagazine",_result];
					// Get magazine
					_result = ((_array select 2) select 4) select 1;
					profileNamespace setVariable ["CD_3rdWeaponMagazineCount",_result];
				}
				else { // Empty values
					profileNamespace setVariable ["CD_3rdWeaponMagazine",""];
					profileNamespace setVariable ["CD_3rdWeaponMagazineCount",0];
				};
			// Get 4th attachment
			_result = (_array select 2) select 5;
			profileNamespace setVariable ["CD_3rdWeaponAttachment4th",_result];
	}
	else { // Empty values
		profileNamespace setVariable ["CD_3rdWeapon","empty"];
		profileNamespace setVariable ["CD_3rdWeaponAttachment1st",""];
		profileNamespace setVariable ["CD_3rdWeaponAttachment2nd",""];
		profileNamespace setVariable ["CD_3rdWeaponAttachment3rd",""];
		profileNamespace setVariable ["CD_3rdWeaponMagazine",""];
		profileNamespace setVariable ["CD_3rdWeaponMagazineCount",0];
		profileNamespace setVariable ["CD_3rdWeaponAttachment4th",""];
	};

	// Get 4th weapon
	// Check for count of weapons
	_count =  count _array;
	if (_count > 3) then {
		_result = (_array select 3) select 0;
		profileNamespace setVariable ["CD_4thWeapon",_result];
			// Get 1st attachment
			_result = (_array select 3) select 1;
			profileNamespace setVariable ["CD_4thWeaponAttachment1st",_result];
			// Get 2nd attachment
			_result = (_array select 3) select 2;
			profileNamespace setVariable ["CD_4thWeaponAttachment2nd",_result];
			// Get 3nd attachment
			_result = (_array select 3) select 3;
			profileNamespace setVariable ["CD_4thWeaponAttachment3rd",_result];
				// Check for magazine
				_count =  count ((_array select 3) select 4);
				// Get magazine
				if (_count > 0) then {
					_result = ((_array select 3) select 4) select 0;
					profileNamespace setVariable ["CD_4thWeaponMagazine",_result];
					// Get magazine
					_result = ((_array select 3) select 4) select 1;
					profileNamespace setVariable ["CD_4thWeaponMagazineCount",_result];
				}
				else { // Empty values
					profileNamespace setVariable ["CD_4thWeaponMagazine",""];
					profileNamespace setVariable ["CD_4thWeaponMagazineCount",0];
				};
			// Get 4th attachment
			_result = (_array select 3) select 5;
			profileNamespace setVariable ["CD_4thWeaponAttachment4th",_result];
	}
	else { // Empty values
		profileNamespace setVariable ["CD_4thWeapon","empty"];
		profileNamespace setVariable ["CD_4thWeaponAttachment1st",""];
		profileNamespace setVariable ["CD_4thWeaponAttachment2nd",""];
		profileNamespace setVariable ["CD_4thWeaponAttachment3rd",""];
		profileNamespace setVariable ["CD_4thWeaponMagazine",""];
		profileNamespace setVariable ["CD_4thWeaponMagazineCount",0];
		profileNamespace setVariable ["CD_4thWeaponAttachment4th",""];
	};