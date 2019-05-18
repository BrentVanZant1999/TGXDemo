team = argument0;
kit = argument1; 
if (team == 1) {
	var newPlayer = instance_create_depth(276,337.5,-10,objPlayer); 
	newPlayer.team = 1; 
	newPlayer.kit = kit; 
	newPlayer.isFacingRight = true;  
}
else {
	var newPlayer = instance_create_depth(684,337.5,-10,objPlayer); 
	newPlayer.team = 2; 
	newPlayer.kit = kit; 
	newPlayer.isFacingRight = false;  
}