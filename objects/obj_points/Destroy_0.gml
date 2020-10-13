/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 59278B04
/// @DnDArgument : "expr" "instance_exists(obj_angrypuff)"
if(instance_exists(obj_angrypuff))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74C1E53B
	/// @DnDParent : 59278B04
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "instance_nearest(x,y,obj_angrypuff).transformed"
	instance_nearest(x,y,obj_angrypuff).transformed = true;
}