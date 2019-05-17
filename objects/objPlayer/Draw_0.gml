if (isActive) {
	if (isIdle) {
		switch(kit){
			case(1):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_goblin_idle,idleframeCounter/4,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_goblin_idle,idleframeCounter/4,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(2):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_wolf_idle,idleframeCounter/4,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_wolf_idle,idleframeCounter/4,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(3):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_shade_idle,idleframeCounter/4,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_shade_idle,idleframeCounter/4,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
		}
	}
	else if (abilityAnim) {
		switch(kit){
			case(1):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_goblin_idle,idleframeCounter/4,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_goblin_idle,idleframeCounter/4,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(2):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_wolf_idle,idleframeCounter/4,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_wolf_idle,idleframeCounter/4,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(3):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_shade_attack,abilityCounter,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_shade_attack,abilityCounter,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
		}
		
	}
		
}