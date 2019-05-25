draw_set_valign(fa_center);
draw_set_halign(fa_middle);
draw_set_font(ft_roundLoss);
draw_set_alpha(0.5+alphaOffset);
draw_set_color(c_black); 
if (team ==1) {
	draw_text(room_width/2, room_height/2+heightOffset+4, "Blue Wins Round!");
	draw_set_color(c_blue); //replace color
	draw_text(room_width/2, room_height/2+heightOffset, "Blue Wins Round!");
}
else {
	draw_text(room_width/2, room_height/2+heightOffset+4, "Red Wins Round!");
	draw_set_color(c_red);  //replace color
	draw_text(room_width/2, room_height/2+heightOffset, "Red Wins Round!");
}