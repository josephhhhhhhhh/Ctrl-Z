 
var i = 0
for (i = 0; i < lines; i += 1) {
	
	draw_set_font(Font_cambria);
	draw_set_halign(fa_left);
	draw_set_color(c_black);
	
	liney2 = liney1 - 32*(linecount-i)
	

	
	if (linecount > i-1 and liney2 > 120 ){
		if (string_pos(you,line[i]) ){
			liney2 += gapline
			draw_set_color(c_black);
			draw_set_font(Font_cambria)
			draw_text(linex, liney2 , line[i]);
			draw_set_color(c_blue);
			draw_set_font(Font_cambriabold)
			draw_text(linex-1, liney2, you);
		}
		else if (string_pos(sup,line[i]) ){
			liney2 += gapline
			draw_set_color(c_black);
			draw_set_font(Font_cambria)
			draw_text(linex, liney2 , line[i]);
			draw_set_font(Font_cambriabold);
			draw_set_color(c_red);
			draw_text(linex-1, liney2, sup);
		}
		else if (string_pos(intro,line[i]) ){
			liney2 += gapline
			draw_set_color(c_black);
			draw_set_font(Font_cambria)
			draw_text(linex, liney2 , line[i]);
			draw_set_font(Font_cambriabold)
			draw_set_color(c_red);
			draw_text(linex-1, liney2, intro);
		}
		else if (linecount = lines-1 and  i = linecount){
			draw_text(linex, liney2, line[i]);
			draw_set_color(c_white);
			draw_rectangle(142,646, 690,681, false);
			draw_set_font(Font_UI);
			draw_set_color(c_red);
			draw_text(152, 652 , "PRESS  ANY  KEY  TO  CONTINUE.");
			
		}
		else{
			draw_set_color(c_black);
			draw_set_font(Font_cambria);
			draw_text(linex, liney2, line[i]);
		}
	}

}

draw_set_halign(fa_center);
draw_set_font(Font_UI);
draw_set_color(c_white);
draw_text(room_width/2, 740 , skipstr);