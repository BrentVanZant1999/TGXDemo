
	myAlpha+=myAlphaInc;
	myLife -=1;
	if (myLife == 0 ) {
		overlay = instance_create_depth(x,y,100,objOverlay);
		overlay.team = team;
		overlay.alarm[1] = projectileLife;
		overlay.isProjectile = isProjectile;
		instance_destroy();	
	}
 var gridOn = instance_position(x,y,objGridSpace);
 gridOn.myAlpha = 0.9; 