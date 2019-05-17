if (!isFacingRight){
	draw_sprite_ext(spr_shadeBlast,myFrame,x,y,1,1,0,c_white,1);
}
if (isFacingRight){
	draw_sprite_ext(spr_shadeBlast,myFrame,x,y,-1,1,0,c_white,1);
}