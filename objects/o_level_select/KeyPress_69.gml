//PRESS E BECAUSE STACEY KEEPS ASKING FOR THIS WTF SRSLY

audio_play_sound(snd_menu_select,1,false)

switch(menu_index) {
	case menu_index:
		if (menu_index == 0 and not global.levelpass[1]){
			audio_play_sound(snd_menu_select,1,false);
			room_goto(Room_Act1);
			break;
		}
		else if global.levelpass[menu_index]{
			show_debug_message(button[menu_index]);
			room_goto(level[menu_index])
			break;
		}
}