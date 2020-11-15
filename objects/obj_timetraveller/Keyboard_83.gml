/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57C6CC15
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2E9A3EE6
	/// @DnDParent : 57C6CC15
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 416B9DBE
/// @DnDInput : 4
/// @DnDArgument : "expr" "!place_meeting(x, y+collisionSpeed,obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x, y+collisionSpeed,obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x, y+collisionSpeed,obj_switch)"
/// @DnDArgument : "expr_3" "!place_meeting(x, y+collisionSpeed,obj_cannon)"
if(!place_meeting(x, y+collisionSpeed,obj_walls) && !place_meeting(x, y+collisionSpeed,obj_door) && !place_meeting(x, y+collisionSpeed,obj_switch) && !place_meeting(x, y+collisionSpeed,obj_cannon))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 76A6382C
	/// @DnDParent : 416B9DBE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_timetravellerwalkdown"
	/// @DnDSaveInfo : "spriteind" "spr_timetravellerwalkdown"
	sprite_index = spr_timetravellerwalkdown;
	image_index += 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1D9A8273
	/// @DnDParent : 416B9DBE
	/// @DnDArgument : "y" "walkingspeed"
	/// @DnDArgument : "y_relative" "1"
	
	y += walkingspeed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13E42C0A
	/// @DnDParent : 416B9DBE
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "ydir"
	ydir = 1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 39DFF09F
	/// @DnDParent : 416B9DBE
	/// @DnDArgument : "msg" ""move down""
	show_debug_message(string("move down"));
}