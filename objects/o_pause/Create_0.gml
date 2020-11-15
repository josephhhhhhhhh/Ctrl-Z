global.pause = 0;
global.htp = 0;

pause_button[0] = "Resume";
pause_button[1] = "Restart  Level";
pause_button[2] = "How  to  Play";
pause_button[3] = "Exit  Level";

pause_buttons = array_length_1d(pause_button);

pause_index = 0;
last_pause = 0;

pause_button_h = 100;

pause_button_x1 = room_width/2 - 170
pause_button_x2 = room_width/2 + 170
pause_button_y1 = room_height/2 - 150
pause_button_y2 = room_height/2 - 90