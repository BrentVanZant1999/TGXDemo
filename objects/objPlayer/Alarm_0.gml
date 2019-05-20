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
		threeCooldownDef = 0;
		mySpeed = 4;
		myHealth = 2; 
		myTiming = 6;
	}
	break; 
	case(2): 
	//wolf
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 3; 
		myHealth = 2; 
		myTiming = 6;
	}
	break;
	//shade
	case(3):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 8; 
		abilityMax = 7; 
		abilityTwoMax = 15;
		myHealth = 2; 
		myTiming = 8;
	}
	break;
	//golem
	case(4):
	{
		oneCooldownDef = 25;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 8;
		myHealth = 3; 
	}
	break;
	//ogre
	case(5):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 5;
		myHealth = 3; 
	}
	break;
	//yeti
	case(6):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 8;
		myHealth = 3; 
	}
	break;
	//mandrake
	case(7):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 4;
		myHealth = 1; 
	}
	break;
	//rat
	case(8):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 2;
		myHealth = 1; 
	}
	break;
}

myGrid = instance_position(x,y,objGridSpace);
myGrid.occupied = true;
myGrid.team = team;