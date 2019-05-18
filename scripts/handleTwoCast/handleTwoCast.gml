//handleTwoCast(myClass,myTeam); 
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
		//TODO EDGE case where cant tele
		//Shadow Blast 
		isIdle = false;
		canMove = false; 
		canCast = false; 
		var hasFound = false; 
		if (isFacingRight) {
			for (var j = 6; j > 0; j--) {
				if (hasFound == false ) {
					targX = x + (j*gridWidth);
					targY = y; 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							destSpotX = targX;
							destSpotY = targY;
							hasFound = true;
						}
					}
				}
				
			}
		}
		else {
			for (var j = 6; j > 0; j--) {
				if (hasFound == false ) {
					targX = x - (j*gridWidth);
					targY = y; 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							destSpotX = targX;
							destSpotY = targY;
							hasFound = true;
						}
					}
				}
				
			}
		}
	    var newWarning = instance_create_depth(targX,targY, 0, objWarning);
		newWarning.team = team; 
		newWarning.myLife = 14;
		abilityTwoCounter = 0; 
		abilityTwoMax = 12;
		abilityTwoAnim = true; 
		invinc = true;
		alarm[6] = 14; //unlock
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
							destSpotX = targX;
							destSpotY = targY;
						}
					}
				}
			}
			//actual dash mechanics
		}
	}
	break;
}

alarm[3] = twoCooldownDef; 	
twoReady = false;
