if not (global.win) exit;
else{
	audio_play_sound(snd_menu_select,1,false)
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