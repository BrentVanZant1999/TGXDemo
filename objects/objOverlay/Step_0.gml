 var gridOn = instance_position(x,y,objGridSpace);
 gridOn.myAlpha = 0.9; 
 
 
 var playerOn = instance_position(x,y,objPlayer);
 if ( playerOn != noone ) {
	handleHit(team,playerOn);	 
 }