player = argument0;
team = player.team;
var loss = instance_create_depth(0,0,-300,objRoundLoss);
if (team == 1) {
loss.team = 2;
objGameData.scoreTwo += 1; 
}
else {
loss.team  = 1;	
objGameData.scoreOne += 1; 
}
instance_create_depth(0,0,-300,objRoundEnd);
