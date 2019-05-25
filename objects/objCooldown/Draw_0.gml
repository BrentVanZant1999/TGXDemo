if (team == 1) {
	draw_set_color(make_color_rgb(61,80,183));
}
else {
	draw_set_color(make_color_rgb(200,31,0));	
}
if (amountShow >= 1) {
	myAlpha = 1; 	
	if (team == 1) {
		draw_set_color(make_color_rgb(61,140,183));
	}
	else {
		draw_set_color(make_color_rgb(245,31,0));	
	}

}
else {
	myAlpha = 0.7;
}
draw_set_alpha(1);
draw_sprite(spr_lower_cooldown,0,x,y);

draw_set_alpha(myAlpha);
draw_rectangle(x+xOffset,y+yOffset,x+xLength,y+yOffset+(yShow),0);
draw_set_alpha(1);
draw_sprite(spr_upper_cooldown,0,x,y);

if (ability == 1) {
	draw_set_alpha(1);
	draw_sprite(spr_green_button,0,x-1,y+35);
}
else if (ability == 2) {
	draw_set_alpha(1);
	draw_sprite(spr_red_button,0,x-1,y+35);	
}
else if (ability == 3) {
	draw_set_alpha(1);
	draw_sprite(spr_blue_button,0,x-1,y+35);
}
else {
	draw_set_alpha(1);
	draw_sprite(spr_yellow_button,0,x-1,y+35);
}