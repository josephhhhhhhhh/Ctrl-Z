/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 451B9083
/// @DnDArgument : "expr" "keythatopensallishere "
if(keythatopensallishere )
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 48403864
	/// @DnDParent : 451B9083
	/// @DnDArgument : "angle" "startAngle + 180"
	image_angle = startAngle + 180;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6593125C
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "doorClosed"
	doorClosed = false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6A5102E8
/// @DnDArgument : "expr" "instance_exists(obj_pressureplate) "
if(instance_exists(obj_pressureplate) )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 705E7966
	/// @DnDParent : 6A5102E8
	/// @DnDArgument : "expr" "currPressureState"
	/// @DnDArgument : "var" "prevPressureState"
	prevPressureState = currPressureState;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E7302A7
	/// @DnDParent : 6A5102E8
	/// @DnDArgument : "expr" "obj_pressureplate.isTriggered"
	/// @DnDArgument : "var" "currPressureState"
	currPressureState = obj_pressureplate.isTriggered;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 233BFB9F
	/// @DnDParent : 6A5102E8
	/// @DnDArgument : "expr" "(currPressureState !=prevPressureState)"
	if((currPressureState !=prevPressureState))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 7775B3C7
		/// @DnDParent : 233BFB9F
		/// @DnDArgument : "angle" "180"
		/// @DnDArgument : "angle_relative" "1"
		image_angle += 180;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1592786F
		/// @DnDParent : 233BFB9F
		/// @DnDArgument : "expr" "!doorClosed"
		/// @DnDArgument : "var" "doorClosed"
		doorClosed = !doorClosed;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 457A924E
/// @DnDArgument : "expr" "instance_exists(obj_switch)"
if(instance_exists(obj_switch))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 309B3679
	/// @DnDParent : 457A924E
	/// @DnDArgument : "expr" "currSwitchState"
	/// @DnDArgument : "var" "prevSwitchState"
	prevSwitchState = currSwitchState;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F7F2DFF
	/// @DnDParent : 457A924E
	/// @DnDArgument : "expr" "obj_switch.isTriggered"
	/// @DnDArgument : "var" "currSwitchState"
	currSwitchState = obj_switch.isTriggered;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 13C5A86F
	/// @DnDParent : 457A924E
	/// @DnDArgument : "expr" "(currSwitchState!=prevSwitchState ) "
	if((currSwitchState!=prevSwitchState ) )
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 3C4BE085
		/// @DnDParent : 13C5A86F
		/// @DnDArgument : "angle" "180"
		/// @DnDArgument : "angle_relative" "1"
		image_angle += 180;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F33BBCF
		/// @DnDParent : 13C5A86F
		/// @DnDArgument : "expr" "!doorClosed"
		/// @DnDArgument : "var" "doorClosed"
		doorClosed = !doorClosed;
	}
}