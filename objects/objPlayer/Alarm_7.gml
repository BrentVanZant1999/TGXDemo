switch (kit){
	case(1):
	{
		if (isFacingRight) { 
			var slashWolf = instance_create_depth(x+gridWidth,y,0,objWolfSlash); 
			slashWolf.myDamage = 10;
			slashWolf.team = team;
			slashWolf.isFacingRight = true; 
		}
		else {
			var slashWolf = instance_create_depth(x-gridWidth,y,0,objWolfSlash); 
			slashWolf.myDamage = 10;
			slashWolf.team = team;
			slashWolf.isFacingRight = false; 
		}
		
	}
	case(3):
	{
		if (isFacingRight) { 
			var bullet = instance_create_depth(x+16,y,-12,objShadowBlast); 
			bullet.mySpeed = 24;
			bullet.myDamage = 10;
			bullet.team = team;
			bullet.isFacingRight = true; 
		}
		else { 
			var bullet = instance_create_depth(x-16,y,-12,objShadowBlast); 
			bullet.mySpeed = -24;
			bullet.myDamage = 10; 
			bullet.team = team; 
			bullet.isFacingRight = false; 
		}
	}
	break;
}