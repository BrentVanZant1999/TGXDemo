draw_set_alpha(1);
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
		draw_sprite(sprYellowTile,0,x,y);
	}
	break;
}