if  (objGameData.hasClicked == 0 ) {
	with (objPlayer) {
		if (team == 1) {
			kit = 3;
			alarm[0] = 1;
		}
	}
}
else {
	with (objPlayer) {
		if (team == 2) {
			kit = 3; 	
			alarm[0] = 1;
		}
	}
}