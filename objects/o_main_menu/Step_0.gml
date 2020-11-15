global.pause = 0;
global.htp = 0;
 
var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);


if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

if (menu_index != last_selected){
	audio_stop_sound(snd_menu_switch)
	audio_play_sound(snd_menu_switch,1,false)
};

last_selected = menu_index

if (not newgame){
	// ARROW KEYS
	if keyboard_check_pressed(vk_up) menu_index -= 2;
	if keyboard_check_pressed(vk_down) menu_index += 2;
	if keyboard_check_pressed(vk_left) menu_index -= 1;
	if keyboard_check_pressed(vk_right) menu_index += 1;


	//WASD
	if keyboard_check_pressed(ord("W")) menu_index -= 2;
	if keyboard_check_pressed(ord("S")) menu_index += 2;
	if keyboard_check_pressed(ord("A")) menu_index -= 1;
	if keyboard_check_pressed(ord("D")) menu_index += 1;

	// MOUSE


	var i
	for (i = 0; i < buttons; i += 1) {
	
		if (i < 2){
			col = ls_x + gap*i
			row = ls_y + hgap
		}
		if (i > 1 and i < 4 ){
			col = ls_x + gap*(i-2)
			row = ls_y  + hgap*2
		}
		if (i > 3){
			col = ls_x + gap*(i-4)
			row = ls_y  + hgap*3
		}
	
		if point_in_rectangle(mousex, mousey, col - string_width(button[i])/2, row , col + string_width(button[i])/2, row + button_h){
		menu_index = i
	
	
		if (left_click){
			audio_play_sound(snd_menu_select,1,false)
			switch(menu_index) {
	
			case 0:
				show_debug_message("NEW GAME");
				if (not file_exists("Save.sav")){
					room_goto(Room_Act1)
				}
				else{
					newgame = 1
				}
				break;
			
			case 1:
				show_debug_message("SELECT LEVEL");
				room_goto(Menu_SelectLevel)
				break;
			case 2:
				show_debug_message("HOW TO PLAY");
				room_goto(Menu_HowToPlay)
				break;
			case 3:
				show_debug_message("CREDITS");
				room_goto(Menu_Credits)
				break;
			case 4:
				show_debug_message("END GAME");
				game_end();
				break;

			}
	
		}
	
		}

	}
}
else{
	if point_in_rectangle(mousex, mousey, menu_x-137.5, menu_y+11.5 ,menu_x+137.5 , menu_y+61.5){
		if left_click{
			file_delete("Save.sav")
			room_goto(Room_Act1)
			newgame=0
		}
	}
	if point_in_rectangle(mousex, mousey, menu_x-137.5,menu_y+61.5+43 , menu_x+137.5,menu_y+61.5+93 ){
		if left_click{
			newgame=0
		}
	}
}