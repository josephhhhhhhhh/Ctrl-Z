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
	/// @DnDArgument : "expr" "place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox) "
	/// @DnDArgument : "not" "1"
	if(!(place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox) ))
	{
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 57DB456B
		/// @DnDParent : 717C0AA6
		/// @DnDArgument : "msg" ""get destroyed""
		show_debug_message(string("get destroyed"));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24107AE5
		/// @DnDParent : 717C0AA6
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "obj_timetraveller.hasTouchedLava"
		obj_timetraveller.hasTouchedLava = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7046FB8F
	/// @DnDParent : 79D62316
	else
	{
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 669ACA5B
		/// @DnDParent : 7046FB8F
		/// @DnDArgument : "msg" ""dont die""
		show_debug_message(string("dont die"));
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 185FD1DB
/// @DnDArgument : "expr" "place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox) "
if(place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox) )
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7B1CDF84
	/// @DnDParent : 185FD1DB
	/// @DnDArgument : "msg" ""have senses""
	show_debug_message(string("have senses"));
}