/// @description set active
isActive = true; 
canMove = true; 
canCast = true;
switch(kit){
	//goblin
	case(1): 
	{		
		oneCooldownDef = 20;
		twoCooldownDef = 90; 
		threeCooldownDef = 90;
		fourCooldownDef = 600;
		mySpeed = 4;
		myHealth = 2; 
		myTiming = 6;
		baseDepth =-1004; 
	}
	break; 
	//shade
	case(3):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 90; 
		threeCooldownDef = 60;
		fourCooldownDef = 10;
		mySpeed = 8; 
		abilityMax = 7; 
		abilityTwoMax = 15;
		myHealth = 2; 
		myTiming = 8;
		baseDepth =-998; 
	}
	break;
	//ogre
	case(5):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 90; 
		threeCooldownDef = 60;
		fourCooldownDef = 180;
		mySpeed = 5;
		myHealth = 3; 
		baseDepth =-1003; 
	}
	break;
	//rat
	case(8):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 90; 
		threeCooldownDef = 150;
		fourCooldownDef =  570;
		mySpeed = 2;
		myHealth = 1; 
		baseDepth =-1005; 
	}
	break;
}
alarm[2] = oneCooldownDef;
alarm[3] = twoCooldownDef;
alarm[4] = threeCooldownDef;
alarm[1] = fourCooldownDef;
myGrid = instance_position(x,y,objGridSpace);
myGrid.occupied = true;
myGrid.team = team;