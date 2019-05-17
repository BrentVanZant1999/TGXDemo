if (occupied) {
	draw_set_alpha(myAlpha);
	
}
else {
	draw_set_alpha(myAlpha);
}
switch(color){
	case(1):
	{
		draw_sprite(sprBlueTile,0,x,y);
	}
	break; 
	case(2):
	{
		draw_sprite(sprRedTile,0,x,y);
	}
	break;
	case(3): 
	{
		draw_sprite(sprWhiteTile,0,x,y);
	}
	break;
}
if (occupied) {
inst = instance_position(x,y,objPlayer);
	if(inst.team ==1) {
		draw_sprite(sprPlayerIndicatorBlue,frame/10,x,y);
	}	
	else {
		draw_sprite(sprPlayerIndicatorRed,frame/10,x,y);
	}
}