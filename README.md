# CD: ChrobosDisk

_Loading and saving data in ArmA 3 made easy._

ChrobosDisk is a framework which allows the mission builder to save and load data on to the hosting machine. At the current state it saves and loads the inventory from players.

## Status
- [x] saves and loads inventory on hosting machine
- [ ] easier to modify and use
- [ ] fix all known bugs

## Resources (To-Do)

* [Release Notes](#)
* [Gallery](#)
* [Examples](#)
* [Wiki](#)
* [Download](#)

## Installing (To-Do)
1. Put this into your _"init.sqf"_ file:
```sqf
//Initialize ChrobosDisk (CD)
execVM "CD\initChrobosDisk.sqf";
```
2. Copy and paste the _"CD"_ folder into your mission folder.
3. In order to save all player inventories when a trigger is activated, put this into a triggers init:
```sqf
_this = execVM "CD\saveAll.sqf";
```
4. In order to load all player inventories when the mission starts, put this into the _"init.sqf"_ file:
```sqf
_this = execVM "CD\loadAll.sqf";
```

<p align="center">
	<img src="https://raw.githubusercontent.com/Chrobo/ChrobosDisk/497c4a5e534bc56090965e081f6f40308078f17d/assets/ChrobosDisk.png" width="150px" />
</p>
