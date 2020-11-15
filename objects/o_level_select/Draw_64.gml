for(var i=0; i<buttons; ++i){
	
	draw_set_font(Font_main);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	
	
	if (menu_index == i) draw_set_color(c_white);
	
	if (i < 5){
		col = ls_x + xgap*i
		row = ls_y
	}
	
	
	if (i > 4 and i < 10){
		col = ls_x + xgap*(i-5)
		row = ls_y + ygap*4
	}
	
	if (i > 9 and i < 15){
		col = ls_x + xgap*(i -10)
		row = ls_y + ygap*8
	}
	
	if (i > 14 and i < 20){
		col = ls_x + xgap*(i-15)
		row = ls_y + ygap*12
	}
	
	if (i > 19 and i < 25){
		col = ls_x + xgap*(i-20)
		row = ls_y + ygap*16
	}
	
	//SPRITES
	draw_sprite_ext(icon_level,-1, col - string_width(button[i])/4, row - spritegap - string_height(button[i]),1,1,0,c_white,1)
	if (not global.levelpass[i]){
		draw_sprite_ext(icon_exit,-1, col - string_width(button[i])/4 + 18, row - spritegap - string_height(button[i])+27,0.5,0.5,0,c_white,1)
	}
	
	//TEXT
	draw_text(col, row, button[i]);
	
	//OPEN FOLDER
	if (menu_index == i and global.levelpass[i]) {
		draw_sprite_ext(icon_level_mouse,-1, col - string_width(button[i])/4, row - spritegap - string_height(button[i]),1,1,0,c_white,1)
	}
	
	//Testing out the rectangle for click detection:
	//draw_rectangle(col-200 , row , col + 200, row + string_height(button[i]),false)
}