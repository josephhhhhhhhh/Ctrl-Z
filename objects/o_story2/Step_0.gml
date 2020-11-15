var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);


if (left_click and linecount != lines){
  linecount ++
}

if (linecount == 0){
  if(soundcount == 0){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
}

if (linecount == 2){
  if(soundcount == 1){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
}

if (linecount == 3){
  audio_play_sound(snd_beep,1,false)
  linecount = 4
}

if (linecount == 6){
  if(soundcount == 2){
    audio_play_sound(snd_beep,1,false)
    soundcount ++
  }
}


if (linecount == 8){
  if left_click{
    room_goto(Menu_Credits)
  }
}

if point_in_rectangle(mousex, mousey, room_width/2 - string_width(skipstr)/2 , 740, room_width/2 + string_width(skipstr)/2,740 + string_height(skipstr)){
  if left_click{
    room_goto(Menu_Credits)
  }
}