if (isActive) {
	if (isIdle) {
		switch(kit){
			case(1):
			{
				spriteToUse = spr_goblin_idle;
			}
			break;
			case(2):
			{
				spriteToUse = spr_wolf_idle;
			}
			break;
			case(3): 
			{
				spriteToUse = spr_shade_idle;
			}
			break;
			case(4):
			{
				spriteToUse = spr_golem_idle;
			}
			break;
			case(5): 
			{
				spriteToUse = spr_samuri_idle;
			}
			break;
			case(6):
			{
				spriteToUse = spr_yeti_idle;
			}
			break;
			case(7): 
			{
				spriteToUse = spr_mandrake_idle;
			}
			break;
			case(8): 
			{
				spriteToUse = spr_rat_idle;
			}
		}
		if (isFacingRight) {
			draw_sprite_ext(spriteToUse,idleframeCounter/4,x,y+gridHeight/4,-1,1,0,c_white,1);
		}
		else {
			draw_sprite_ext(spriteToUse,idleframeCounter/4,x,y+gridHeight/4,1,1,0,c_white,1);
		}
				
	}
	else if (abilityAnim) {
		switch(kit){
			case(1):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_goblin_attack,abilityCounter/2,x+10,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_goblin_attack,abilityCounter/2,x-10,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(2):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_wolf_attack,abilityCounter/2,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_wolf_attack,abilityCounter/2,x,y+gridHeight/4,1,1,0,c_white,1);
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
			case(4):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_golem_basic,abilityCounter/2,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_golem_basic,abilityCounter/2,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(8):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_rat_basic,abilityCounter/2,x+15,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_rat_basic,abilityCounter/2,x-15,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
		}
		
	}
	else if (abilityTwoAnim) {
		switch(kit){
			case(3):
			{
				if (abilityTwoCounter < 10) {
					if (isFacingRight) {
						draw_sprite_ext(spr_shade_tp,abilityTwoCounter,x,y+gridHeight/4,-1,1,0,c_white,1);
					}
					else {
						draw_sprite_ext(spr_shade_tp,abilityTwoCounter,x,y+gridHeight/4,1,1,0,c_white,1);
					}
				}		
				if (abilityTwoCounter >= 5) {
					if (isFacingRight) {
						draw_sprite_ext(spr_shade_tp,abilityTwoCounter,destSpotX,destSpotY+gridHeight/4,1,1,0,c_white,1);
					}
					else {
						draw_sprite_ext(spr_shade_tp,abilityTwoCounter,destSpotX,destSpotY+gridHeight/4,-1,1,0,c_white,1);
					}
				}
			}
			break;
			case(8):
			{
					if (isFacingRight) {
						draw_sprite_ext(spr_rat_dash,ratDash,x,y+gridHeight/4,-1,1,0,c_white,0.7);
					}
					else {
						draw_sprite_ext(spr_rat_dash,ratDash,x,y+gridHeight/4,1,1,0,c_white,0.7);
					}	
			}
			break;
		}
	}
		
}