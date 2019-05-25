if (isActive) {
	if (redIsUp) {
		if ( redOffsetCurr < redOffsetMax ) {
				redOffsetCurr+=0.5;
				blueOffsetCurr+=0.5;
				offsetX+=0.5;
		}
		else {
			redIsUp = false; 	
		}
	}
	else {
		if ( redOffsetCurr > redOffsetMin ) {
				redOffsetCurr-=0.5;
				blueOffsetCurr-=0.5;
				offsetX-=0.5;
		}
		else {
			redIsUp = true;
		}
	}
	if (alphaUp) {
	
	if (myAlpha > 1 ) {
		alphaUp = false;
	}
	else {
	myAlpha += 0.025;	
	}
	}
	else {
		if (myAlpha < 0.6) {
			alphaUp = true;
		}
		else {
			myAlpha -= 0.025;	
		}
	}


	keysPressed = 0; 
	for ( var i = 0; i < array_length_1d(objGameData.p2_movement_inputs); i++){
					  var this_key = objGameData.p2_movement_inputs[i];
					    if keyboard_check(this_key) {
							keysPressed++;
						}
	}
	for ( var i = 0; i < array_length_1d(objGameData.p1_movement_inputs); i++){
					  var this_key = objGameData.p1_movement_inputs[i];
					    if keyboard_check(this_key) {
							keysPressed++;
						}
	}
	for ( var i = 0; i < array_length_1d(objGameData.p2_ability_inputs); i++){
					  var this_key = objGameData.p2_ability_inputs[i];
					    if keyboard_check(this_key) {
							keysPressed++;
						}
	}
	for ( var i = 0; i < array_length_1d(objGameData.p1_ability_inputs); i++){
					  var this_key = objGameData.p1_ability_inputs[i];
					    if keyboard_check(this_key) {
							keysPressed++;
						}
	}
	if (keysPressed > 0) {
		alarm[0] = 1;
		alarm[1] = 15;
	}
				
	if (isMoving) {
		xTitle = room_width/2;
		yTitle -=40; 
		yPlay -=40;
		yCredits +=40; 
		yCreditsTwo += 40; 	
	}
}				