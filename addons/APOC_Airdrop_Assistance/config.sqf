//Configuration for Airdrop Assistance
//Author: Apoc

APOC_AA_coolDownTime = 600; //Expressed in sec

APOC_AA_VehOptions =
[//["Menu Text","ItemClassname",Price,"Drop Type"]
	["Rescue Boat", "C_Rubberboat", 5500, "vehicle"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 6000, "vehicle"],
	["Quadbike", "C_Quadbike_01_F", 5600, "vehicle"],
	["Strider", "I_MRAP_03_F", 15000, "vehicle"],
	["Strider HMG","I_MRAP_03_hmg_F",35000,"vehicle"],
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 20000, "vehicle"],
	          ////////savable vehicles/////////
	["HEMTT Resupply","B_Truck_01_ammo_F",30000,"vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 45500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 60000, "vehicle"],
	["ZSU-39 Tigris AA","O_APC_Tracked_02_AA_F",145000,"vehicle"],
	["T-100 Varsuk","O_MBT_02_cannon_F",175000,"vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 160000, "vehicle"]
];

APOC_AA_SupOptions =
[//["Menu Text","ItemClassname",Price,"Drop Type"]
	["Launchers","mission_USLaunchers",35000,"supply"],
	["Assault Rifle","mission_USSpecial",35000,"supply"],
	["Sniper Rifles","airdrop_Snipers",50000,"supply"],
	["DLC Rifles","airdrop_DLC_Rifles",45000,"supply"],
	["DLC LMGs","airdrop_DLC_LMGs",45000,"supply"],
	["Apex weapons cache","apex_bounty",46000,"supply"]
];