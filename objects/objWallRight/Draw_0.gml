draw_set_alpha(1);
for (var i = 0; i < wallsToMake; i++) {
	draw_sprite(spr_wallRight,0,x,y+(wallPieceHeight*i));
}
draw_sprite(spr_selectorRight,0,x-19,y+(room_height/2)-selectorOffset+40);