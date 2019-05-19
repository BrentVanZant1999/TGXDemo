switch(kit) {
case(3):
{
	x = destSpotX;
	y = destSpotY;
	isIdle = true;
	canMove = true; 
	canCast = true; 
	abilityTwoAnim = false; 
	invinc = false;
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
	isFacingRight = !isFacingRight;
}
break;
	case(8): 
	{
		x = destSpotX;
		y = destSpotY;
		isIdle = true;
		canMove = true; 
		canCast = true; 
		abilityTwoAnim = false; 
		invinc = false;
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
