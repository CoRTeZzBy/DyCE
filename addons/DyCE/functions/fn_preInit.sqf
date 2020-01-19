/**
 * Dynamic Convoy Event (DyCE)
 * Pre-Initialization
 *
 * © 2019 TheOneWhoKnocks
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
 _hold = [] execVM "addons\DyCE\configDyCE.sqf";
if (isNil "_hold") exitWith { diag_log "[DyCE] initServer.sqf (configDyCE.sqf): ERROR "};
//waitUntil { ScriptDone _hold};


true