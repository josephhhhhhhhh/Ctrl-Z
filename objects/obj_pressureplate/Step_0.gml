/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 352FE3FD
/// @DnDArgument : "expr" "place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox)"
if(place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 287256A3
	/// @DnDParent : 352FE3FD
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "obj_pressureplate.isTriggered"
	obj_pressureplate.isTriggered = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1F7A02E7
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FA29109
	/// @DnDParent : 1F7A02E7
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "obj_pressureplate.isTriggered"
	obj_pressureplate.isTriggered = false;
}