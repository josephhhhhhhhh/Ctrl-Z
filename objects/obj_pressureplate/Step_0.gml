/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 175AF5B0
/// @DnDArgument : "expr" "place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox)"
if(place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D873ECD
	/// @DnDParent : 175AF5B0
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isTriggered"
	isTriggered = true;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 4D85025B
	/// @DnDParent : 175AF5B0
	/// @DnDArgument : "msg" ""isTriggered true""
	show_debug_message(string("isTriggered true"));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5EF6E0F9
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FFCCEAE
	/// @DnDParent : 5EF6E0F9
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "isTriggered"
	isTriggered = false;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3BE7C4B9
	/// @DnDParent : 5EF6E0F9
	/// @DnDArgument : "msg" ""isTriggered false""
	show_debug_message(string("isTriggered false"));
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2265080B
/// @DnDArgument : "expr" "timecounter+1"
/// @DnDArgument : "var" "timecounter"
timecounter = timecounter+1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 39CC15C4
/// @DnDArgument : "expr" "isTriggered && timecounter == 5"
if(isTriggered && timecounter == 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61723E72
	/// @DnDParent : 39CC15C4
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "startAtPP"
	startAtPP = true;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2924E5E6
	/// @DnDParent : 39CC15C4
	/// @DnDArgument : "msg" ""start at pp true""
	show_debug_message(string("start at pp true"));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1141314E
/// @DnDArgument : "expr" "!isTriggered && timecounter == 5"
if(!isTriggered && timecounter == 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C4BC107
	/// @DnDParent : 1141314E
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "startAtPP"
	startAtPP = false;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 72C8A462
	/// @DnDParent : 1141314E
	/// @DnDArgument : "msg" ""start at pp false""
	show_debug_message(string("start at pp false"));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0C00290E
/// @DnDArgument : "expr" "!(place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox)) && startAtPP && timecounter > 5"
if(!(place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox)) && startAtPP && timecounter > 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68C9200A
	/// @DnDParent : 0C00290E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "boxCount"
	boxCount = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11404263
	/// @DnDParent : 0C00290E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "hasShifted"
	hasShifted = true;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 1C61A6B9
	/// @DnDParent : 0C00290E
	/// @DnDArgument : "msg" ""box count 1""
	show_debug_message(string("box count 1"));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 40442E69
/// @DnDArgument : "expr" "(place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox)) && !startAtPP && timecounter > 5"
if((place_meeting(x,y,obj_box) || place_meeting(x,y,obj_unrewindablebox)) && !startAtPP && timecounter > 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 773BBBF5
	/// @DnDParent : 40442E69
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "boxCount"
	boxCount = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CF4AFA8
	/// @DnDParent : 40442E69
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "hasShifted"
	hasShifted = true;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0800B98C
	/// @DnDParent : 40442E69
	/// @DnDArgument : "msg" ""eyyyy""
	show_debug_message(string("eyyyy"));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 05B51272
/// @DnDArgument : "expr" "!isTriggered && instance_exists(obj_angrypuff)"
if(!isTriggered && instance_exists(obj_angrypuff))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 760E75BB
	/// @DnDParent : 05B51272
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "obj_angrypuff.alternateOn"
	obj_angrypuff.alternateOn = true;
}