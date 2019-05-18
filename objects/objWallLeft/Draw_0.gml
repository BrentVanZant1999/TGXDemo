draw_set_alpha(1);
for (var i = 0; i < wallsToMake; i++) {
	draw_sprite(spr_wall,0,x,y+(wallPieceHeight*i));
}
draw_sprite(spr_selectorLeft,0,x-5,y+(room_height/2)-selectorOffset+40);