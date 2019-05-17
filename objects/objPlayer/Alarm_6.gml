x = destSpotX;
y = destSpotY;
isIdle = true;
canMove = true; 
canCast = true; 
abilityTwoAnim = false; 
invinc = false;
myGrid.occupied = false;
myGrid = instance_position(x,y,objGridSpace);
myGrid.occupied = true;
myGrid.team = team;

isFacingRight = !isFacingRight;