if (global.win) exit;
if not (global.pause) exit;
if (global.htp = 1) global.htp = 0;
else{
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