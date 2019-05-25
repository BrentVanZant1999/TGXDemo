if (playerObj.team ==1 ) {
	var abilOne = instance_create_depth(x,y+46,-5000,objCooldown);
	abilOne.team = playerObj.team;
	abilOne.player = playerObj;
	abilOne.ability = 1;
	var abilTwo = instance_create_depth(x+40,y+46,-5000,objCooldown);
	abilTwo.team = playerObj.team;
	abilTwo.player = playerObj;
	abilTwo.ability = 2;
	var abilThree = instance_create_depth(x+80,y+46,-5000,objCooldown);
	abilThree.team = playerObj.team;
	abilThree.player = playerObj;
	abilThree.ability = 3;
	var abilFour = instance_create_depth(x+120,y+46,-5000,objCooldown);
	abilFour.team = playerObj.team;
	abilFour.player = playerObj;
	abilFour.ability = 4;
}
else {
	var abilOne = instance_create_depth(x-34,y+46,-5000,objCooldown);
	abilOne.team = playerObj.team;
	abilOne.player = playerObj;
	abilOne.ability = 1;
	var abilTwo = instance_create_depth(x-74,y+46,-5000,objCooldown);
	abilTwo.team = playerObj.team;
	abilTwo.player = playerObj;
	abilTwo.ability = 2;
	var abilThree = instance_create_depth(x-114,y+46,-5000,objCooldown);
	abilThree.team = playerObj.team;
	abilThree.player = playerObj;
	abilThree.ability = 3;
	var abilFour = instance_create_depth(x-154,y+46,-5000,objCooldown);
	abilFour.team = playerObj.team;
	abilFour.player = playerObj;
	abilFour.ability = 4;
}
