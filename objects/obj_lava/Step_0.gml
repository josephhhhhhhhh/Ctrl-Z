/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 79D62316
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 717C0AA6
	/// @DnDParent : 79D62316
	/// @DnDArgument : "expr" "place_meeting(x,y,obj_box)"
	/// @DnDArgument : "not" "1"
	if(!(place_meeting(x,y,obj_box)))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24107AE5
		/// @DnDParent : 717C0AA6
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "obj_timetraveller.hasTouchedLava"
		obj_timetraveller.hasTouchedLava = true;
	}
}