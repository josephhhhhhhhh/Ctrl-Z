menu_x = display_get_gui_width()/2
menu_y = display_get_gui_height()/2

button_h = 110
ls_x = 750
ls_y = 0
gap = 300
hgap = 170

col = 0
row = 0

//buttons
button[0] = "New  Game"
button[1] = "Select  Level"
button[2] = "How  to  Play"
button[3] = "Credits"
button[4] = "Exit"
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

icon[0] = icon_play
icon[1] = icon_level
icon[2] = icon_htp
icon[3] = icon_credits
icon[4] = icon_exit

//FUN
ctrl = 0
z = 0

//DEBUG
global.debug = 0;

//VOLUME
globalvar volumeLevel;
volumeLevel = 1;
audio_master_gain(volumeLevel);

//NEWGAMEWARNING
newgame = 0