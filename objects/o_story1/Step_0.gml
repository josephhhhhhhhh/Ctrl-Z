var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);


if (left_click and linecount != lines){
  linecount ++
}

else if (linecount == 0){
  if(audio_is_playing(snd_beep) == false and soundcount == 0){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
}

else if (linecount == 2){
  if(soundcount == 1){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 3){
  if(soundcount == 2){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 4){
  if(soundcount == 3){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 7){
  if(soundcount == 4){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 8){
  linecount ++
}

else if (linecount == 9){
  if(soundcount == 5){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 12){
  if(soundcount == 6){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 13){
  linecount ++
}

else if (linecount == 14){
  if(soundcount == 7){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 15){
  linecount ++
}

else if (linecount == 16){
  if(soundcount == 8){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
  linecount ++
}

else if (linecount == 17){
  if(soundcount == 9){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
}

if (linecount == lines){
  if left_click{
    room_goto(Room01)
  }
}

if point_in_rectangle(mousex, mousey, room_width/2 - string_width(skipstr)/2 , 740, room_width/2 + string_width(skipstr)/2,740 + string_height(skipstr)){
  if left_click{
    room_goto(Room01)
  }
}