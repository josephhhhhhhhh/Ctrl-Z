/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1188E39A
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 385C2B9F
	/// @DnDParent : 1188E39A
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2B475CC3
/// @DnDInput : 4
/// @DnDArgument : "expr" "!place_meeting(x, y+collisionSpeed,obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x, y+collisionSpeed,obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x, y+collisionSpeed,obj_switch)"
/// @DnDArgument : "expr_3" "!place_meeting(x, y+collisionSpeed,obj_cannon)"
if(!place_meeting(x, y+collisionSpeed,obj_walls) && !place_meeting(x, y+collisionSpeed,obj_door) && !place_meeting(x, y+collisionSpeed,obj_switch) && !place_meeting(x, y+collisionSpeed,obj_cannon))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 62126A94
	/// @DnDParent : 2B475CC3
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_timetravellerwalkdown"
	/// @DnDSaveInfo : "spriteind" "spr_timetravellerwalkdown"
	sprite_index = spr_timetravellerwalkdown;
	image_index += 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7C06E081
	/// @DnDParent : 2B475CC3
	/// @DnDArgument : "y" "walkingspeed"
	/// @DnDArgument : "y_relative" "1"
	
	y += walkingspeed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11A81189
	/// @DnDParent : 2B475CC3
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "ydir"
	ydir = 1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 19B07DD1
	/// @DnDParent : 2B475CC3
	/// @DnDArgument : "msg" ""move down""
	show_debug_message(string("move down"));
}