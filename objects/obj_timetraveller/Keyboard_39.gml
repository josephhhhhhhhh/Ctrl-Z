/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2DFB5914
/// @DnDInput : 3
/// @DnDArgument : "expr" "!place_meeting(x+collisionSpeed, y, obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x+collisionSpeed, y, obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x+collisionSpeed, y, obj_switch)"
if(!place_meeting(x+collisionSpeed, y, obj_walls) && !place_meeting(x+collisionSpeed, y, obj_door) && !place_meeting(x+collisionSpeed, y, obj_switch))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3155FA5D
	/// @DnDParent : 2DFB5914
	/// @DnDArgument : "x" "walkingspeed"
	/// @DnDArgument : "x_relative" "1"
	x += walkingspeed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 0EE532FA
	/// @DnDDisabled : 1
	/// @DnDParent : 2DFB5914
	/// @DnDArgument : "angle" "270"


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