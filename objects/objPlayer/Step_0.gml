if (isActive) {
	idleframeCounter++; 	
	if (	idleframeCounter > idleFrameCounterMax ) {
		idleframeCounter = 0; 
	}
	/// @description Handle Movement and Abilities 
if (team == 1 ) {
	if (canMove) {
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
			alarm[0] = mySpeed; 
			canMove = false; 
		}
	}
	if (canCast) {
		abilPressed = -1; 
		for ( var i = 0; i < array_length_1d(objGameData.p1_ability_inputs); i++){
		    var this_key = objGameData.p1_ability_inputs[i];
		    if keyboard_check(this_key) {
			  abilPressed = i; 
		    }
		}
		if ( abilPressed > -1 ) {
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
					}
				}
				break;
			}
		}
	}
}
else if ( team == 2 ) {
	if (canMove) {
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
			alarm[0] = mySpeed; 
			canMove = false; 
		}
	}
	if (canCast) {
		abilPressed = -1; 
		for ( var i = 0; i < array_length_1d(objGameData.p2_ability_inputs); i++){
		    var this_key = objGameData.p2_ability_inputs[i];
		    if keyboard_check(this_key) {
			  abilPressed = i; 
		    }
		}
		if ( abilPressed > -1 ) {
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
					}
				}
				break;
			}
		}
	}
}

}
