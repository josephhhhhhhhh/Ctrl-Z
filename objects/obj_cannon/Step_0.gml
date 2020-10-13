/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 42E5A9CA
/// @DnDArgument : "expr" "fireoff"
if(fireoff)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4AD17646
	/// @DnDParent : 42E5A9CA
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y+sprite_height/2"
	/// @DnDArgument : "objectid" "obj_projectile"
	/// @DnDSaveInfo : "objectid" "obj_projectile"
	instance_create_layer(x, y+sprite_height/2, "Instances", obj_projectile);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17E83A73
	/// @DnDParent : 42E5A9CA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "fireoff"
	fireoff = false;
}