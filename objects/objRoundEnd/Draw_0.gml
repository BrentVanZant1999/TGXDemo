/// @description Insert description here
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(ft_iroundText);
draw_set_color(c_black);
if (objGameData.scoreOne < 3 && objGameData.scoreTwo < 3 ) {
	draw_text(room_width/2+2,room_height/6+2,"next round in :");
	draw_set_color(c_white);
	draw_text(room_width/2,room_height/6,"next round in :");

	draw_set_font(ft_roundText);
	draw_set_color(c_black);
	draw_text(room_width/2+2,room_height/6+50+2,string(num));
	draw_set_color(c_white);
	draw_text(room_width/2,room_height/6+50,string(num));

	draw_set_font(ft_iroundText);
	draw_set_color(c_black);
	draw_text(room_width/2+2,room_height/6+100+2,string(objGameData.scoreOne)+"-"+string(objGameData.scoreTwo));
	draw_set_color(c_white);
	if (objGameData.scoreOne > objGameData.scoreTwo) {
		draw_set_color(blueColor);
	}
	if (objGameData.scoreOne < objGameData.scoreTwo) {
		draw_set_color(redColor);
	}
	draw_text(room_width/2,room_height/6+100,string(objGameData.scoreOne)+"-"+string(objGameData.scoreTwo));
}
else {
	draw_set_font(ft_iroundText);
	if ( objGameData.scoreOne == 3 ) {
		draw_set_color(c_black);
		draw_text(room_width/2+2,room_height/6+2,"blue player wins");
		draw_set_color(blueColor);
		draw_text(room_width/2,room_height/5,"blue player wins");
	}
	else {
		draw_set_color(c_black);
		draw_text(room_width/2+2,room_height/6+2,"red player wins");
		draw_set_color(redColor);
		draw_text(room_width/2,room_height/6,"red player wins");
	}
}