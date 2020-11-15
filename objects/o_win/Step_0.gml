var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);

if not (global.win) exit;

if (win_index < 0) win_index = win_buttons - 1;
if (win_index > win_buttons - 1) win_index = 0;

//SOUND
if (win_index != last_win){
	audio_stop_sound(snd_menu_switch)
	audio_play_sound(snd_menu_switch,1,false)
};

last_win = win_index




//MOUSE DETECTION
if not (global.htp) {
	for (var i = 0; i < win_buttons; i ++ ) {
	
		if point_in_rectangle(mousex, mousey, win_button_x1,win_button_y1 + win_button_h*i ,win_button_x2, win_button_y2 + win_button_h*i){
			win_index = i
		
			if (left_click){
				switch(win_index) {
					
					case 0:
						if room == Room22{
							room_goto(Room_Act2)
							global.pause = 0
							global.win = 0
							break
						}
						else{
							show_debug_message("NEXT LEVEL");
							//room_goto(obj_endportal.targetRoom)
							room_goto_next()
							global.pause = 0
							global.win = 0
							break;
						}
	
					case 1:
						show_debug_message("RESTART LEVEL");
						room_goto(room)
						global.pause = 0
						global.win = 0
						break;
			
					case 2:
						show_debug_message("EXIT LEVEL");
						room_goto(Menu_StartMenu)
						global.pause = 0
						global.win = 0
						break;

					}
			}
		}

	}
}


// WASD AND ARROW KEYS

if keyboard_check_pressed(ord("W")) win_index -= 1;
if keyboard_check_pressed(ord("S")) win_index += 1;
if keyboard_check_pressed(vk_up) win_index -= 1;
if keyboard_check_pressed(vk_down) win_index += 1;



