team = argument0;
kit = argument1; 
//is trainingPhase
var newPlayer = noone;
if (team == 1) {
	objGameData.playerOneLock = kit;
	if (objGameData.playerTwoLock != 0 ) 
	{
		instance_create_depth(x,y,0,objRoundStart); 
	}

}
else {
	objGameData.playerTwoLock = kit;
		if (objGameData.playerOneLock != 0 ) 
	{
		instance_create_depth(x,y,0,objRoundStart); 
	}
}