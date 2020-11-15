/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6FFEFEF8
/// @DnDArgument : "expr" "obj_switchForCannons.isTriggered == false && hasBeenPressedOnce"
if(obj_switchForCannons.isTriggered == false && hasBeenPressedOnce)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 14C16B0F
	/// @DnDParent : 6FFEFEF8
	/// @DnDArgument : "spriteind" "spr_greenswitch1"
	/// @DnDSaveInfo : "spriteind" "spr_greenswitch1"
	sprite_index = spr_greenswitch1;
	image_index = 0;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0429B427
	/// @DnDParent : 6FFEFEF8
	/// @DnDArgument : "msg" ""sfc is false""
	show_debug_message(string("sfc is false"));
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 532CCA1F
/// @DnDArgument : "expr" "obj_switchForCannons.isTriggered == true && hasBeenPressedOnce"
if(obj_switchForCannons.isTriggered == true && hasBeenPressedOnce)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 71237862
	/// @DnDParent : 532CCA1F
	/// @DnDArgument : "spriteind" "spr_greenswitch2"
	/// @DnDSaveInfo : "spriteind" "spr_greenswitch2"
	sprite_index = spr_greenswitch2;
	image_index = 0;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2B25977E
	/// @DnDParent : 532CCA1F
	/// @DnDArgument : "msg" ""sfc is true""
	show_debug_message(string("sfc is true"));
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
/// @DnDArgument : "msg" ""Switch count: " + string(switchCount)"
show_debug_message(string("Switch count: " + string(switchCount)));