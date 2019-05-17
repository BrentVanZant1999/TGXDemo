////movePlayer(direction,distance); 
dir = argument0; 
dist = argument1; 

gridWidth = objGameData.gridWidth; 
gridHeight = objGameData.gridHeight; 
gridPadding = objGameData.gridPadding;
gridSpacing = gridPadding;
newX = 0;
newY = 0;

curGrid =  instance_position(x, y, objGridSpace);


switch(dir){
	case(1): 
	{
		//calc new x and y 
		newX = (x + dist*gridWidth);
		newY = y; 
		
		var inst;
		inst = instance_position(newX, newY, objGridSpace);
		//check if there is a grid existant at new x and y 
		if inst != noone
		{
			
			//check if grid does not have structure and is valid
			if ( inst.valid == true || inst.structure == 0 ) {
				//check if grid has another character on it 
				if ( inst.occupied == false ) {
					x = newX;
					y = newY;
					myGrid.occupied = false;
					inst.occupied = true;
					inst.team = team;
					myGrid = inst;
				} 
			}
		}
	}
	break;
	case(2): 
	{
		newY = (y - dist*gridHeight);
		newX = x; 
		 
		var inst;
		inst = instance_position(newX, newY, objGridSpace);
		//check if there is a grid existant at new x and y 
		if inst != noone
		{
			//check if grid does not have structure and is valid
			if ( inst.valid == true || inst.structure == 0 ) {
				//check if grid has another character on it 
				if ( inst.occupied == false ) {
					x = newX;
					y = newY;
					myGrid.occupied = false;
					inst.occupied = true;
					inst.team = team;
					myGrid = inst;
				} 
			}
		}
	}
	break;
	case(3): 
	{
		newX = (x - dist*gridWidth);
		newY = y; 
		
		var inst;
		inst = instance_position(newX, newY, objGridSpace);
		//check if there is a grid existant at new x and y 
		if inst != noone
		{
			//check if grid does not have structure and is valid
			if ( inst.valid == true || inst.structure == 0 ) {
				//check if grid has another character on it 
				if ( inst.occupied == false ) {
					x = newX;
					y = newY;
					myGrid.occupied = false;
					inst.occupied = true;
					inst.team = team;
					myGrid = inst;
				}
			}
		}
	}
	break;
	//
	case(4): 
	{
		newY = (y + dist*gridHeight);
		newX = x;
		var inst;
		inst = instance_position(newX, newY, objGridSpace);
		//check if there is a grid existant at new x and y 
		if inst != noone
		{
			//check if grid does not have structure and is valid
			if ( inst.valid == true || inst.structure == 0 ) {
				//check if grid has another character on it 
				if ( inst.occupied == false ) {
					x = newX;
					y = newY;
					myGrid.occupied = false;
					inst.occupied = true;
					inst.team = team;
					myGrid = inst;
				} 
			}
		}
	}
	break;
}
