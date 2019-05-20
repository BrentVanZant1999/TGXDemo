
//myHealth = playerObj.myHealth;

if (team == 1) {
	x = room_width/8-30;
	y = room_height/8-15;
} else {
	x = room_width - room_width/8+30;
	y = room_height/8-15;
}

if (hitAnimation) {
	hitAnimationCounter++	
	if (hitAnimationCounter>myTiming) {
		hitAnimation = false;
	}
}
else {
	hitAnimationCounter =0;
}