//handleHit(teamFrom,objPlayer)
var teamInc = argument0;
var player = argument1; 

if (teamInc == player.team) {
	// do nothing 	
}
else  {
	if (player.invinc == false) {
		if ( isProjectile) {
			player.isHit = true; 
			softInt(player);
			instance_destroy(projectileBound);
		}
		else {
			player.isHit = true; 
			softInt(player);
		} 
		
	}
}