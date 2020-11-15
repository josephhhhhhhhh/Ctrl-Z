/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7BEDCC26
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2C6E506A
	/// @DnDParent : 7BEDCC26
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 44773E60
/// @DnDInput : 4
/// @DnDArgument : "expr" "!place_meeting(x-collisionSpeed, y, obj_walls)"
/// @DnDArgument : "expr_1" "!place_meeting(x-collisionSpeed, y, obj_door)"
/// @DnDArgument : "expr_2" "!place_meeting(x-collisionSpeed, y, obj_switch)"
/// @DnDArgument : "expr_3" "!place_meeting(x-collisionSpeed, y, obj_cannon)"
if(!place_meeting(x-collisionSpeed, y, obj_walls) && !place_meeting(x-collisionSpeed, y, obj_door) && !place_meeting(x-collisionSpeed, y, obj_switch) && !place_meeting(x-collisionSpeed, y, obj_cannon))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5D39DCA0
	/// @DnDParent : 44773E60
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_timetravellerwalkleft"
	/// @DnDSaveInfo : "spriteind" "spr_timetravellerwalkleft"
	sprite_index = spr_timetravellerwalkleft;
	image_index += 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5FBEA4E5
	/// @DnDParent : 44773E60
	/// @DnDArgument : "x" "-walkingspeed"
	/// @DnDArgument : "x_relative" "1"
	x += -walkingspeed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AE7F48E
	/// @DnDParent : 44773E60
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "xdir"
	xdir = -1;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 288A8E81
	/// @DnDParent : 44773E60
	/// @DnDArgument : "msg" ""move left""
	show_debug_message(string("move left"));
}