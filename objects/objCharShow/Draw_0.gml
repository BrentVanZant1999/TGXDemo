
if (isActive) {
	if (team == 1 ) {
		xScale = -xScale; 
	}
	switch(kit){
		case(1):
		{
			draw_sprite_ext(spr_goblin_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha);
		}
		break;
		case(2):
		{
			draw_sprite_ext(spr_wolf_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha-0.2);
			draw_sprite_ext(spr_lock,0,x,y-45,xScale,yScale, 0,c_white,myAlpha-0.4);
		}
		break; 
		case(3):
		{
			draw_sprite_ext(spr_shade_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha);
		}
		break;
		case(4):
		{
			draw_sprite_ext(spr_golem_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha-0.2);
			draw_sprite_ext(spr_lock,0,x,y-60,xScale,yScale, 0,c_white,myAlpha-0.4);
		}
		break;
		case(5):
		{
			draw_sprite_ext(spr_ogre_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha);
		}
		break;
		case(6):
		{
			draw_sprite_ext(spr_yeti_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha-0.2);
			draw_sprite_ext(spr_lock,0,x,y-60,xScale,yScale, 0,c_white,myAlpha-0.4);
		}
		break;
		case(7):
		{
			draw_sprite_ext(spr_mandrake_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha-0.2);
			draw_sprite_ext(spr_lock,0,x,y-45,xScale,yScale, 0,c_white,myAlpha-0.4);
		}
		break;
		case(8):
		{
			draw_sprite_ext(spr_rat_idle,idleCounter/3,x,y,xScale,yScale, 0,c_white,myAlpha);
		}
		break;
	}
}