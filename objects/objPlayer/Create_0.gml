team = 1; 
kit = 1; 
isActive = false; 
isIdle = true; 
isFacingRight = false; 
alarm[0] = 1; //active alarm 
idleFrameCounterMax = 15; 
idleframeCounter = 0; 
var myGrid; //gridHolder
myHealth = 1; 
myShield = 0; 
mySpeed = 3; // 2 == base speed
canMove = true; 
canCast = true; 

//ability variables 
oneVal = -1;
twoVal = -1;
threeVal = -1; 

oneReady = true;
twoReady = true; 
threeReady = false; 
threeCharge = 0; 

oneCooldownDef = 0;
twoCooldownDef = 0; 
threeCooldownDef = 0;

oneCooldown = 0;
twoCooldown = 0; 
threeCooldown = 0;



//Grid Stuff
gridWidth = objGameData.gridWidth;  
gridHeight = objGameData.gridHeight; 
gridPadding = objGameData.gridPadding; 