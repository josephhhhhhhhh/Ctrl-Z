/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 26AC924F
/// @DnDArgument : "soundid" "Player_Dies_new"
/// @DnDSaveInfo : "soundid" "Player_Dies_new"
audio_play_sound(Player_Dies_new, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5F310793
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "obj_interactionsbar.startDelay"
obj_interactionsbar.startDelay = true;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 37EC79B6
/// @DnDArgument : "xpos" "-500"
/// @DnDArgument : "ypos" "-500"
/// @DnDArgument : "objectid" "obj_timetraveller"
/// @DnDSaveInfo : "objectid" "obj_timetraveller"
instance_create_layer(-500, -500, "Instances", obj_timetraveller);