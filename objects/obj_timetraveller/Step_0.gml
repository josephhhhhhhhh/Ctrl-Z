/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E242BDA
/// @DnDArgument : "var" "hasTouchedLava"
/// @DnDArgument : "value" "true"
if(hasTouchedLava == true)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 36D9DB3C
	/// @DnDParent : 2E242BDA
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 28F8561D
/// @DnDArgument : "expr" "place_meeting(x,y, obj_angrypuff)"
if(place_meeting(x,y, obj_angrypuff))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 257E4DBF
	/// @DnDParent : 28F8561D
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1D22B783
/// @DnDArgument : "expr" "place_meeting(x,y, obj_bosspuff)"
if(place_meeting(x,y, obj_bosspuff))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 70C298F0
	/// @DnDParent : 1D22B783
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 111324D3
/// @DnDArgument : "expr" "place_meeting(x,y, obj_teardrop)"
if(place_meeting(x,y, obj_teardrop))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 304ED99C
	/// @DnDParent : 111324D3
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E699357
/// @DnDArgument : "expr" "place_meeting(x,y, obj_circlingangrypuff)"
if(place_meeting(x,y, obj_circlingangrypuff))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0AA0A219
	/// @DnDParent : 7E699357
	instance_destroy();
}