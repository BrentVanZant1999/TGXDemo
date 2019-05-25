//handleTwoCast(myClass,myTeam); 
classCast = argument0;
teamCast = argument1; 

alarm[4] = threeCooldownDef; 	
threeReady = false;

switch(classCast){
	//Bomb
	case(1):
	{
		var bomb = instance_create_depth(x,y,depth,objBomb);
		bomb.team = team;
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
		timing = 0;
		isIdle = false;
		canMove = false; 
		canCast = false; 
		var hasEnd = false; 
		var endX = 0;
		var endY = 0; 
		if (isFacingRight) {
			for (var j = 1; j < 3; j++) {
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
			for (var j = 1; j < 3; j++) {
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
		abilityThreeCounter = 0; 
		abilityThreeMax = timing;
		abilityThreeAnim = true; 
		invinc = true;
		if (timing > 0 ) {
			alarm[5] = 4;
			alarm[7] = timing;
		}
		else {
			isIdle = true;
			canMove = true; 
			canCast = true; 
			abilityThreeAnim = false; 
			invinc = false; 	
			alarm[4] = 1; 	
		}
		
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
		if (teamCast == 1) {
			targUlt = objGameData.playerOneTarget;	
		}
		else {
			targUlt = objGameData.playerTwoTarget;		
		}
		if (targUlt.x > room_width/2) {
			xStart = room_width;	
			rightFacing = false;
		}
		else {
			xStart = 0;
			rightFacing = true;
		}
		targY = targUlt.y;
		targX = targUlt.x;
		var chosenSide = choose(0,1);
		if (chosenSide == 1) {
			var chooseLoc = instance_place(targX,targY+gridHeight,objGridSpace);
			if (chooseLoc != noone) {
				var ghostRat = instance_create_depth(xStart, targY,-500,objGhost);
				ghostRat.team = team;
				ghostRat.isFacingRight = rightFacing;
				var ghostRatTwo = instance_create_depth(xStart, targY+gridHeight,-500,objGhost);
				ghostRatTwo.team = team;
					ghostRatTwo.isFacingRight = rightFacing;
			}
			else {
				var ghostRat = instance_create_depth(xStart, targY,-500,objGhost);
				ghostRat.team = team;
					ghostRat.isFacingRight = rightFacing;
				var ghostRatTwo = instance_create_depth(xStart, targY-gridHeight,-500,objGhost);
				ghostRatTwo.team = team;
					ghostRatTwo.isFacingRight = rightFacing;
			}
		}
		else {
			var chooseLoc = instance_place(targX,targY-gridHeight,objGridSpace);
			if (chooseLoc != noone) {
				var ghostRat = instance_create_depth(xStart, targY,-500,objGhost);
				ghostRat.team = team;
					ghostRat.isFacingRight = rightFacing;
				var ghostRatTwo = instance_create_depth(xStart, targY-gridHeight,-500,objGhost);
				ghostRatTwo.team = team;
					ghostRatTwo.isFacingRight = rightFacing;
			}
			else {
				var ghostRat = instance_create_depth(xStart, targY,-500,objGhost);
				ghostRat.team = team;
					ghostRat.isFacingRight = rightFacing;
				var ghostRatTwo = instance_create_depth(xStart, targY+gridHeight,-500,objGhost);
				ghostRatTwo.team = team;
					ghostRatTwo.isFacingRight = rightFacing;
			}
		}
	}
	break;
}
