/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3A9141A9
/// @DnDArgument : "expr" "mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_exitbutton.id)"
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_exitbutton.id))
{
	/// @DnDAction : YoYo Games.Game.End_Game
	/// @DnDVersion : 1
	/// @DnDHash : 26714BB3
	/// @DnDParent : 3A9141A9
	game_end();
}