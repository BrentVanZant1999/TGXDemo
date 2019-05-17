if (occupied) {
	if (myAlpha < maxAlpha) {
		myAlpha += 0.1;
	}
	inst = instance_position(x,y,objPlayer);
	if ( inst == noone ) {
		occupied = false;
	}
}
else {
	if (myAlpha > minAlpha) {
		myAlpha -= 0.05;
	}
}
frame++;
if (frame > frameMax) {
	frame=0;
}