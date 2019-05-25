//handleTwoCast(myClass,myTeam); 
classCast = argument0;
teamCast = argument1; 

alarm[1] = fourCooldownDef; 	
fourReady = false;

switch(classCast){
	//Claw
	case(1):
	{
		var hasEnd = false;
		for (var j = 1; j < 4; j++) {
				if (hasEnd == false ) {
					targX = x + (j*gridWidth);
					targY = y + (j*gridHeight); 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							var bomb = instance_create_depth(targX,targY,depth,objBomb);
							bomb.team = team;
						}
						else {
							hasEnd = true; 
							j =4; 	
						}
					}
				}
		}
		var hasEnd = false;
		for (var j = 1; j < 4; j++) {
				if (hasEnd == false ) {
					targX = x - (j*gridWidth);
					targY = y + (j*gridHeight); 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							var bomb = instance_create_depth(targX,targY,depth,objBomb);
							bomb.team = team;
						}
						else {
							hasEnd = true; 
							j =4; 	
						}
					}
				}
		}
		var hasEnd = false;
		for (var j = 1; j < 4; j++) {
				if (hasEnd == false ) {
					targX = x - (j*gridWidth);
					targY = y - (j*gridHeight); 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							var bomb = instance_create_depth(targX,targY,depth,objBomb);
							bomb.team = team;
						}
						else {
							hasEnd = true; 
							j =4; 	
						}
					}
				}
		}
		var hasEnd = false;
		for (var j = 1; j < 4; j++) {
				if (hasEnd == false ) {
					targX = x + (j*gridWidth);
					targY = y - (j*gridHeight); 
					var inst = instance_position(targX,targY,objGridSpace);
					if (inst != noone) {
						if (inst.structure == 0 ) {
							var bomb = instance_create_depth(targX,targY,depth,objBomb);
							bomb.team = team;
						}
						else {
							hasEnd = true; 
							j =4; 	
						}
					}
				}
		}
		var bomb = instance_create_depth(x,y,depth,objBomb);
		bomb.team = team;
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
		isPoison = true;
		alarm[11] = 90;
	}
	break;
}
