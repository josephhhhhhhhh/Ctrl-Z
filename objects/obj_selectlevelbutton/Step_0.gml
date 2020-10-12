/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3A9141A9
/// @DnDArgument : "expr" "mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_newgamebutton.id)"
if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_newgamebutton.id))
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 404676B9
	/// @DnDParent : 3A9141A9
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);
}