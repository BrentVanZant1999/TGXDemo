//handleOneCast(myClass,myTeam); 
classCast = argument0;
teamCast = argument1; 
switch(classCast){
	//FIRE BOMB
	case(1):
	{
		movePlayer(1,1);
		//instance_create_depth(x,y,-4,objFireBomb); 
	}
	break;	
	case(2):
	{
		movePlayer(1,1);
		//instance_create_depth(x,y,-4,objFireBomb); 
	}
	break;	
	case(3):
	{
		//Shadow Blast 
		isIdle = false;
		alarm[7] = 6; //actual ball spawn
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 7;
		abilityAnim = true; 
		alarm[8] = 7; //unlock 
		canCast = false; 
		
	}
	break;	
}
alarm[2] = oneCooldownDef; 	
oneReady = false; 
