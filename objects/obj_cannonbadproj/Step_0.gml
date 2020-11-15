/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0842C8C4
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1E7453B2
	/// @DnDParent : 0842C8C4
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 5BCD1962
	/// @DnDParent : 0842C8C4
	exit;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1D5C6BE3
/// @DnDArgument : "speed" "8"
speed = 8;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 591EA578
/// @DnDArgument : "direction" "image_angle"
direction = image_angle;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0FA07345
/// @DnDArgument : "expr" "place_meeting(x,y,obj_walls)"
if(place_meeting(x,y,obj_walls))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 332E89F0
	/// @DnDParent : 0FA07345
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 046E8268
/// @DnDArgument : "expr" "place_meeting(x,y,obj_box)"
if(place_meeting(x,y,obj_box))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 440A9A7E
	/// @DnDParent : 046E8268
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4546EFAA
/// @DnDArgument : "expr" "place_meeting(x,y,obj_unrewindablebox)"
if(place_meeting(x,y,obj_unrewindablebox))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 14E79F6F
	/// @DnDParent : 4546EFAA
	instance_destroy();
}