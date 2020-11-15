/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7468DBA7
/// @DnDArgument : "expr" "instance_exists(obj_pressureplate)"
if(instance_exists(obj_pressureplate))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7FB49537
	/// @DnDParent : 7468DBA7
	/// @DnDArgument : "expr" "obj_pressureplate.changeInPP"
	if(obj_pressureplate.changeInPP)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 06BA6EB0
		/// @DnDParent : 7FB49537
		/// @DnDArgument : "soundid" "Door_Open_new"
		/// @DnDSaveInfo : "soundid" "Door_Open_new"
		audio_play_sound(Door_Open_new, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 614220BD
	/// @DnDParent : 7468DBA7
	/// @DnDArgument : "expr" "obj_pressureplate.isTriggered "
	if(obj_pressureplate.isTriggered )
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
	/// @DnDParent : 7468DBA7
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 2C50128E
		/// @DnDParent : 78E8F9F7
		image_angle = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 750ADAE4
/// @DnDArgument : "expr" "instance_exists(obj_switch)"
if(instance_exists(obj_switch))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 51256974
	/// @DnDParent : 750ADAE4
	/// @DnDArgument : "expr" "obj_switch.switchPressed"
	if(obj_switch.switchPressed)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 690A3195
		/// @DnDParent : 51256974
		/// @DnDArgument : "soundid" "Door_Open_new"
		/// @DnDSaveInfo : "soundid" "Door_Open_new"
		audio_play_sound(Door_Open_new, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 68929DCD
	/// @DnDParent : 750ADAE4
	/// @DnDArgument : "expr" "obj_switch.isTriggered && obj_switch.hasBeenPressedOnce"
	if(obj_switch.isTriggered && obj_switch.hasBeenPressedOnce)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 09353677
		/// @DnDParent : 68929DCD
		/// @DnDArgument : "angle" "180"
		image_angle = 180;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 381B1854
	/// @DnDParent : 750ADAE4
	/// @DnDArgument : "expr" "!obj_switch.isTriggered && obj_switch.hasBeenPressedOnce"
	if(!obj_switch.isTriggered && obj_switch.hasBeenPressedOnce)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 4823EA1E
		/// @DnDParent : 381B1854
		image_angle = 0;
	}
}