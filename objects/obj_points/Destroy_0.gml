/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 070A1FD0
/// @DnDArgument : "soundid" "Collect_floppy_disk_new"
/// @DnDSaveInfo : "soundid" "Collect_floppy_disk_new"
audio_play_sound(Collect_floppy_disk_new, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 59278B04
/// @DnDArgument : "expr" "instance_exists(obj_angrypuff) && nearestPoint"
if(instance_exists(obj_angrypuff) && nearestPoint)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74C1E53B
	/// @DnDParent : 59278B04
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "targetEnemyID.transformed"
	targetEnemyID.transformed = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2CF6C1B9
/// @DnDArgument : "expr" "instance_exists(obj_circlingangrypuff) && nearestPoint"
if(instance_exists(obj_circlingangrypuff) && nearestPoint)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 436771DF
	/// @DnDParent : 2CF6C1B9
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "targetEnemyID.transformed"
	targetEnemyID.transformed = true;
}