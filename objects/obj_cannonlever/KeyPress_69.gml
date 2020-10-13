/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 77760CDD
/// @DnDArgument : "expr" "distance_to_object(obj_timetraveller) < 15 && self.projectileready"
if(distance_to_object(obj_timetraveller) < 15 && self.projectileready)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 628B3F8D
	/// @DnDParent : 77760CDD
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "self.targetCannonID.fireoff"
	self.targetCannonID.fireoff = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B88ED8F
	/// @DnDParent : 77760CDD
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "self.projectileready"
	self.projectileready = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F6BCC90
	/// @DnDParent : 77760CDD
	/// @DnDArgument : "expr" "levercount+1"
	/// @DnDArgument : "var" "levercount"
	levercount = levercount+1;
}