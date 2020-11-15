var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);


//DEBUG MODE CANNON CLICKS
if (instance_exists(obj_cannonlever) and global.debug) {
	if (left_click){
		obj_cannonlever.fireoff = true
		instance_create_layer(mousex, mousey+sprite_height/2, "Instances", obj_projectile);
	}
}

if not (global.pause) exit;
if (global.win) exit;

if (pause_index < 0) pause_index = pause_buttons - 1;
if (pause_index > pause_buttons - 1) pause_index = 0;

//SOUND
if (pause_index != last_pause){
	audio_stop_sound(snd_menu_switch)
	audio_play_sound(snd_menu_switch,1,false)
};

last_pause = pause_index




//MOUSE DETECTION
if not (global.htp) {
	
	if (point_in_rectangle(mousex, mousey, room_width/2 - box_w+15 ,room_height/2 - box_h+50,room_width/2 - box_w+50 ,room_height/2 - box_h+90) and volumeLevel > 0){
		if (left_click){
			volumeLevel = 0
			audio_master_gain(volumeLevel)
		}
	}
	else if (point_in_rectangle(mousex, mousey, room_width/2 - box_w+15 ,room_height/2 - box_h+50,room_width/2 - box_w+50 ,room_height/2 - box_h+90) and volumeLevel < 1){
		if (left_click){
			volumeLevel = 1
			audio_master_gain(volumeLevel)
		}
	}
		
	for (var i = 0; i < pause_buttons; i ++ ) {
	
		if point_in_rectangle(mousex, mousey, pause_button_x1,pause_button_y1 + pause_button_h*i ,pause_button_x2, pause_button_y2 + pause_button_h*i){
			pause_index = i
		
			if (left_click){
				audio_play_sound(snd_menu_select,1,false)
				switch(pause_index) {
					
					case 0:
						show_debug_message("RESUME");
						global.pause = 0;
						break;
	
					case 1:
						show_debug_message("RESTART LEVEL");
						room_goto(room)
						global.pause = 0
						break;
					
					case 2:
						show_debug_message("HOW TO PLAY");
						global.htp = 1
						break;
			
					case 3:
						show_debug_message("EXIT LEVEL");
						room_goto(Menu_StartMenu)
						global.pause = 0
						break;

					}
			}
		}

	}
}
else{
	if (left_click){
		global.htp = 0
	}
}

// WASD AND ARROW KEYS
if not (global.htp) {
	if keyboard_check_pressed(ord("W")) pause_index -= 1;
	if keyboard_check_pressed(ord("S")) pause_index += 1;
	if keyboard_check_pressed(vk_up) pause_index -= 1;
	if keyboard_check_pressed(vk_down) pause_index += 1;
}



