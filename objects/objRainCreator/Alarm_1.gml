var newWarning = instance_create_depth(target.x,target.y,0,objWarning);
newWarning.myLife = 10;
newWarning.projectileLife = 2;
newWarning.team = team;	
alarm[1] = 10;
var newComet = instance_create_depth(target.x,target.y+yOffsetSpawn,0,objShadowRain);
newComet.projectileSpeed = -28;
newComet.alarm[1] = 10;
