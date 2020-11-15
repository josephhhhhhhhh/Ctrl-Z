obj_timetraveller.currentInteractionCount = 10;
obj_timetraveller.maxInteractionCount = 10;
if(audio_is_playing(Sky_Puzzle)){
	audio_stop_sound(Sky_Puzzle);
}
if(!audio_is_playing(Virtual_World___AShamaluevMusic)){
	audio_play_sound(Virtual_World___AShamaluevMusic,1,true);
}
audio_play_sound(New_Level, 1, false);