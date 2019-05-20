draw_set_font(ft_char);
draw_set_color(c_black);
draw_set_valign(fa_center);
draw_set_halign(fa_middle);
draw_set_alpha(1);
if (team == 1) {
spriteToUse = spr_blue_header;
xscale = 1;
xOffset = 96;
xAdd = 26;
}
else {
spriteToUse = spr_red_header;	
xscale = -1;
xOffset = -100;
xAdd = -26;
}
draw_sprite_ext(spriteToUse,0,x+xAdd,y+22,xscale,1,0,c_white,1);
switch(kit) {
	case(1): {
		draw_text(x+xOffset,y-16, "Goblin");
	}
	break;
	case(2): {
		draw_text(x+xOffset,y-16, "Werewolf");
	}
	break;
	case(3): {
		draw_text(x+xOffset,y-16, "Shade");
	}
	break;
	case(4): {
		draw_text(x+xOffset,y-16, "Golem");
	}
	break;
	case(5): {
		draw_text(x+xOffset,y-16, "Samuri");
	}
	break;
	case(6): {
		draw_text(x+xOffset,y-16, "Yeti");
	}
	break;
	case(7): {
		draw_text(x+xOffset,y-16, "Mandrake");
	}
	break;
	case(8): {
		draw_text(x+xOffset,y-16, "Rat");
	}
	break;
}
