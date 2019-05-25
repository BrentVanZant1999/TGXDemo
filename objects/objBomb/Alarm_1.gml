hasEnd = false;
for (var j = 1; j < 9; j++) {
	if (hasEnd == false ) {
		targX = x + (j*gridWidth);
		targY = y; 
		var inst = instance_position(targX,targY,objGridSpace);
		if (inst != noone) {
			if (inst.structure == 0 ) {
				var newExp = instance_create_depth(targX,targY,0,objExp);
			}
			else {
				hasEnd = true; 
				j =9; 	
			}
		}
	}
}
hasEnd = false;
for (var j = 1; j < 9; j++) {
	if (hasEnd == false ) {
		targX = x - (j*gridWidth);
		targY = y; 
		var inst = instance_position(targX,targY,objGridSpace);
		if (inst != noone) {
			if (inst.structure == 0 ) {
var newExp = instance_create_depth(targX,targY,0,objExp);
			}
			else {
				hasEnd = true; 
				j =9; 	
			}
		}
	}
}
hasEnd = false;
for (var j = 1; j < 5; j++) {
	if (hasEnd == false ) {
		targX = x; 
		targY = y+ (j*gridHeight);
		var inst = instance_position(targX,targY,objGridSpace);
		if (inst != noone) {
			if (inst.structure == 0 ) {
var newExp = instance_create_depth(targX,targY,0,objExp);
			}
			else {
				hasEnd = true; 
				j =9; 	
			}
		}
	}
}
hasEnd = false;
for (var j = 1; j < 5; j++) {
	if (hasEnd == false ) {
		targX = x; 
		targY = y-(j*gridHeight);
		var inst = instance_position(targX,targY,objGridSpace);
		if (inst != noone) {
			if (inst.structure == 0 ) {
var newExp = instance_create_depth(targX,targY,0,objExp);
			}
			else {
				hasEnd = true; 
				j =9; 	
			}
		}
	}
}
instance_destroy();