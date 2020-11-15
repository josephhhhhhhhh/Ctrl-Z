if(audio_is_playing(Sky_Puzzle)){
	audio_stop_sound(Sky_Puzzle);
}
if(!audio_is_playing(Virtual_World___AShamaluevMusic)){
	audio_play_sound(Virtual_World___AShamaluevMusic,1,true);
}
audio_play_sound(New_Level, 1, false);