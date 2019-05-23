var overlayColor = c_red;
if (team == 1 ) {
		overlayColor = c_blue;
}
if (!isFacingRight){
	draw_sprite_ext(spr_shade_moveForward,myFrame/3,x,y,1,1,0,c_white,0.4);
}
if (isFacingRight){
	draw_sprite_ext(spr_shade_moveForward,myFrame/3,x,y,-1,1,0,c_white,0.4);
}