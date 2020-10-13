/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 47130834
/// @DnDArgument : "expr" "instance_exists(obj_pressureplate)"
if(instance_exists(obj_pressureplate))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 764F2F5D
	/// @DnDParent : 47130834
	/// @DnDArgument : "expr" "obj_pressureplate.isTriggered"
	/// @DnDArgument : "var" "currPressureState"
	currPressureState = obj_pressureplate.isTriggered;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4995C5A5
	/// @DnDParent : 47130834
	/// @DnDArgument : "expr" "obj_pressureplate.isTriggered"
	/// @DnDArgument : "var" "prevPressureState"
	prevPressureState = obj_pressureplate.isTriggered;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 70980AD6
/// @DnDArgument : "expr" "instance_exists(obj_switch)"
if(instance_exists(obj_switch))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A1F4287
	/// @DnDParent : 70980AD6
	/// @DnDArgument : "expr" "obj_switch.isTriggered"
	/// @DnDArgument : "var" "currSwitchState"
	currSwitchState = obj_switch.isTriggered;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0168A62B
	/// @DnDParent : 70980AD6
	/// @DnDArgument : "expr" "obj_switch.isTriggered"
	/// @DnDArgument : "var" "prevSwitchState"
	prevSwitchState = obj_switch.isTriggered;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18E1F13A
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "doorClosed"
doorClosed = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05B0CAA8
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "startAngle"
startAngle = image_angle;