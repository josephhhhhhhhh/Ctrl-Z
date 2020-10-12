/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 429C705A
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
/// @DnDArgument : "caption" ""Game Over!""
draw_text(room_width/2, room_height/2, string("Game Over!") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4B32AF63
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2 + 50"
/// @DnDArgument : "caption" ""press r to Restart""
draw_text(room_width/2, room_height/2 + 50, string("press r to Restart") + "");

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 23986979
/// @DnDArgument : "key" "ord("R")"
var l23986979_0;
l23986979_0 = keyboard_check_pressed(ord("R"));
if (l23986979_0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 334F62C8
	/// @DnDParent : 23986979
	game_restart();
}