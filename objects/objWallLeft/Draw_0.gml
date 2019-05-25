draw_set_alpha(1);
for (var i = 0; i < wallsToMake; i++) {
	draw_sprite(spr_wall,0,x,y+(wallPieceHeight*i));
}
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(ft_iroundText);
draw_text(xPlay+2,yPlay+2,"Character Select");
draw_set_color(c_black);
draw_set_font(ft_iroundText);
draw_text(xPlay-2,yPlay-2,"Character Select");
draw_set_color(c_white);
draw_set_font(ft_iroundText);
draw_text(xPlay,yPlay,"Character Select");
draw_sprite(spr_selectorLeft,0,x-5,y+(room_height/2)-selectorOffset+40);