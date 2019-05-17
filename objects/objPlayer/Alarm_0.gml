/// @description set active
isActive = true; 
canMove = true; 
switch(kit){
	case(1): 
	{		
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 5; 
	}
	break; 
	case(2): 
	{
		oneCooldownDef = 15;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 3; 
	}
	break;
	case(3):
	{
		oneCooldownDef = 20;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 8; 
		abilityMax = 7; 
		abilityTwoMax = 15;
	}
	break;
	case(4):
	{
		oneCooldownDef = 25;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 8; 
	}
	break;
}

myGrid = instance_position(x,y,objGridSpace);
myGrid.occupied = true;
myGrid.team = team;