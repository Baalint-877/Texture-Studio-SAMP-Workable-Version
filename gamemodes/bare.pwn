#include <a_samp>

main()
{
	print("\n/*-----------------------------------*\\");
	print("|*=====[TS Base GameMode Loaded]=====*|");
	print("\\*-----------------------------------*/\n");
}

public OnPlayerRequestClass(playerid, classid)
{
	SetSpawnInfo(playerid, 0, 265, 1322.1832, 1564.2081, 10.8203, 300.1425, 0, 0, 0, 0, -1, -1);
	SpawnPlayer(playerid);
	return 1;
}

public OnPlayerConnect(playerid)
{
	GameTextForPlayer(playerid,"~r~T~w~exture ~r~S~w~tudio ~b~1.9~g~d",5000,5);
	SetSpawnInfo(playerid, 0, 265, 1322.1832, 1564.2081, 10.8203, 300.1425, 0, 0, 0, 0, -1, -1);
	TogglePlayerSpectating(playerid, true);
	SetTimerEx("FinishPlayerJoin", 500, false, "i", playerid);
	printf("[JOIN] Player %d connected; spawn scheduled.", playerid);
	return 1;
}

forward FinishPlayerJoin(playerid);
public FinishPlayerJoin(playerid)
{
	if(!IsPlayerConnected(playerid)) return 0;
	TogglePlayerSpectating(playerid, false);
	SpawnPlayer(playerid);
	printf("[JOIN] Player %d spawned successfully.", playerid);
	return 1;
}

public OnGameModeInit()
{
	SetGameModeText("TS 1.9d");
	UsePlayerPedAnims();

	AddPlayerClass(265,1322.1832,1564.2081,10.8203,300.1425,0,0,0,0,-1,-1);
	//AddPlayerClass(265,1958.3783,1343.1572,15.3746,270.1425,0,0,0,0,-1,-1);

	return 1;
}
