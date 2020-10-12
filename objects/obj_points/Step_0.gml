/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 04092EE2
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AA1B586
	/// @DnDParent : 04092EE2
	/// @DnDArgument : "expr" "++obj_timetraveller.pointsCollected"
	/// @DnDArgument : "var" "obj_timetraveller.pointsCollected"
	obj_timetraveller.pointsCollected = ++obj_timetraveller.pointsCollected;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F9E866C
	/// @DnDParent : 04092EE2
	instance_destroy();
}