/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 07CAC893
/// @DnDInput : 3
/// @DnDArgument : "expr" "!place_meeting(x, y-collisionSpeed, obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x, y-collisionSpeed, obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x, y-collisionSpeed, obj_switch)"
if(!place_meeting(x, y-collisionSpeed, obj_walls) && !place_meeting(x, y-collisionSpeed, obj_door) && !place_meeting(x, y-collisionSpeed, obj_switch))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 458F0D22
	/// @DnDParent : 07CAC893
	/// @DnDArgument : "y" "-walkingspeed"
	/// @DnDArgument : "y_relative" "1"
	
	y += -walkingspeed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 6919F975
	/// @DnDParent : 07CAC893
	image_angle = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42312F35
	/// @DnDParent : 07CAC893
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "ydir"
	ydir = -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3ACE4FD1
	/// @DnDParent : 07CAC893
	/// @DnDArgument : "msg" ""move up""
	show_debug_message(string("move up"));
}