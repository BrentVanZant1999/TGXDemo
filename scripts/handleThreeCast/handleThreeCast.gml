//handleTwoCast(myClass,myTeam); 
classCast = argument0;
teamCast = argument1; 

alarm[4] = threeCooldownDef; 	
threeReady = false;

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
		//Shade Blast 
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 7;
		abilityAnim = true; 
		alarm[7] = 7; //unlock 
		canCast = false; 
	}
	break;	
	//golem quake shards
	case(4): 
	{
		
		
	}
	break;
	//ogre whirlwind
	case(5): 
	{
		
		
	}
	break;
	//yeti poundnd
	case(6): 
	{
		
		
	}
	break;
	//mandrake ground form
	case(7): 
	{
		
		
	}
	break;
	//ogre rat dash
	case(8): 
	{
		timing = 0;
		isIdle = false;
		canMove = false; 
		canCast = false; 
		var hasEnd = false; 
		var endX = 0;
		var endY = 0; 
		if (isFacingRight) {
			for (var j = 1; j < 4; j++) {
				if (hasEnd == false ) {
					targX = x + (j*gridWidth);
					targY = y; 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							endX = targX;
							endY = targY;
							timing = timing + 4; 
							newWarning = instance_create_depth(targX,targY,0,objWarning);
							newWarning.myLife = timing;
							newWarning.projectileLife = 4;
							newWarning.team = team;
						}
						else {
							hasEnd = true; 
							j =4; 	
						}
					}
				}
			}	
		}
		else {
			for (var j = 1; j < 4; j++) {
				if (hasEnd == false ) {
					targX = x - (j*gridWidth);
					targY = y; 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							endX = targX;
							endY = targY;
							timing = timing + 4; 
							newWarning = instance_create_depth(targX,targY,0,objWarning);
							newWarning.myLife = timing;
							newWarning.projectileLife = 4;
							newWarning.team = team;
						}
						else {
							hasEnd = true; 
							j =4; 	
						}
					}
				}
			}	
		}
		destSpotX = endX;
		destSpotY = endY;
		abilityTwoCounter = 0; 
		abilityTwoMax = timing;
		abilityTwoAnim = true; 
		invinc = true;
		if (timing > 0 ) {
			alarm[5] = 4;
			alarm[6] = timing;
		}
		else {
			isIdle = true;
			canMove = true; 
			canCast = true; 
			abilityTwoAnim = false; 
			invinc = false; 	
			alarm[3] = 1; 	
		}
	}
	break;
}
