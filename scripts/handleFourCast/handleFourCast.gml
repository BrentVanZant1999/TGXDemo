//handleTwoCast(myClass,myTeam); 
classCast = argument0;
teamCast = argument1; 

alarm[1] = fourCooldownDef; 	
fourReady = false;

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
	//Shadow Rain
	case(3):
	{
		var creator = instance_create_depth(0,0,0,objRainCreator);
		creator.team = team; 
	}
	break;	
	//golem quake shards
	case(4): 
	{
		
		
	}
	break;
	//ogre teleport
	case(5): 
	{
		if (teamCast == 1) {
			targUlt = objGameData.playerOneTarget;	
		}
		else {
			targUlt = objGameData.playerTwoTarget;		
		}
		var chosenSide = choose(0,1);
		if (targUlt.x > x) {
			isFacingRight = true;	
		}
		else {
			isFacingRight = false;	
		}
		if (chosenSide == 0 ) {
			targX = targUlt.x;
			targY = targUlt.y+gridHeight; 
			var tpLoc = instance_place(targX,targY,objGridSpace);
			if ( tpLoc!= noone) {
				x = targX; 
				y = targY;
					if ( myGrid.occupiedTwo) {
						myGrid.occupiedTwo = false;
						if (team == 1 ) {
							myGrid.team = 2; 
						}
						else {
							myGrid.team = 1; 
						}
						myGrid.occupied = true; 
					} else {
						myGrid.occupied = false;	
					}

					myGrid = instance_position(x,y,objGridSpace);
					if (myGrid.occupied) {
						myGrid.occupied = true;
						myGrid.occupiedTwo = true;
						myGrid.team = team;
					} else {
						myGrid.occupied = true;
						myGrid.team = team;
					}
			}
			else {
					targY = targUlt.y+gridHeight; 
					x = targX; 
					y = targY;
					if ( myGrid.occupiedTwo) {
						myGrid.occupiedTwo = false;
						if (team == 1 ) {
							myGrid.team = 2; 
						}
						else {
							myGrid.team = 1; 
						}
						myGrid.occupied = true; 
					} else {
						myGrid.occupied = false;	
					}

					myGrid = instance_position(x,y,objGridSpace);
					if (myGrid.occupied) {
						myGrid.occupied = true;
						myGrid.occupiedTwo = true;
						myGrid.team = team;
					} else {
						myGrid.occupied = true;
						myGrid.team = team;
					}
			}
			
		}
		else {
			targX = targUlt.x;
			targY = targUlt.y-gridHeight; 
			var tpLoc = instance_place(targX,targY,objGridSpace);
			if ( tpLoc!= noone) {
				x = targX; 
				y = targY;
					if ( myGrid.occupiedTwo) {
						myGrid.occupiedTwo = false;
						if (team == 1 ) {
							myGrid.team = 2; 
						}
						else {
							myGrid.team = 1; 
						}
						myGrid.occupied = true; 
					} else {
						myGrid.occupied = false;	
					}

					myGrid = instance_position(x,y,objGridSpace);
					if (myGrid.occupied) {
						myGrid.occupied = true;
						myGrid.occupiedTwo = true;
						myGrid.team = team;
					} else {
						myGrid.occupied = true;
						myGrid.team = team;
					}
			}
			else {
					targY = targUlt.y+gridHeight; 
					x = targX; 
					y = targY;
					if ( myGrid.occupiedTwo) {
						myGrid.occupiedTwo = false;
						if (team == 1 ) {
							myGrid.team = 2; 
						}
						else {
							myGrid.team = 1; 
						}
						myGrid.occupied = true; 
					} else {
						myGrid.occupied = false;	
					}

					myGrid = instance_position(x,y,objGridSpace);
					if (myGrid.occupied) {
						myGrid.occupied = true;
						myGrid.occupiedTwo = true;
						myGrid.team = team;
					} else {
						myGrid.occupied = true;
						myGrid.team = team;
					}
			}
		}
		
		//swing
			isIdle = false;
			canCast = false; 
			canMove = false;
			abilityTwoCounter = 0; 
			abilityTwoMax = 15;
			abilityTwoAnim = true; 
			alarm[6] = 15;
			invinc = true; 
			targXOne = targX+gridWidth;
			targYOne = targY;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXTwo = targX-gridWidth;
			targYTwo = targY;
			var gridInst = instance_position(targXTwo, targYTwo, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYTwo,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXThree = targX;
			targYThree = targY;
			var gridInst = instance_position(targXThree, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXThree,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXThree = targX;
			targYThree = targY+gridHeight;
			var gridInst = instance_position(targXThree, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXThree,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
			}
			targXThree = targX;
			targYThree = targY-gridHeight;
			var gridInst = instance_position(targXThree, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXThree,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
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
