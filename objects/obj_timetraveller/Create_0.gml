/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15FB5820
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "xdir"
xdir = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38652A90
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "ydir"
ydir = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7EDD3233
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "walkingspeed"
walkingspeed = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44C8C0FE
/// @DnDArgument : "expr" "walkingspeed+2"
/// @DnDArgument : "var" "collisionSpeed"
collisionSpeed = walkingspeed+2;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 7495C29A
image_angle = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 25DD7CCF
/// @DnDArgument : "spriteind" "spr_timetravellerwalkdown"
/// @DnDSaveInfo : "spriteind" "spr_timetravellerwalkdown"
sprite_index = spr_timetravellerwalkdown;
image_index = 0;