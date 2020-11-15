box_w = 500
box_h = 340


if (global.win){
	
	//BLACK OUT SCREEN
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(), false);
	draw_set_alpha(1);
	
	//BOX
	draw_set_color(c_black);
	//draw_rectangle(room_width/2 - box_w ,room_height/2 - box_h, room_width/2 + box_w, room_height/2 + box_h, false);
	draw_sprite_ext(icon_winUI,-1, room_width/2 - box_w ,room_height/2 - box_h , 1,1,0,c_white,1)
	
	
	//GAME PAUSED TEXT
	draw_set_halign(fa_center);
	draw_set_font(Font_title);
	draw_set_color(c_black);
	draw_text(room_width/2,room_height/2 -230, "LEVEL  COMPLETE !!");
	
	//TIME AND STUFF
	draw_set_font(Font_main);
	draw_sprite_ext(icon_time,-1,win_button_x1 - 455 , win_button_y1 + 0,  1.5,1.5,0,c_white,1)
	draw_text(win_button_x1 - 235 , win_button_y1 + 37, ( "Time: " + string(round(timekeeper/3600)) + string("m  ") + string(round(timekeeper/60)%60)+string("s")));
	
	for (var i = 0; i < 3; i ++ ){
		draw_sprite_ext(icon_floppy_black,-1, win_button_x1 - 490 + (140*i), win_button_y1 + 160 , 1.8,1.8,0,c_white,1)
	}
	
	if (obj_timetraveller.pointsCollected > 0){
		for (var i = 0; i < obj_timetraveller.pointsCollected; i ++ ){
			draw_sprite_ext(spr_points,-1,win_button_x1 - 497 + (140*i), win_button_y1 + 147,  1.8,1.8,0,c_white,1)}
	}
	
	//BUTTONS

	var i = 0
	repeat(win_buttons) {
	
		//draw_set_color(c_dkgray);
		//draw_rectangle(win_button_x1, win_button_y1  + win_button_h*i ,win_button_x2, win_button_y2  + win_button_h*i, false);
		draw_sprite_ext(icon_button,-1,win_button_x1,win_button_y1 + win_button_h*i,1,1,0,c_white,1)
	
		draw_set_color(c_black);
		
		if (win_index == i){
			draw_set_color(c_white);
			draw_sprite_ext(icon_button_pressed,-1,win_button_x1,win_button_y1 + win_button_h*i,1,1,0,c_white,1)
		}
		draw_text(win_button_x1 + 175, win_button_y1 + 38 + win_button_h*i - string_height(win_button[i])/2 , win_button[i]);
	
		i++;
	}
	
	
	draw_set_color(c_black);
}
