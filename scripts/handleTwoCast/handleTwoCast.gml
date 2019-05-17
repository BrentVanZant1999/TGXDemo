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
}

alarm[3] = twoCooldownDef; 	
twoReady = false;
