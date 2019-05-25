//basic ability unlock
canCast = true; 
canMove = true; 
abilityAnim = false; 
isIdle = true;

basicThreat[0] = noone;
basicThreat[1] = noone;
basicThreat[2] = noone;

if (kit == 3) {
		if (isFacingRight) { 
			var bullet = instance_create_depth(x+16,y,depth,objShadowBlast); 
			bullet.mySpeed = 24;
			bullet.team = team;
			bullet.isFacingRight = true; 
		}
		else { 
			var bullet = instance_create_depth(x-16,y,depth,objShadowBlast); 
			bullet.mySpeed = -24;
			bullet.team = team; 
			bullet.isFacingRight = false; 
		}
}