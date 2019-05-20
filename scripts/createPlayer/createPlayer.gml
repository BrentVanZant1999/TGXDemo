team = argument0;
kit = argument1; 
//is trainingPhase
var newPlayer = noone;
if (team == 1) {
	newPlayer = instance_create_depth(276,337.5,-10,objPlayer); 
	newPlayer.team = 1; 
	newPlayer.kit = kit; 
	newPlayer.isFacingRight = true;  
	objGameData.playerOne = newPlayer;
	objGameData.playerTwoTarget = newPlayer;
}
else {
	newPlayer = instance_create_depth(684,337.5,-10,objPlayer); 
	newPlayer.team = 2; 
	newPlayer.kit = kit; 
	newPlayer.isFacingRight = false;  
	objGameData.playerTwo = newPlayer;
	objGameData.playerOneTarget = newPlayer;
}
var newBar = instance_create_depth(x,y,-100,objHealthBar);
newBar.playerObj = newPlayer;

var newName = instance_create_depth(x,y,-100,objNameBar);
newName.playerObj = newPlayer;
