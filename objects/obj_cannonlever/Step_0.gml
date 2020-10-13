/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5015133F
/// @DnDArgument : "expr" "self.projectileready"
if(self.projectileready)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D439425
	/// @DnDParent : 5015133F
	/// @DnDArgument : "expr" "self.startAngle+90"
	/// @DnDArgument : "var" "self.image_angle"
	self.image_angle = self.startAngle+90;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 608DC9C3
/// @DnDArgument : "expr" "!self.projectileready"
if(!self.projectileready)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EF831BC
	/// @DnDParent : 608DC9C3
	/// @DnDArgument : "expr" "self.startAngle"
	/// @DnDArgument : "var" "self.image_angle"
	self.image_angle = self.startAngle;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1E739F63
/// @DnDArgument : "expr" "levercount>2"
if(levercount>2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E16E974
	/// @DnDParent : 1E739F63
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "levercount"
	levercount = 2;
}