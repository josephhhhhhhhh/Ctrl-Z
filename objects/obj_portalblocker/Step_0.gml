/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 68ECC5D9
/// @DnDArgument : "expr" "obj_pressureplate.changeInPP"
if(obj_pressureplate.changeInPP)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6400C368
	/// @DnDParent : 68ECC5D9
	/// @DnDArgument : "soundid" "Door_Open_new"
	/// @DnDSaveInfo : "soundid" "Door_Open_new"
	audio_play_sound(Door_Open_new, 0, 0);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 614220BD
/// @DnDArgument : "expr" "obj_pressureplate.isTriggered"
if(obj_pressureplate.isTriggered)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 5A892D34
	/// @DnDParent : 614220BD
	/// @DnDArgument : "angle" "180"
	image_angle = 180;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 78E8F9F7
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 2C50128E
	/// @DnDParent : 78E8F9F7
	image_angle = 0;
}