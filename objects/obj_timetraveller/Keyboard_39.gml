/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CE263C2
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1FA6B24B
	/// @DnDParent : 5CE263C2
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2DFB5914
/// @DnDInput : 4
/// @DnDArgument : "expr" "!place_meeting(x+collisionSpeed, y, obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x+collisionSpeed, y, obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x+collisionSpeed, y, obj_switch)"
/// @DnDArgument : "expr_3" "!place_meeting(x+collisionSpeed, y, obj_cannon)"
if(!place_meeting(x+collisionSpeed, y, obj_walls) && !place_meeting(x+collisionSpeed, y, obj_door) && !place_meeting(x+collisionSpeed, y, obj_switch) && !place_meeting(x+collisionSpeed, y, obj_cannon))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 00FA6C53
	/// @DnDParent : 2DFB5914
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_timetravellerwalkright"
	/// @DnDSaveInfo : "spriteind" "spr_timetravellerwalkright"
	sprite_index = spr_timetravellerwalkright;
	image_index += 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3155FA5D
	/// @DnDParent : 2DFB5914
	/// @DnDArgument : "x" "walkingspeed"
	/// @DnDArgument : "x_relative" "1"
	x += walkingspeed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2487A614
	/// @DnDParent : 2DFB5914
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "xdir"
	xdir = 1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 143B1808
	/// @DnDParent : 2DFB5914
	/// @DnDArgument : "msg" ""move right""
	show_debug_message(string("move right"));
}