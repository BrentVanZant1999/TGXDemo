/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(ft_titleText2);
draw_set_color(c_black);
draw_text(xTitle+2+offsetX,yTitle+redOffsetCurr+2,titleText);
draw_set_color(c_black);
draw_text(xTitle-2+offsetX,yTitle+redOffsetCurr-2,titleText);
draw_set_color(redColor);
draw_text(xTitle+offsetX,yTitle+redOffsetCurr,titleText);
draw_set_color(c_black);
draw_text(xTitle+2-offsetX,yTitle-redOffsetCurr+2,titleText);
draw_set_color(c_black);
draw_text(xTitle-2-offsetX,yTitle-redOffsetCurr-2,titleText);
draw_set_color(blueColor);
draw_text(xTitle-offsetX,yTitle-redOffsetCurr,titleText);

draw_set_alpha(myAlpha);
draw_set_color(c_black);
draw_set_font(ft_infoText1);
draw_text(xPlay+2,yPlay+2,textPlay);
draw_set_color(c_black);
draw_set_font(ft_infoText1);
draw_text(xPlay-2,yPlay-2,textPlay);
draw_set_color(c_white);
draw_set_font(ft_infoText1);
draw_text(xPlay,yPlay,textPlay);


draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(ft_infoText);
draw_text(xPlay+1,yCredits+1,credits);
draw_set_color(c_black);
draw_set_font(ft_infoText);
draw_text(xPlay-1,yCredits-1,credits);
draw_set_color(c_white);
draw_set_font(ft_infoText);
draw_text(xPlay,yCredits,credits);

draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(ft_infoText);
draw_text(xPlay+1,yCreditsTwo+1,creditsTwo);
draw_set_color(c_black);
draw_set_font(ft_infoText);
draw_text(xPlay-1,yCreditsTwo-1,creditsTwo);
draw_set_color(c_white);
draw_set_font(ft_infoText);
draw_text(xPlay,yCreditsTwo,creditsTwo);