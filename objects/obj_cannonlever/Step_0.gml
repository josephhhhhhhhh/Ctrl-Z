/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5015133F
/// @DnDArgument : "expr" "self.projectileready"
if(self.projectileready)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3E1C55A3
	/// @DnDParent : 5015133F
	/// @DnDArgument : "spriteind" "spr_greenswitch1"
	/// @DnDSaveInfo : "spriteind" "spr_greenswitch1"
	sprite_index = spr_greenswitch1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 608DC9C3
/// @DnDArgument : "expr" "!self.projectileready"
if(!self.projectileready)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 583CCB51
	/// @DnDParent : 608DC9C3
	/// @DnDArgument : "spriteind" "spr_greenswitch2"
	/// @DnDSaveInfo : "spriteind" "spr_greenswitch2"
	sprite_index = spr_greenswitch2;
	image_index = 0;
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