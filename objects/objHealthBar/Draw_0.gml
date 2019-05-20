var xscale = 1.5; 
if (team == 1 ) {
 xscale = 1.5;	
}
else {
	xscale = -1.5; 	
}
if (hitAnimation) {
	switch(myHealth) {
		case(0): {
			draw_sprite_ext(spr_uiHealth_1_hit,hitAnimationCounter/3,x,y,xscale,1.5,0,c_white,1);
		}
		break;
		case(1): {
			draw_sprite_ext(spr_uiHealth_2_hit,hitAnimationCounter/3,x,y,xscale,1.5,0,c_white,1);
		}
		break;
		case(2): {
			draw_sprite_ext(spr_uiHealth_3_hit,hitAnimationCounter/3,x,y,xscale,1.5,0,c_white,1);
		}
		break;
	}
} else {
switch(myHealth) {
	case(0): {
		draw_sprite_ext(spr_uiHealth,hitAnimationCounter,x,y,xscale,1.5,0,c_white,1);
	}
	break;
	case(1): {
		draw_sprite_ext(spr_uiHealth_1,hitAnimationCounter,x,y,	xscale,1.5,0,c_white,1);
	}
	break;
	case(2): {
		draw_sprite_ext(spr_uiHealth_2,hitAnimationCounter,x,y,	xscale,1.5,0,c_white,1);
	}
	break;
	case(3): {
		draw_sprite_ext(spr_uiHealth_3,hitAnimationCounter,x,y,	xscale,1.5,0,c_white,1);
	}
	break;
}
}