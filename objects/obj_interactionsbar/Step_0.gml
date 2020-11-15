/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AD46A6B
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 5BC3A0A2
	/// @DnDParent : 6AD46A6B
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A598F30
/// @DnDArgument : "expr" "timekeeper + 1"
/// @DnDArgument : "var" "timekeeper"
timekeeper = timekeeper + 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0CBBFA44
/// @DnDArgument : "expr" "startDelay "
if(startDelay )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F04F845
	/// @DnDParent : 0CBBFA44
	/// @DnDArgument : "expr" "timekeeper"
	/// @DnDArgument : "var" "startofEnd"
	startofEnd = timekeeper;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C732A08
	/// @DnDParent : 0CBBFA44
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "startDelay"
	startDelay = false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 469A9578
/// @DnDArgument : "expr" "(timekeeper - startofEnd) >= 120 && startofEnd!=0"
if((timekeeper - startofEnd) >= 120 && startofEnd!=0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0E9665B8
	/// @DnDParent : 469A9578
	room_restart();
}