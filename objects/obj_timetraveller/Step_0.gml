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