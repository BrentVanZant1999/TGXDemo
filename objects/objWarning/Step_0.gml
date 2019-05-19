
	myAlpha+=myAlphaInc;
	myLife -=1;
	if (myLife == 0 ) {
		instance_destroy();	
	}
 var gridOn = instance_position(x,y,objGridSpace);
 gridOn.myAlpha = 0.9; 