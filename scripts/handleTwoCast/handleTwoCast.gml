//handleTwoCast(myClass,myTeam); 
//urgay
classCast = argument0;
teamCast = argument1; 
invinc = true;
alarm[3] = twoCooldownDef; 	
twoReady = false;

switch(classCast){
	//Claw
	case(1):
	{
		timing = 0;
		isIdle = false;
		canMove = false; 
		canCast = false; 
		var hasEnd = false; 
		var endX = 0;
		var endY = 0; 
		if (isFacingRight) {
			for (var j = 1; j < 5; j++) {
				if (hasEnd == false ) {
					targX = x + (j*gridWidth);
					targY = y; 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							endX = targX;
							endY = targY;
							timing = timing + 4; 
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
			for (var j = 1; j < 5; j++) {
				if (hasEnd == false ) {
					targX = x - (j*gridWidth);
					targY = y; 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							endX = targX;
							endY = targY;
							timing = timing + 4; 
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
		destSpotX = x;
		destSpotY = y;
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
		if (hasFound == true) {
		    var newWarning = instance_create_depth(targX,targY, 0, objWarning);
			newWarning.team = team; 
			newWarning.myLife = 14;
			newWarning.isProjectile = false; 
			newWarning.projectileBound = noone; 
			abilityTwoCounter = 0; 
			abilityTwoMax = 12;
			abilityTwoAnim = true;  
			invinc = true;
			alarm[6] = 14; //unlock
		}
		//urgay
		else {
			isIdle = true;
			canMove = true; 
			canCast = true; 
			abilityTwoAnim = false; 
			invinc = false;
			alarm[6] = -1;
		}
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
			isIdle = false;
			canCast = false; 
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXTwo = x+gridWidth;
			targYTwo = y+gridHeight;
			var gridInst = instance_position(targXTwo, targYTwo, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYTwo,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXTwo = x+gridWidth;
			targYThree = y-gridHeight;
			var gridInst = instance_position(targXTwo, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
						targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXTwo = x-gridWidth;
			targYTwo = y+gridHeight;
			var gridInst = instance_position(targXTwo, targYTwo, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYTwo,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXTwo = x-gridWidth;
			targYThree = y-gridHeight;
			var gridInst = instance_position(targXTwo, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXTwo = x;
			targYThree = y-gridHeight;
			var gridInst = instance_position(targXTwo, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXTwo = x;
			targYThree = y+gridHeight;
			var gridInst = instance_position(targXTwo, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			abilityTwoCounter = 0; 
			abilityTwoMax = 15;
			abilityTwoAnim = true; 
			alarm[6] = 15;
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
