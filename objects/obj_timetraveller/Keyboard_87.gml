/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6470DA47
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2E4B7642
	/// @DnDParent : 6470DA47
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AE2F6F0
/// @DnDInput : 4
/// @DnDArgument : "expr" "!place_meeting(x, y-collisionSpeed, obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x, y-collisionSpeed, obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x, y-collisionSpeed, obj_switch)"
/// @DnDArgument : "expr_3" "!place_meeting(x, y-collisionSpeed, obj_cannon)"
if(!place_meeting(x, y-collisionSpeed, obj_walls) && !place_meeting(x, y-collisionSpeed, obj_door) && !place_meeting(x, y-collisionSpeed, obj_switch) && !place_meeting(x, y-collisionSpeed, obj_cannon))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0AE084AA
	/// @DnDParent : 5AE2F6F0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_timetravellerwalkup"
	/// @DnDSaveInfo : "spriteind" "spr_timetravellerwalkup"
	sprite_index = spr_timetravellerwalkup;
	image_index += 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 29E7BE58
	/// @DnDParent : 5AE2F6F0
	/// @DnDArgument : "y" "-walkingspeed"
	/// @DnDArgument : "y_relative" "1"
	
	y += -walkingspeed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1915693D
	/// @DnDParent : 5AE2F6F0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "ydir"
	ydir = -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3EAA2D1A
	/// @DnDParent : 5AE2F6F0
	/// @DnDArgument : "msg" ""move up""
	show_debug_message(string("move up"));
}