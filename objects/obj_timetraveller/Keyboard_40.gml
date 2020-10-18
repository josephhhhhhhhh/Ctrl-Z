/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2B475CC3
/// @DnDInput : 3
/// @DnDArgument : "expr" "!place_meeting(x, y+collisionSpeed,obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x, y+collisionSpeed,obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x, y+collisionSpeed,obj_switch)"
if(!place_meeting(x, y+collisionSpeed,obj_walls) && !place_meeting(x, y+collisionSpeed,obj_door) && !place_meeting(x, y+collisionSpeed,obj_switch))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7C06E081
	/// @DnDParent : 2B475CC3
	/// @DnDArgument : "y" "walkingspeed"
	/// @DnDArgument : "y_relative" "1"
	
	y += walkingspeed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 4C59C9B1
	/// @DnDDisabled : 1
	/// @DnDParent : 2B475CC3
	/// @DnDArgument : "angle" "180"


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