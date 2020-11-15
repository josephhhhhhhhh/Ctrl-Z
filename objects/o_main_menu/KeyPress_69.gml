if (not newgame){

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
else{
	file_delete("Save.sav")
	room_goto(Room_Act1)
	newgame=0
}