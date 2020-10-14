/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4CE8DABD
/// @DnDArgument : "expr" "place_meeting(x + 32 ,y, obj_walls) || place_meeting(x+32,y,obj_angrypuff) || place_meeting(x - 32 ,y, obj_walls) || place_meeting(x - 32 ,y, obj_angrypuff)  "
if(place_meeting(x + 32 ,y, obj_walls) || place_meeting(x+32,y,obj_angrypuff) || place_meeting(x - 32 ,y, obj_walls) || place_meeting(x - 32 ,y, obj_angrypuff)  )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 751AF516
	/// @DnDParent : 4CE8DABD
	/// @DnDArgument : "expr" "dir*-1"
	/// @DnDArgument : "var" "dir"
	dir = dir*-1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55E056BC
/// @DnDArgument : "expr" "canWalkThroughDoors"
/// @DnDArgument : "not" "1"
if(!(canWalkThroughDoors))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7F60F216
	/// @DnDParent : 55E056BC
	/// @DnDArgument : "expr" " place_meeting(x - 32 ,y, obj_door) || place_meeting(x + 32 ,y, obj_door)"
	if( place_meeting(x - 32 ,y, obj_door) || place_meeting(x + 32 ,y, obj_door))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1135153A
		/// @DnDParent : 7F60F216
		/// @DnDArgument : "expr" "dir*-1"
		/// @DnDArgument : "var" "dir"
		dir = dir*-1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 06C5D02D
/// @DnDArgument : "expr" "instance_exists(obj_switch)"
if(instance_exists(obj_switch))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1F55A0F6
	/// @DnDParent : 06C5D02D
	/// @DnDArgument : "expr" "obj_switch.isTriggered"
	if(obj_switch.isTriggered)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41D802A6
		/// @DnDParent : 1F55A0F6
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "enemystartsmoving"
		enemystartsmoving = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7CB49073
	/// @DnDParent : 06C5D02D
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34AA10DC
		/// @DnDParent : 7CB49073
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "enemystartsmoving"
		enemystartsmoving = false;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6EED228F
/// @DnDArgument : "expr" "instance_exists(obj_pressureplate)"
if(instance_exists(obj_pressureplate))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6E988FED
	/// @DnDParent : 6EED228F
	/// @DnDArgument : "expr" " obj_pressureplate.isTriggered "
	if( obj_pressureplate.isTriggered )
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49B54267
		/// @DnDParent : 6E988FED
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "enemystartsmoving"
		enemystartsmoving = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 61004FCA
	/// @DnDParent : 6EED228F
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FA1A5EA
		/// @DnDParent : 61004FCA
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "enemystartsmoving"
		enemystartsmoving = false;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7D95C086
/// @DnDArgument : "expr" "startWithMove"
if(startWithMove)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D839EC1
	/// @DnDParent : 7D95C086
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "enemystartsmoving"
	enemystartsmoving = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7B5B9F75
/// @DnDArgument : "expr" "enemystartsmoving"
if(enemystartsmoving)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0DA20477
	/// @DnDParent : 7B5B9F75
	/// @DnDArgument : "x" "walkspeed*dir"
	/// @DnDArgument : "x_relative" "1"
	x += walkspeed*dir;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6ECBB6BB
/// @DnDArgument : "expr" "transformed"
if(transformed)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 785373FE
	/// @DnDParent : 6ECBB6BB
	/// @DnDArgument : "objind" "obj_sadpuff"
	/// @DnDSaveInfo : "objind" "obj_sadpuff"
	instance_change(obj_sadpuff, true);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 240045AD
	/// @DnDParent : 6ECBB6BB
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "obj_sadpuff.startWithMove"
	obj_sadpuff.startWithMove = true;
}