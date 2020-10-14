/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6FFEFEF8
/// @DnDArgument : "expr" "obj_switch.isTriggered == false"
if(obj_switch.isTriggered == false)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 0C26AD2C
	/// @DnDParent : 6FFEFEF8
	image_angle = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1FB897D2
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 28B2D788
	/// @DnDParent : 1FB897D2
	/// @DnDArgument : "angle" "180"
	image_angle = 180;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 37DD7EBC
/// @DnDArgument : "expr" "switchCount > countLimit"
if(switchCount > countLimit)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 191E472F
	/// @DnDParent : 37DD7EBC
	/// @DnDArgument : "expr" "countLimit"
	/// @DnDArgument : "var" "switchCount"
	switchCount = countLimit;
}