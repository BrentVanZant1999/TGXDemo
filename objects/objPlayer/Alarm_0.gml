/// @description set active
isActive = true; 
canMove = true; 
canCast = true;
switch(kit){
	//goblin
	case(1): 
	{		
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 4;
		myHealth = 2; 
		myTiming = 6;
		baseDepth =-1004; 
	}
	break; 
	case(2): 
	//wolf
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 3; 
		myHealth = 2; 
		myTiming = 6;
		baseDepth =-1003; 
	}
	break;
	//shade
	case(3):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 8; 
		abilityMax = 7; 
		abilityTwoMax = 15;
		myHealth = 2; 
		myTiming = 8;
		baseDepth =-1003; 
	}
	break;
	//golem
	case(4):
	{
		oneCooldownDef = 25;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 8;
		myHealth = 3; 
		baseDepth =-1001; 
	}
	break;
	//ogre
	case(5):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 5;
		myHealth = 3; 
		baseDepth =-1003; 
	}
	break;
	//yeti
	case(6):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 8;
		myHealth = 3; 
		baseDepth =-1001; 
	}
	break;
	//mandrake
	case(7):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 4;
		myHealth = 1; 
		baseDepth =-1005; 
	}
	break;
	//rat
	case(8):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 100;
		mySpeed = 2;
		myHealth = 1; 
		baseDepth =-999; 
	}
	break;
}

myGrid = instance_position(x,y,objGridSpace);
myGrid.occupied = true;
myGrid.team = team;