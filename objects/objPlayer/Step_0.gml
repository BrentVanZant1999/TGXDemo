if (myHealth < 1 ) {
	with (objOverlay) {
		instance_destroy();
	}
	with (objWarning) {
		instance_destroy();
	}
	with (objRainCreator) {
		instance_destroy();
	}
	isDead = true; 
	deadCounter++; 
	canCast = false;
	canMove = false;
}
if (isActive) {
	poison++
	if ( poison > 1 ) {
		poison = 0;
	}
	ratDash++
	if ( ratDash > 3 ) {
		ratDash = 0;		
	}
	goblinDash++;
	if (goblinDash > 5 ) {
		goblinDash = 0; 
	}
	idleframeCounter++; 	
	if (	idleframeCounter > idleFrameCounterMax ) {
		idleframeCounter = 0; 
	}
	//handle one
	abilityCounter++;
	if (abilityCounter > abilityMax) {
		abilityCounter = 0;
	}
	//handle two
	abilityTwoCounter++;
	if (abilityTwoCounter > abilityTwoMax) {
		abilityTwoCounter = 0;
	}
	/// @description Handle Movement and Abilities 
	if (team == 1 ) {
		abilPressed = -1;
		if (canCast) {
			for ( var i = 0; i < array_length_1d(objGameData.p1_ability_inputs); i++){
			    var this_key = objGameData.p1_ability_inputs[i];
			    if keyboard_check(this_key) {
				  abilPressed = i; 
			    }
			}
			if ( abilPressed > -1 ) {
				movementsPressed = 0; 
				movePressed = -1; 
				for ( var i = 0; i < array_length_1d(objGameData.p1_movement_inputs); i++){
				  var this_key = objGameData.p1_movement_inputs[i];
				    if keyboard_check(this_key) {
					  movementsPressed++;
					  movePressed = i; 
					}
				}
				if (movementsPressed = 1 ) {
					if (movePressed == 0 ) {
						isFacingRight = true; 	
					}
					else if ( movePressed == 2 ) 
					{
						isFacingRight = false; 	
					}
				}
				switch(abilPressed) {
					case(0):
					{
						if (oneReady) {
							handleOneCast(kit,team); 
						}
					}
					break;
					case(1):
					{
						if (twoReady) {
							handleTwoCast(kit,team); 
						}
					}
					break;
					case(2):
					{
						if (threeReady) {
							handleThreeCast(kit,team); 
						}
					}
					break;
					case(3):
					{
						if (fourReady) {
							handleFourCast(kit,team); 
						}
					}
					break;
				}
			}
		}
		if ( canCast && abilPressed > -1 ) {
		
		}
		else if (canMove) {
			amountPressed = 0; 
			pressed = -1; 
			for ( var i = 0; i < array_length_1d(objGameData.p1_movement_inputs); i++){
			    var this_key = objGameData.p1_movement_inputs[i];
			    if keyboard_check(this_key) {
				  amountPressed++;
				  pressed = i; 
			    }
			}
			if ( amountPressed == 1 ) {
				movePlayer(pressed+1,1);
				alarm[10] = mySpeed; 
				canMove = false; 
			}
		}
	
	}
	else if ( team == 2 ) {
		abilPressed = -1; 
		if (canCast) {
			for ( var i = 0; i < array_length_1d(objGameData.p2_ability_inputs); i++){
			    var this_key = objGameData.p2_ability_inputs[i];
			    if keyboard_check(this_key) {
				  abilPressed = i; 
			    }
			}
			if ( abilPressed > -1 ) {
				movementsPressed = 0; 
				movePressed = -1; 
				for ( var i = 0; i < array_length_1d(objGameData.p2_movement_inputs); i++){
				  var this_key = objGameData.p2_movement_inputs[i];
				    if keyboard_check(this_key) {
					  movementsPressed++;
					  movePressed = i; 
					}
				}
				if (movementsPressed = 1 ) {
					if (movePressed == 0 ) {
						isFacingRight = true; 	
					}
					else if ( movePressed == 2 ) 
					{
						isFacingRight = false; 	
					}
				}
				switch(abilPressed) {
					case(0):
					{
						if (oneReady) {
							handleOneCast(kit,team); 
						}
					}
					break;
					case(1):
					{
						if (twoReady) {
							handleTwoCast(kit,team); 
						}
					}
					break;
					case(2):
					{
						if (threeReady) {
							handleThreeCast(kit,team); 
						}
					}
					break;
					case(3):
					{
						if (fourReady) {
							handleFourCast(kit,team); 
						}
					}
					break;
				}
			}
		}
		if ( canCast && abilPressed > -1 ) {
		
		}
		else if (canMove) {
			amountPressed = 0; 
			pressed = -1; 
			for ( var i = 0; i < array_length_1d(objGameData.p2_movement_inputs); i++){
			    var this_key = objGameData.p2_movement_inputs[i];
			    if keyboard_check(this_key) {
				  amountPressed++;
				  pressed = i; 
			    }
			}
			if ( amountPressed == 1 ) {
				movePlayer(pressed+1,1); 
				alarm[10] = mySpeed; 
				canMove = false; 
			}
		}
	}
}
if (isPoison) {
	if (poison == 1) {
		if (myGrid !=noone) {
			instance_create_depth(myGrid.x,myGrid.y,0,objRatOverlay);
		}
	}
}
depth = baseDepth - y;