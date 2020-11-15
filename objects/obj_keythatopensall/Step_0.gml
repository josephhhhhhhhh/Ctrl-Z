/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 776F1FE5
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2623ADBC
	/// @DnDParent : 776F1FE5
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "pickedUpByTimeTraveller"
	pickedUpByTimeTraveller = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 086B99B4
	/// @DnDParent : 776F1FE5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "keyTaken"
	keyTaken += 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 001450CB
/// @DnDArgument : "expr" "pickedUpByTimeTraveller"
if(pickedUpByTimeTraveller)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E9C3410
	/// @DnDParent : 001450CB
	/// @DnDArgument : "expr" "obj_timetraveller.x+16"
	/// @DnDArgument : "var" "x"
	x = obj_timetraveller.x+16;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33AACFF6
	/// @DnDParent : 001450CB
	/// @DnDArgument : "expr" "obj_timetraveller.y"
	/// @DnDArgument : "var" "y"
	y = obj_timetraveller.y;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6FB2FA0A
/// @DnDArgument : "expr" "place_meeting(x,y,obj_unrewindabledoor)  && (instance_nearest(x,y,obj_unrewindabledoor).doorClosed)"
if(place_meeting(x,y,obj_unrewindabledoor)  && (instance_nearest(x,y,obj_unrewindabledoor).doorClosed))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 553F6A86
	/// @DnDParent : 6FB2FA0A
	/// @DnDArgument : "expr" "obj_trackKey.keyUsedCount+1"
	/// @DnDArgument : "var" "obj_trackKey.keyUsedCount"
	obj_trackKey.keyUsedCount = obj_trackKey.keyUsedCount+1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 600811DA
	/// @DnDParent : 6FB2FA0A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "instance_nearest(x,y,obj_unrewindabledoor).keythatopensallishere"
	instance_nearest(x,y,obj_unrewindabledoor).keythatopensallishere = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 685570D7
	/// @DnDParent : 6FB2FA0A
	/// @DnDArgument : "expr" "obj_timetraveller.currentInteractionCount+1"
	/// @DnDArgument : "var" "obj_timetraveller.currentInteractionCount"
	obj_timetraveller.currentInteractionCount = obj_timetraveller.currentInteractionCount+1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 758C02D5
	/// @DnDParent : 6FB2FA0A
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0D2ACA21
/// @DnDArgument : "expr" "place_meeting(x,y,obj_door) && (instance_nearest(x,y,obj_door).doorClosed)"
if(place_meeting(x,y,obj_door) && (instance_nearest(x,y,obj_door).doorClosed))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46C0BB64
	/// @DnDParent : 0D2ACA21
	/// @DnDArgument : "expr" "obj_trackKey.keyUsedCount+1"
	/// @DnDArgument : "var" "obj_trackKey.keyUsedCount"
	obj_trackKey.keyUsedCount = obj_trackKey.keyUsedCount+1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B12C5C4
	/// @DnDParent : 0D2ACA21
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "instance_nearest(x,y,obj_door).keythatopensallishere"
	instance_nearest(x,y,obj_door).keythatopensallishere = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 410E19B6
	/// @DnDParent : 0D2ACA21
	/// @DnDArgument : "expr" "obj_timetraveller.currentInteractionCount+1"
	/// @DnDArgument : "var" "other.currentInteractionCount"
	other.currentInteractionCount = obj_timetraveller.currentInteractionCount+1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 16D0E03E
	/// @DnDParent : 0D2ACA21
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35116D15
/// @DnDArgument : "expr" "keyTaken == 1"
if(keyTaken == 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 288D195C
	/// @DnDParent : 35116D15
	/// @DnDArgument : "soundid" "Crystal_Pick_Up_new"
	/// @DnDSaveInfo : "soundid" "Crystal_Pick_Up_new"
	audio_play_sound(Crystal_Pick_Up_new, 0, 0);
}