/// @description set active
isActive = true; 
canMove = true; 
switch(kit){
	case(1): 
	{
		oneVal = 1; //fire bomb 
		twoVal = 2;
		threeVal = 3; 
		
		oneCooldownDef = 30;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 5; 
	}
	break; 
	case(2): 
	{
		oneVal = 4; //knife toss  
		twoVal = 5;
		threeVal = 6; 
		
		oneCooldownDef = 30;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 3; 
	}
	break;
	case(3):
	{
		oneVal = 4; //knife toss  
		twoVal = 5;
		threeVal = 6; 
		
		oneCooldownDef = 30;
		twoCooldownDef = 120; 
		threeCooldownDef = 0;
		mySpeed = 10; 
	}
	break;
}

myGrid = instance_position(x,y,objGridSpace);
myGrid.occupied = true;