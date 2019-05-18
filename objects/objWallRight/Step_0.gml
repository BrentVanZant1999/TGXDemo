
if ( x > xFinal && canLock == true ) {
	x-=15;
} 
if ( canLock == false ) {
	if ( x < xStart ) {
		x+=15;
	} 
	else if ( x >= xStart) 
	{
		instance_destroy();
	} 
}

amountPressed = 0; 
pressed = -1; 
//scrolling logic
if ( canScroll == true ) {
	for ( var i = 0; i < array_length_1d(objGameData.p2_movement_inputs); i++){
		var this_key = objGameData.p2_movement_inputs[i];
			if keyboard_check(this_key) {
				  amountPressed++;
				  pressed = i; 
			}
		}
	if ( amountPressed == 1 ) {
		if ( pressed == 3 ) { 
			alarm[1] = 3; 
			canScroll = false; 
			if ( pressed == 1 || pressed == 3 ) {
				temp = 0; 
				for ( var i = 6; i > 0; i--) {
					if (i == 6) {
						temp = array[i];
					}
					array[i] = array[i-1]; 
				}
				array[0] = outside;
				outside = temp;
			}
		}
		else if ( pressed == 1 ) { 
			alarm[1] = 3; 
			canScroll = false; 
			if ( pressed == 1 || pressed == 3 ) {
				temp = 0; 
				for ( var i = 0; i < 6; i++) {
					if (i == 0) {
						temp = array[i];
					}
					array[i] = array[i+1]; 
				}
				array[6] = outside;
				outside = temp;
			}
		}
	}
	
	kitCurrent = array[3];
}

if ( canLock == true ) {
	abilsPressed = 0;
	for ( var i = 0; i < array_length_1d(objGameData.p2_ability_inputs); i++){
		var this_key = objGameData.p2_ability_inputs[i];
			if keyboard_check(this_key) {
				  abilsPressed++;
			}
		}
	if ( abilsPressed > 0 ) {
		alarm[2] = 150; 
		canLock = false; 
		//locking logic. 
		createPlayer(2,kitCurrent);
	}
}

for (var a = 0; a < 8; a++ ) {	
	valFound = 7; 
	for ( var b = 0; b < 7; b++ ) {
		if ( array[b]-1 == a ) {
			valFound = b;
		}
	}
	var modelVal = models[a];
	switch(valFound) { 
		case(0): {
			modelVal.y = room_height*2;	
		}
		break; 
		case(1): {
			modelVal.y = room_height*2;	
			modelVal.x = x + wallWidth/2-20;
			modelVal.y = room_height/2 - 20-150; 
			modelVal.myAlpha = 0.6; 
			modelVal.depth = -402;
			modelVal.xScale = 1.2; 
			modelVal.yScale = 1.2; 
		}
		break; 
		case(2): {
			modelVal.x = x + wallWidth/2-20;
			modelVal.y = room_height/2 - 20-50; 
			modelVal.myAlpha = 0.6; 
			modelVal.depth = -403;
			modelVal.xScale = 1.2; 
			modelVal.yScale = 1.2; 
		}
		break; 
		case(3): {
			modelVal.x = x + wallWidth/2-20;
			modelVal.y = room_height/2 + 60; 
			modelVal.myAlpha = 1; 
			modelVal.depth = -404;
			modelVal.xScale = 1.4; 
			modelVal.yScale = 1.4; 
		}
		break; 
		case(4): {
			modelVal.y = room_height*2;	
			modelVal.x = x + wallWidth/2-20;
			modelVal.y = room_height/2 - 2+170; 
			modelVal.myAlpha = 0.6; 
			modelVal.depth = -402;
			modelVal.xScale = 1.2; 
			modelVal.yScale = 1.2; 
		}
		break; 
		case(5): {
			modelVal.y = room_height*2;	
			modelVal.x = x + wallWidth/2-20;
			modelVal.y = room_height/2 + 260; 
			modelVal.myAlpha = 0.6; 
			modelVal.depth = -403;
			modelVal.xScale = 1.2; 
			modelVal.yScale = 1.2; 
		}
		break; 
		case(6): {
			modelVal.y = room_height*2;	
		}
		case(7): {
			modelVal.y = room_height*2;	
		}
		break; 
	}
}