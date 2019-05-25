draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(ft_scoreText);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(x+2,y+2,string(objGameData.scoreOne)+"-"+string(objGameData.scoreTwo));
draw_text(x-2,y-2,string(objGameData.scoreOne)+"-"+string(objGameData.scoreTwo));
draw_set_color(c_white);
if (objGameData.scoreOne > objGameData.scoreTwo) {
	draw_set_color(blueColor);
}
if (objGameData.scoreOne < objGameData.scoreTwo) {
	draw_set_color(redColor);
}
draw_text(x,y,string(objGameData.scoreOne)+"-"+string(objGameData.scoreTwo));