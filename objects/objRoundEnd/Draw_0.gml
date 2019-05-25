/// @description Insert description here
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_font(ft_iroundText);
draw_set_color(c_black);
draw_text(room_width/2+2,room_height/8+2,"Next round starting in :");
draw_set_color(c_white);
draw_text(room_width/2,room_height/8,"Next round starting in :");

draw_set_font(ft_roundText);
draw_set_color(c_black);
draw_text(room_width/2+2,room_height/8+50+2,string(num));
draw_set_color(c_white);
draw_text(room_width/2,room_height/8+50,string(num));

draw_set_font(ft_iroundText);
draw_set_color(c_black);
draw_text(room_width/2+2,room_height/8+100+2,string(num)+"-"+string(num));
draw_set_color(c_white);
draw_text(room_width/2,room_height/8+100,string(num)+"-"+string(num));