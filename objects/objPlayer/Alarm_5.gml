switch(kit) 
{
case(1):
{
	if (abilityTwoAnim == true) {
		alarm[5] = 4; 
		if ( myGrid != noone ) {
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
			myGrid = noone; 
		}
		if (isFacingRight) {
			x = x + gridWidth;
		}
		else {
			x = x - gridWidth;	
		}
	}
}
break;
case(5):
{
	if (abilityThreeAnim == true) {
		alarm[5] = 4; 
		if ( myGrid != noone ) {
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
			myGrid = noone; 
		}
		if (isFacingRight) {
			x = x + gridWidth;
		}
		else {
			x = x - gridWidth;	
		}
	}
}
break;
case(8):
{
	if (abilityTwoAnim == true) {
		alarm[5] = 4; 
		if ( myGrid != noone ) {
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
			myGrid = noone; 
		}
		if (isFacingRight) {
			x = x + gridWidth;
		}
		else {
			x = x - gridWidth;	
		}
	}
}
break;
}
