/// @description Create Base Grid
var xMiddle = room_width/2;
var yMiddle = (room_height/2)+(room_height/8);
gridWidth = objGameData.gridWidth;  
gridHeight = objGameData.gridHeight; 
gridPadding = objGameData.gridPadding; 
sidesSize = 4; 

for (var i = 1; i <= sidesSize; i++ ) {
	var newGrid = instance_create_depth(xMiddle-(i*(gridWidth)),yMiddle,0,objGridSpace); 
	newGrid.occupied = false; 
	newGrid.color = 3; 

	var newGrid = instance_create_depth(xMiddle-(i*(gridWidth)),yMiddle-(gridHeight),0,objGridSpace); 
	newGrid.color = 3; 
	
	var newGrid = instance_create_depth(xMiddle-(i*(gridWidth)),yMiddle-(gridHeight*2),0,objGridSpace); 
	newGrid.color = 3; 
	
	var newGrid = instance_create_depth(xMiddle-(i*(gridWidth)),yMiddle+(gridHeight),0,objGridSpace); 
	newGrid.color = 3; 
	
	if ( i == 3 ) {
		var playerOne = instance_create_depth(xMiddle-(i*(gridWidth)),yMiddle,-10,objPlayer); 
		playerOne.team = 1; 
		playerOne.kit = 1; 
		playerOne.isFacingRight = true; 
		
		var playerOne = instance_create_depth(xMiddle+(i*(gridWidth)),yMiddle,-10,objPlayer); 
		playerOne.team = 2; 
		playerOne.kit = 1; 
		playerOne.isFacingRight = false; 
	}
	
	var newGrid = instance_create_depth(xMiddle+(i*(gridWidth)),yMiddle,0,objGridSpace); 
	newGrid.occupied = false; 
	newGrid.color = 3; 

	var newGrid = instance_create_depth(xMiddle+(i*(gridWidth)),yMiddle-(+gridHeight),0,objGridSpace); 
	newGrid.color = 3; 
	var newGrid = instance_create_depth(xMiddle+(i*(gridWidth)),yMiddle-(gridHeight*2),0,objGridSpace); 
	newGrid.color = 3; 
	
	var newGrid = instance_create_depth(xMiddle+(i*(gridWidth)),yMiddle+(+gridHeight),0,objGridSpace); 
	newGrid.color = 3;
}
var newGrid = instance_create_depth(xMiddle,yMiddle,0,objGridSpace); 
newGrid.color = 3; 

var newGrid = instance_create_depth(xMiddle,yMiddle-(gridHeight),0,objGridSpace); 
newGrid.color = 3; 

var newGrid = instance_create_depth(xMiddle,yMiddle+(gridHeight),0,objGridSpace); 
newGrid.color = 3; 

var newGrid = instance_create_depth(xMiddle,yMiddle-(gridHeight*2),0,objGridSpace); 
newGrid.color = 3; 
	