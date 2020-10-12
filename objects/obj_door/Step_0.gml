/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 705E7966
/// @DnDArgument : "expr" "currPressureState"
/// @DnDArgument : "var" "prevPressureState"
prevPressureState = currPressureState;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E7302A7
/// @DnDArgument : "expr" "obj_pressureplate.isTriggered"
/// @DnDArgument : "var" "currPressureState"
currPressureState = obj_pressureplate.isTriggered;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 309B3679
/// @DnDArgument : "expr" "currSwitchState"
/// @DnDArgument : "var" "prevSwitchState"
prevSwitchState = currSwitchState;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F7F2DFF
/// @DnDArgument : "expr" "obj_switch.isTriggered"
/// @DnDArgument : "var" "currSwitchState"
currSwitchState = obj_switch.isTriggered;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 13C5A86F
/// @DnDArgument : "expr" "(currSwitchState!=prevSwitchState || currPressureState !=prevPressureState) "
if((currSwitchState!=prevSwitchState || currPressureState !=prevPressureState) )
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

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 31964282
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 451B9083
	/// @DnDParent : 31964282
	/// @DnDArgument : "expr" "keythatopensallishere"
	if(keythatopensallishere)
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

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2EDECF9C
	/// @DnDParent : 31964282
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 39AC6641
		/// @DnDParent : 2EDECF9C
		/// @DnDArgument : "angle" "startAngle"
		image_angle = startAngle;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71595CAB
		/// @DnDParent : 2EDECF9C
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "doorClosed"
		doorClosed = true;
	}
}