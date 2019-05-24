//handleOneCast(myClass,myTeam); 
classCast = argument0;
teamCast = argument1; 
alarm[2] = oneCooldownDef; 	
oneReady = false; 
switch(classCast){
	//sword slash
	case(1):
	{
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 9;
		abilityAnim = true; 
		alarm[8] = 10; //unlock 
		canCast = false;
		if (isFacingRight) {
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 9;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
		}
		else {
			targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 9;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
		}
	}
	break;	
	//Swing
	case(2):
	{
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 13;
		abilityAnim = true; 
		alarm[8] = 15; //unlock 
		canCast = false;
		if (isFacingRight) {
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
			targXTwo = x+gridWidth;
			targYTwo = y+gridHeight;
			var gridInst = instance_position(targXTwo, targYTwo, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYTwo,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[1] = newWarning;
			}
			targXTwo = x+gridWidth;
			targYThree = y-gridHeight;
			var gridInst = instance_position(targXTwo, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[2] = newWarning;
			}
			
		}
		else {
			targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
			targXTwo = x-gridWidth;
			targYTwo = y+gridHeight;
			var gridInst = instance_position(targXTwo, targYTwo, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYTwo,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[1] = newWarning;
			}
			targXTwo = x-gridWidth;
			targYThree = y-gridHeight;
			var gridInst = instance_position(targXTwo, targYThree, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXTwo,targYThree,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[2] = newWarning;
			}
		}
	}
	break;	
	//Shadow Blase
	case(3):
	{
		//Shadow Blast 
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 7;
		abilityAnim = true; 
		alarm[8] = 7; //unlock 
		canCast = false; 
		
	}
	break;
	//slam
	case(4): 
	{
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 13;
		abilityAnim = true; 
		alarm[8] = 14; //unlock 
		canCast = false;
		if (isFacingRight) {
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}

		}
		else {
			targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
		}
	}
	break;
	case(5): 
	{
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 11;
		abilityAnim = true; 
		alarm[8] = 12; //unlock 
		canCast = false;
		if (isFacingRight) {
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 11;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}

		}
		else {
			targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 11;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
		}	
	}
	break;
	case(6):
	{
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 11;
		abilityAnim = true; 
		alarm[8] = 12; //unlock 
		canCast = false;
		if (isFacingRight) {
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 11;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}

		}
		else {
			targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 11;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
		}
	}
	break;
	case(7):
	{
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 13;
		abilityAnim = true; 
		alarm[8] = 14; //unlock 
		canCast = false;
		if (isFacingRight) {
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}

		}
		else {
			targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 13;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
		}
	}
	//rat paws
	case(8):
	{
		isIdle = false;
		canMove = false; 
		abilityCounter = 0; 
		abilityMax = 11;
		abilityAnim = true; 
		alarm[8] = 12; //unlock 
		canCast = false;
		if (isFacingRight) {
			targXOne = x+gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 11;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}

		}
		else {
			targXOne = x-gridWidth;
			targYOne = y;
			var gridInst = instance_position(targXOne, targYOne, objGridSpace);
			if (gridInst != noone) {
				var newWarning = instance_create_depth(targXOne,targYOne,0,objWarning);
				newWarning.myLife = 11;
				newWarning.projectileLife = 3;
				newWarning.team = team;	
				basicThreat[0] = newWarning;
			}
		}
	}
}

