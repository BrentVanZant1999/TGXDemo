//handleOneCast(myClass,myTeam); 
classCast = argument0;
teamCast = argument1; 
switch(classCast){
	//Claw
	case(1):
	{
	
	}
	break;	
	//Swing
	case(2):
	{
	}
	break;	
	//Shadow Blase
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
