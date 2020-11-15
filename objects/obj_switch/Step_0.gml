/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6FFEFEF8
/// @DnDArgument : "expr" "obj_switch.isTriggered == false && hasBeenPressedOnce"
if(obj_switch.isTriggered == false && hasBeenPressedOnce)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 14C16B0F
	/// @DnDParent : 6FFEFEF8
	/// @DnDArgument : "spriteind" "spr_switch1"
	/// @DnDSaveInfo : "spriteind" "spr_switch1"
	sprite_index = spr_switch1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 532CCA1F
/// @DnDArgument : "expr" "obj_switch.isTriggered == true && hasBeenPressedOnce"
if(obj_switch.isTriggered == true && hasBeenPressedOnce)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 71237862
	/// @DnDParent : 532CCA1F
	/// @DnDArgument : "spriteind" "spr_switch2"
	/// @DnDSaveInfo : "spriteind" "spr_switch2"
	sprite_index = spr_switch2;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 415D7CB6
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "switchPressed"
switchPressed = false;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1DF98498
/// @DnDArgument : "expr" "transformPuffs && hasBeenPressedOnce"
if(transformPuffs && hasBeenPressedOnce)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1782F554
	/// @DnDParent : 1DF98498
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "obj_circlingangrypuff.transformed"
	obj_circlingangrypuff.transformed = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EDFC28A
	/// @DnDParent : 1DF98498
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "transformPuffs"
	transformPuffs = false;
}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 22EE0C3A
/// @DnDDisabled : 1
/// @DnDArgument : "msg" ""Switch count: " + string(switchCount)"