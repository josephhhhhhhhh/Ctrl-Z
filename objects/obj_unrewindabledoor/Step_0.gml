/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25E02635
/// @DnDArgument : "expr" "keythatopensallishere"
if(keythatopensallishere)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E9C3050
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "doorClosed"
	doorClosed = false;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 37A5A59C
	/// @DnDParent : 25E02635
	/// @DnDArgument : "angle" "startAngle + 180"
	image_angle = startAngle + 180;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75446B1E
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0188BCC5
	/// @DnDParent : 75446B1E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "doorClosed"
	doorClosed = true;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 6778A167
	/// @DnDParent : 75446B1E
	/// @DnDArgument : "angle" "startAngle"
	image_angle = startAngle;
}