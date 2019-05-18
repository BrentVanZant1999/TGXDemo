/// @description Instance Variables
kitsTotal = 8; 
kitCurrent = 1; 
wallWidth = 178;
constLeftInc = 40;
xFinal = room_width-wallWidth+60;
xStart = room_width-wallWidth+200;


y = 0
x = xStart;



depth = -400;


wallPieceHeight = 128;

selectorOffset = 74;
wallsToMake = (room_height/wallPieceHeight)+1; 

//Model variables 
var model1 = instance_create_depth(-400,-400,-401, objCharShow);
model1.team = 2;
model1.kit = 1; 

models[0] = model1;

for (var q = 1; q < 8; q++ ) {
	var newModel = instance_create_depth(-400,-400,-401, objCharShow);
	newModel.team = 2;
	newModel.kit = 1+q; 	
	models[q] = newModel;
}



//scrolling variables
array[0] = 1;
array[1] = 2;
array[2] = 3;
array[3] = 4;
array[4] = 5;
array[5] = 6;
array[6] = 7;
canScroll = true; 
canLock = true;
temp = 8; 
outside = 8; 
kitCurrent = 4;  