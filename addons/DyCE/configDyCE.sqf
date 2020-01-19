/////////////////////////////////////////////////////////////////////////////////
//	Dynamic Convoy Event		/////////////////////////////////////////////
// 	Created 1/17/2020						/////////////////////////////////////////////
// 	Developed by TheOneWhoKnocks		/////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/*
Version 0.9

*/
DyCE_Version = "0.9";
publicVariable "DyCE_Version";

diag_log format ["[DyCE:%1] configDyCE.sqf: Launching...",DyCE_Version];

//////////////////////////////////////////////////////////////////////////////////
// Dynamic Convoy Event Config	//////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

DyCE_monitorDelay = 5; 				// Script heartbeat delay. 
DyCE_convoyDelay = 30; 				// Delay between convoys 
DyCE_startDelay = 30;				// Delay before entire script starts, gives server time to settle
DyCE_nextConvoyStartTime = time + DyCE_startDelay;
DyCE_masterConvoyArray = [];
DyCE_nextVehicleNumber = 0;

DyCE_debug = false;
DyCE_aiModel = "O_Soldier_unarmed_F"; // The base model used for all AI//POLISHED
DyCE_aiItemCount = [3,6]; // The amount [min,max] of items that the AI will carry
DyCE_aiRanks = ["CORPORAL","SERGEANT","LIEUTENANT","CAPTAIN","MAJOR","COLONEL"]; // List of potential AI ranks
DyCE_aiSkill = [0.5,0.6,0.7,0.8,0.9]; // Random skill levels, will apply to overall "skill" 

DyCE_countBackpackVehicle = [1,3]; 	// The amount [min,max] of backpacks that the vehicle will spawn in with
DyCE_countItemVehicle = [3,6]; 		// The amount [min,max] of items that the the vehicle will spawn in with
DyCE_countWeaponVehicle = [2,4]; 	// The amount [min,max] of weapons that the vehicle will spawn in with

DyCE_maxConvoys = 2; 				// Maximum number of convoys that can spawn at once
DyCE_minPlayerOnline = 0; 			// Minimum number of players needed to be online for a convoy to spawn

DyCE_exileLoaded = "true"; // True if using with Exile
publicVariable "DyCE_exileLoaded";
publicVariableServer "DyCE_exileLoaded";

DyCE_exileRespect = 100; 			// Exile respect given for AI kill (NOT WORKING YET)
DyCE_maxConvoyIdleTime = 60; 		// The maximum number of seconds of the convoy. If it is idle on the map, it is simply removed.. */
DyCE_maxConvoyStoppedTime = 80; 	// If the convoy is in place from the beginning of the appearance, then we check whether it has moved or not. It happens on the map of the island and the point of the final path can become on the island and so that they do not stand in vain, we will clean them. */

DyCE_radiusSpawnVehicle = 100; 		// The search radius of the pavement in a given random area. Value in meters. Decreasing the value may cause an explosion */
DyCE_radiusNoPlayer = 1000; 		// The radius in meters, checking for the presence of players, if there are no players, then after the finishing point, the convoy will disappear */
DyCE_radiusHuntPlayer = 200; 		// The radius in meters, if during a shootout the player hid in what radius the convoy will look for him and will not leave until the player runs away or until he is killed :) */