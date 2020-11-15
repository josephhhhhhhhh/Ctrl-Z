box_w = 300
box_h = 350


if (global.pause and not global.win){
	
	//BLACK OUT SCREEN
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(), false);
	draw_set_alpha(1);
	
	//BOX
	draw_set_color(c_black);
	//draw_rectangle(room_width/2 - box_w ,room_height/2 - box_h, room_width/2 + box_w, room_height/2 + box_h, false);
	draw_sprite_ext(icon_pauseUI,-1,room_width/2 - box_w ,room_height/2 - box_h,1,1,0,c_white,1)
	if(volumeLevel > 0){
		draw_sprite_ext(icon_sound,-1,room_width/2 - box_w +15,room_height/2 - box_h+50,0.8,0.8,0,c_white,1)
	}
	else{
		draw_sprite_ext(icon_sound_mute,-1,room_width/2 - box_w+15 ,room_height/2 - box_h+50,0.8,0.8,0,c_white,1)
	}
	
	
	//GAME PAUSED TEXT
	draw_set_halign(fa_center);
	draw_set_font(Font_title);
	draw_set_color(c_black);
	draw_text(room_width/2,room_height/2 -250, "GAME  PAUSED");
	
	//BUTTONS
	draw_set_font(Font_main)
	var i = 0
	repeat(pause_buttons) {
	
		draw_set_color(c_black);
		//draw_rectangle(pause_button_x1,pause_button_y1 + pause_button_h*i ,pause_button_x2, pause_button_y2 + pause_button_h*i, false);
		draw_sprite_ext(icon_button,-1,pause_button_x1,pause_button_y1 + pause_button_h*i,1,1,0,c_white,1)
	
		draw_set_color(c_black);
		
		if (pause_index == i) {
			draw_set_color(c_white);
			draw_sprite_ext(icon_button_pressed,-1,pause_button_x1,pause_button_y1 + pause_button_h*i,1,1,0,c_white,1)
		}
		draw_text(pause_button_x1 + 175, pause_button_y1 + 38 + pause_button_h*i - string_height(pause_button[i])/2 , pause_button[i]);
		
		i++;
	}
	
	
	draw_set_color(c_black);
}

if (global.htp){
	draw_sprite_ext(spr_htpMenu,-1,327.5,126.5,0.5,0.5,0,c_white,1)
}