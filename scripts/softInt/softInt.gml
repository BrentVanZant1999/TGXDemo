//softInt(player)
var player = argument0;

global.playerTeam = player.team;
player.alarm[9] = 11; 
player.isIdle = false; 
player.canCast = false;
player.canMove = false; 
player.isHit = true; 
instance_destroy(player.basicThreat[0]); 
instance_destroy(player.basicThreat[1]); 
instance_destroy(player.basicThreat[2]); 

player.invinc = true;
if (player.myHealth > 1 ) {
	player.myHealth -= 1;
	with (objHealthBar) {
		if (team = global.playerTeam) {
			if (myHealth > 0 ){
				myHealth--;
				hitAnimation = true;
			}
		}
	}
}
else {
	player.myHealth -= 1;
	with (objHealthBar) {
		if (team = global.playerTeam) {
			if (myHealth > 0 ){
				myHealth--;
				hitAnimation = true;
			}
		}
	}
	handleLoss(player);
}
if ( player.alarm[6] > 0 ) {
	player.alarm[6] = -1; 
	player.oneReady = true; 
	player.alarm[2] = -1;
}