/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 18258222
/// @DnDArgument : "speed" "7"
speed = 7;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 27501F0F
/// @DnDArgument : "expr" "place_meeting(x,y,obj_walls)"
if(place_meeting(x,y,obj_walls))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 673F8282
	/// @DnDParent : 27501F0F
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 129E7246
/// @DnDArgument : "expr" "place_meeting(x,y,obj_door)"
if(place_meeting(x,y,obj_door))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 52ADA8BB
	/// @DnDParent : 129E7246
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1581E11C
/// @DnDArgument : "expr" "place_meeting(x,y,obj_box)"
if(place_meeting(x,y,obj_box))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3084AF65
	/// @DnDParent : 1581E11C
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1ED05564
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09367D83
	/// @DnDParent : 1ED05564
	instance_destroy();
}