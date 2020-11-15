/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 29EB926C
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5A77CB52
	/// @DnDParent : 29EB926C
	/// @DnDArgument : "soundid" "Teleportation_Portal_new"
	/// @DnDSaveInfo : "soundid" "Teleportation_Portal_new"
	audio_play_sound(Teleportation_Portal_new, 0, 0);

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