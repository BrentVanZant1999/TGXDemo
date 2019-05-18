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
		mySpeed = 5;
		myHealth = 2; 
	}
	break; 
	case(2): 
	//wolf
	{
		oneCooldownDef = 15;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 3; 
		myHealth = 3; 
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
	}
	break;
	//golem
	case(4):
	{
		oneCooldownDef = 35;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 8;
		myHealth = 5; 
	}
	break;
	//ogre
	case(5):
	{
		oneCooldownDef = 25;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 5;
		myHealth = 3; 
	}
	break;
	//yeti
	case(6):
	{
		oneCooldownDef = 35;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 8;
		myHealth = 5; 
	}
	break;
	//mandrake
	case(7):
	{
		oneCooldownDef = 25;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 4;
		myHealth = 1; 
	}
	break;
	//rat
	case(8):
	{
		oneCooldownDef = 25;
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