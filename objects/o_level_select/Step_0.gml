

if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

if (menu_index != last_selected){
	audio_stop_sound(snd_menu_switch)
	audio_play_sound(snd_menu_switch,1,false)
};

last_selected = menu_index


// ARROW KEYS
if keyboard_check_pressed(vk_up) menu_index -= 5;
if keyboard_check_pressed(vk_down) menu_index += 5;
if keyboard_check_pressed(vk_left) menu_index -= 1;
if keyboard_check_pressed(vk_right) menu_index += 1;


//WASD
if keyboard_check_pressed(ord("W")) menu_index -= 5;
if keyboard_check_pressed(ord("S")) menu_index += 5;
if keyboard_check_pressed(ord("A")) menu_index -= 1;
if keyboard_check_pressed(ord("D")) menu_index += 1;
if keyboard_check_pressed(vk_escape) room_goto(Menu_StartMenu);

// MOUSE STUFF
var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);


if point_in_rectangle(mousex, mousey, 30, 30 , 96, 96){
	
	if (left_click){
		room_goto(Menu_StartMenu)
	}
}


// MOUSE LEVEL SELECT


var i
for (i = 0; i < buttons; i += 1) {
	
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
	
	
	
	if point_in_rectangle(mousex, mousey, col -xgap/2, row - spritegap - 70, col + xgap/2, row + string_height(button[i])){
	menu_index = i
	
		if (menu_index == 0 and left_click and not global.levelpass[1]){
			audio_play_sound(snd_menu_select,1,false);
			room_goto(Room_Act1);
			break;
		}
		else if (left_click and global.levelpass[i]){
			audio_play_sound(snd_menu_select,1,false)
			switch(menu_index) {
				case menu_index:
					show_debug_message(button[menu_index]);
					room_goto(level[menu_index])
					break;
			}
		}
	}	
}


