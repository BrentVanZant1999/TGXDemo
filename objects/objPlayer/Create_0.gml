basicThreat[0] = noone;
basicThreat[1] = noone;
basicThreat[2] = noone;
poison = 0;
isDead = false;
spriteToUse = spr_goblin_idle;
team = 1; 
kit = 1; 
isActive = false; 
isIdle = true; 
isFacingRight = false; 
invinc = false;
timing = 0;
isHit =  false; 
alarm[0] = 1; //active alarm 
idleFrameCounterMax = 15; 
idleframeCounter = 0; 
//dead counters
deadCounter = -1; 
//ability one
abilityCounter = 0; 
abilityMax = 7; 
abilityAnim = false; 
//ability two
abilityTwoCounter = 0; 
abilityTwoMax = 15;
abilityTwoAnim = false;; 
abilityThreeAnim = false; 
abilityThreeCounter = 0; 
abilityThreeMax = 15;
baseDepth = 1000;
var myGrid; //gridHolder
myHealth = 2; 
myShield = 0; 
mySpeed = 3; // 2 == base speed
canMove = false; 
canCast = false; 
isPoison = false;
//ability variables 
oneVal = -1;
twoVal = -1;
threeVal = -1; 

oneReady = false;
twoReady = false; 
threeReady = false; 
fourReady = false; 

oneCooldownDef = 0;
twoCooldownDef = 0; 
threeCooldownDef = 0;
fourCooldownDef = 0;




//Grid Stuff
gridWidth = objGameData.gridWidth;  
gridHeight = objGameData.gridHeight; 
gridPadding = objGameData.gridPadding;

//rat frames
ratDash = 0;
goblinDash = 0;
//shade tele
destSpotX = 0;
destSpotY = 0;