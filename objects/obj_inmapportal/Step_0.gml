/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 29EB926C
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CF2EB26
	/// @DnDParent : 29EB926C
	/// @DnDArgument : "expr" "maptargetX"
	/// @DnDArgument : "var" "obj_timetraveller.x"
	obj_timetraveller.x = maptargetX;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17F11C02
	/// @DnDParent : 29EB926C
	/// @DnDArgument : "expr" "maptargetY"
	/// @DnDArgument : "var" "obj_timetraveller.y"
	obj_timetraveller.y = maptargetY;
}