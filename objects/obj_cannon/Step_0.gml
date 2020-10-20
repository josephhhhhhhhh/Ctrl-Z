/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 01CEDEA7
/// @DnDArgument : "expr" "timecounter+1"
/// @DnDArgument : "var" "timecounter"
timecounter = timecounter+1;

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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5D30A7EC
/// @DnDArgument : "expr" "cannonBad"
if(cannonBad)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0A386EFC
	/// @DnDParent : 5D30A7EC
	/// @DnDArgument : "expr" "(timecounter%49)==0 "
	if((timecounter%49)==0 )
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 607CE705
		/// @DnDParent : 0A386EFC
		/// @DnDArgument : "xpos" "x-6"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "var" "tempBad"
		/// @DnDArgument : "objectid" "obj_cannonbadproj"
		/// @DnDSaveInfo : "objectid" "obj_cannonbadproj"
		tempBad = instance_create_layer(x-6, y, "Instances", obj_cannonbadproj);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 711FE6B4
		/// @DnDParent : 0A386EFC
		/// @DnDArgument : "code" "with(tempBad){$(13_10)	cannonDirection = other.image_angle-90;$(13_10)}$(13_10)"
		with(tempBad){
			cannonDirection = other.image_angle-90;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 594BF12F
/// @DnDArgument : "expr" "instance_exists(obj_switch)"
if(instance_exists(obj_switch))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2CD0B4DA
	/// @DnDParent : 594BF12F
	/// @DnDArgument : "expr" "obj_switch.isTriggered"
	if(obj_switch.isTriggered)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 184BFE58
		/// @DnDParent : 2CD0B4DA
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "resetCannon"
		resetCannon = true;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 463D1824
		/// @DnDParent : 2CD0B4DA
		/// @DnDArgument : "code" "instance_destroy(obj_cannonbadproj, true);$(13_10)$(13_10)"
		instance_destroy(obj_cannonbadproj, true);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31BCAF0F
/// @DnDArgument : "expr" "resetCannon"
if(resetCannon)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1868D190
	/// @DnDParent : 31BCAF0F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "resetCannon"
	resetCannon = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DAFF7A8
	/// @DnDParent : 31BCAF0F
	/// @DnDArgument : "expr" "!obj_switch.isTriggered"
	/// @DnDArgument : "var" "obj_switch.isTriggered"
	obj_switch.isTriggered = !obj_switch.isTriggered;
}