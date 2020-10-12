/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4CE8DABD
/// @DnDArgument : "expr" "place_meeting(x + 32 ,y, obj_walls) || place_meeting(x+32,y,obj_angrypuff) || place_meeting(x - 32 ,y, obj_walls) || place_meeting(x - 32 ,y, obj_angrypuff) "
if(place_meeting(x + 32 ,y, obj_walls) || place_meeting(x+32,y,obj_angrypuff) || place_meeting(x - 32 ,y, obj_walls) || place_meeting(x - 32 ,y, obj_angrypuff) )
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
/// @DnDHash : 1F55A0F6
/// @DnDArgument : "expr" "obj_switch.isTriggered || obj_pressureplate.isTriggered|| startWithMove "
if(obj_switch.isTriggered || obj_pressureplate.isTriggered|| startWithMove )
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
/// @DnDHash : 1AC828FA
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F3BC78C
	/// @DnDParent : 1AC828FA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "enemystartsmoving"
	enemystartsmoving = false;
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