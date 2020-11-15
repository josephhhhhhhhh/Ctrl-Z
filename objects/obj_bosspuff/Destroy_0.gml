/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3EE76C70
/// @DnDArgument : "expr" "!spookyMode"
if(!spookyMode)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 47130BFA
	/// @DnDParent : 3EE76C70
	/// @DnDArgument : "xpos" "1311"
	/// @DnDArgument : "ypos" "462"
	/// @DnDArgument : "objectid" "obj_endportal"
	/// @DnDSaveInfo : "objectid" "obj_endportal"
	instance_create_layer(1311, 462, "Instances", obj_endportal);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 36A5026D
	/// @DnDParent : 3EE76C70
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)effect_create_above(ef_explosion, x, y, 500, c_lime);$(13_10)"
	/// @description Execute Code
	effect_create_above(ef_explosion, x, y, 500, c_lime);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1676415C
/// @DnDArgument : "expr" "spookyMode"
if(spookyMode)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 45B390AF
	/// @DnDParent : 1676415C
	/// @DnDArgument : "room" "Room16"
	/// @DnDSaveInfo : "room" "Room16"
	room_goto(Room16);
}