/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 16A27918
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37C311F0
	/// @DnDParent : 16A27918
	/// @DnDArgument : "expr" "obj_timetraveller.keyParts+1"
	/// @DnDArgument : "var" "obj_timetraveller.keyParts"
	obj_timetraveller.keyParts = obj_timetraveller.keyParts+1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0C9332B5
	/// @DnDParent : 16A27918
	/// @DnDArgument : "soundid" "Crystal_Pick_Up_new"
	/// @DnDSaveInfo : "soundid" "Crystal_Pick_Up_new"
	audio_play_sound(Crystal_Pick_Up_new, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64FD9AAA
	/// @DnDParent : 16A27918
	instance_destroy();
}