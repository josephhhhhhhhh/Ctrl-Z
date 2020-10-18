/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7465A4B9
/// @DnDInput : 3
/// @DnDArgument : "expr" "!place_meeting(x-collisionSpeed, y, obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x-collisionSpeed, y, obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x-collisionSpeed, y, obj_switch)"
if(!place_meeting(x-collisionSpeed, y, obj_walls) && !place_meeting(x-collisionSpeed, y, obj_door) && !place_meeting(x-collisionSpeed, y, obj_switch))
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 6DF8CCA0
	/// @DnDDisabled : 1
	/// @DnDParent : 7465A4B9
	/// @DnDArgument : "angle" "90"


	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 72CA20FE
	/// @DnDParent : 7465A4B9
	/// @DnDArgument : "x" "-walkingspeed"
	/// @DnDArgument : "x_relative" "1"
	x += -walkingspeed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FB0F049
	/// @DnDParent : 7465A4B9
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "xdir"
	xdir = -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 59F37880
	/// @DnDParent : 7465A4B9
	/// @DnDArgument : "msg" ""move left""
	show_debug_message(string("move left"));
}