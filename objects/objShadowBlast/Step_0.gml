if (isActive) {
	x+= mySpeed; 
	myFrame++;
	if (myFrame > myFrameMax) {
		myFrame = 0;	
	}
	var inst;
	inst = instance_position(x, y, objGridSpace);
	var over =  instance_position(x, y, objOverlay);
	//check if there is a grid existant at new x and y 
	if inst != noone
	{
		inst.myAlpha = 0.8;
		//handle double team overlay
		if (over == noone) {
			overlayX = inst.x;
			overlayY = inst.y; 
			var overlay = instance_create_depth(overlayX, overlayY, inst.depth-10,objOverlay);
			overlay.team = team;
			overlay.isProjectile = true; 
			overlay.projectileBound = id; 
		}
	}
}