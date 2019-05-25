if (isActive) {
	if (isDead) {
			switch(kit){
			case(1):
				{
					spriteToUse = spr_goblin_die;
					if (deadCounter > 26){
						deadCounter = 26;
					}
				}
			break; 
			case(2):
				{
					spriteToUse = spr_wolf_die;
				}
			break; 
			case(3):
			{
				spriteToUse = spr_shade_die;
					if (deadCounter > 29) {
						deadCounter = 29;
					}
			}
			break; 
			case(4):
			{
				spriteToUse = spr_golem_die;
			}
			break; 
			case(5):
			{
				spriteToUse = spr_ogre_die;
				if (deadCounter > 20) {
					deadCounter = 20;
				}
				
			}
			break; 
			case(6):
			{
				spriteToUse = spr_yeti_die;
			}
			break;
			case(7):
			{
				spriteToUse = spr_mandrake_die;
			}
			break;
			case(8):
			{
				spriteToUse = spr_rat_die;
					if (deadCounter > 14) {
						deadCounter = 14;
					}
			}
			break; 
		}
		if (isFacingRight) {
			draw_sprite_ext(spriteToUse,deadCounter/3,x,y+gridHeight/4,-1,1,0,c_white,0.8);
			draw_sprite_ext(spriteToUse,deadCounter/3,x,y+gridHeight/4,-1,1,0,c_red,0.4);
		}
		else {
			draw_sprite_ext(spriteToUse,deadCounter/3,x,y+gridHeight/4,1,1,0,c_white,0.8);
			draw_sprite_ext(spriteToUse,deadCounter/3,x,y+gridHeight/4,1,1,0,c_red,0.4);			
		}
	}
	else if (isHit) {
		switch(kit){
			case(1):
			{
					spriteToUse = spr_goblin_hit;
			}
			break; 
			case(2):
			{
				spriteToUse = spr_wolf_hit;
			}
			break; 
			case(3):
			{
				spriteToUse = spr_shade_hit;
			}
			break; 
			case(4):
			{
				spriteToUse = spr_golem_hit;
			}
			break; 
			case(5):
			{
				spriteToUse = spr_ogre_hit;
			}
			break; 
			case(6):
			{
				spriteToUse = spr_yeti_hit;
			}
			break;
			case(7):
			{
				spriteToUse = spr_mandrake_hit;
			}
			break;
			case(8):
			{
				spriteToUse = spr_rat_hit;
			}
			break; 
		}
		if (isFacingRight) {
			draw_sprite_ext(spriteToUse,alarm[9]/4,x,y+gridHeight/4,-1,1,0,c_white,0.8);
			draw_sprite_ext(spriteToUse,alarm[9]/4,x,y+gridHeight/4,-1,1,0,c_red,0.4);
		}
		else {
			draw_sprite_ext(spriteToUse,alarm[9]/4,x,y+gridHeight/4,1,1,0,c_white,0.8);
			draw_sprite_ext(spriteToUse,alarm[9]/4,x,y+gridHeight/4,1,1,0,c_red,0.4);			
		}
	}
	else if (isIdle) {
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
				spriteToUse = spr_ogre_idle;
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
			case(5):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_ogre_basic,abilityCounter/2,x+10,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_ogre_basic,abilityCounter/2,x-10,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(6):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_yeti_basic,abilityCounter/2,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_yeti_basic,abilityCounter/2,x,y+gridHeight/4,1,1,0,c_white,1);
				}
				
			}
			break;
			case(7):
			{
				if (isFacingRight) {
					draw_sprite_ext(spr_mandrake_basic,abilityCounter/2,x,y+gridHeight/4,-1,1,0,c_white,1);
				}
				else {
					draw_sprite_ext(spr_mandrake_basic,abilityCounter/2,x,y+gridHeight/4,1,1,0,c_white,1);
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