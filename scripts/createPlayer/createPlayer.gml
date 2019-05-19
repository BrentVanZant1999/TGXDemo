team = argument0;
kit = argument1; 
//is trainingPhase
if (team == 1) {
	var newPlayer = instance_create_depth(276,337.5,-10,objPlayer); 
	newPlayer.team = 1; 
	newPlayer.kit = kit; 
	newPlayer.isFacingRight = true;  
	objGameData.playerOne = newPlayer;
	objGameData.playerTwoTarget = newPlayer;
}
else {
	var newPlayer = instance_create_depth(684,337.5,-10,objPlayer); 
	newPlayer.team = 2; 
	newPlayer.kit = kit; 
	newPlayer.isFacingRight = false;  
	objGameData.playerTwo = newPlayer;
	objGameData.playerOneTarget = newPlayer;
}

