spriteToUse = spr_goblin_idle;
team = 1; 
kit = 1; 
isActive = false; 
isIdle = true; 
isFacingRight = false; 
invinc = false;

alarm[0] = 5; //active alarm 
idleFrameCounterMax = 15; 
idleframeCounter = 0; 

//ability one
abilityCounter = 0; 
abilityMax = 7; 
abilityAnim = false; 
//ability two
abilityTwoCounter = 0; 
abilityTwoMax = 15;
abilityTwoAnim = false;; 

var myGrid; //gridHolder
myHealth = 1; 
myShield = 0; 
mySpeed = 3; // 2 == base speed
canMove = false; 
canCast = false; 

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

 
//shade tele
destSpotX = 0;
destSpotY = 0;