//on contact

//room_goto(targetRoom);
global.win = 1
global.pause = 1
show_debug_message("WIN BABY")
audio_play_sound(chipquest,1,false);

global.levelpass[int64(string_digits(room_get_name(room)))] = 1

if (file_exists("Save.sav")) file_delete("Save.sav");
var SaveFile = file_text_open_write("Save.sav");
var SavedRoom = int64(string_digits(room_get_name(room)));
file_text_write_real(SaveFile,SavedRoom);
file_text_close(SaveFile);