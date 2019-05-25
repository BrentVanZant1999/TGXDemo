//three ability unlock
canCast = true; 
canMove = true; 
abilityAnim = false; 
isIdle = true;
invinc = false; 

basicThreat[0] = noone;
basicThreat[1] = noone;
basicThreat[2] = noone;
basicThreat[3] = noone;
basicThreat[4] = noone;
basicThreat[5] = noone;
basicThreat[6] = noone;
basicThreat[7] = noone;
basicThreat[8] = noone;

if (kit == 3) {
		if (isFacingRight) { 
			var bullet = instance_create_depth(x+16,y+gridHeight,-12,objShadeThrow); 
			bullet.mySpeed = 30;
			bullet.team = team;
			bullet.isFacingRight = true; 
			bullet.depth = depth +gridHeight;
			var bullet2 = instance_create_depth(x+16,y-gridHeight,-12,objShadeThrow); 
			bullet2.mySpeed = 30;
			bullet2.team = team;
			bullet2.isFacingRight = true; 
			bullet2.depth = depth -gridHeight;
		}
		else { 
			var bullet = instance_create_depth(x+16,y+gridHeight,-12,objShadeThrow); 
			bullet.mySpeed = -30;
			bullet.team = team; 
			bullet.isFacingRight = false; 
			bullet.depth = depth +gridHeight;
			var bullet2 = instance_create_depth(x+16,y-gridHeight,-12,objShadeThrow); 
			bullet2.mySpeed = -30;
			bullet2.team = team; 
			bullet2.isFacingRight = false; 
			bullet2.depth = depth -gridHeight;
		}
}
if (kit == 5) {
		x = destSpotX;
		y = destSpotY;
		abilityThreeAnim = false; 
		myGrid = instance_position(x,y,objGridSpace);
		if (myGrid.occupied) {
			myGrid.occupied = true;
			myGrid.occupiedTwo = true;
			myGrid.team = team;
		} else {
			myGrid.occupied = true;
			myGrid.team = team;
		}

}