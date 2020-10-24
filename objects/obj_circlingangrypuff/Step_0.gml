/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 19FDE8F3
/// @DnDArgument : "expr" "place_meeting(x,y,obj_turnright) && !touchingTile"
if(place_meeting(x,y,obj_turnright) && !touchingTile)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44A4AB26
	/// @DnDParent : 19FDE8F3
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "turnRight"
	turnRight = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 161BF344
	/// @DnDParent : 19FDE8F3
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "touchingTile"
	touchingTile = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64EAD507
/// @DnDArgument : "expr" "turnRight"
if(turnRight)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D47C403
	/// @DnDParent : 64EAD507
	/// @DnDArgument : "expr" "direction+turnAngle"
	/// @DnDArgument : "var" "direction"
	direction = direction+turnAngle;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AB20B46
	/// @DnDParent : 64EAD507
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "turnRight"
	turnRight = false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2390FE0A
/// @DnDArgument : "expr" "!place_meeting(x,y,obj_turnright)"
if(!place_meeting(x,y,obj_turnright))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B89CF13
	/// @DnDParent : 2390FE0A
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "touchingTile"
	touchingTile = false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3CB9DD62
/// @DnDArgument : "expr" "transformed"
if(transformed)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 37F4134E
	/// @DnDParent : 3CB9DD62
	/// @DnDArgument : "objind" "obj_circlingsadpuff"
	/// @DnDSaveInfo : "objind" "obj_circlingsadpuff"
	instance_change(obj_circlingsadpuff, true);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 448CB821
/// @DnDArgument : "expr" "shootTears"
if(shootTears)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5E417A8E
	/// @DnDParent : 448CB821
	/// @DnDArgument : "expr" "(timecounter%29)==0"
	if((timecounter%29)==0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0F97BD82
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "var" "tempTear"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_teardrop"
		/// @DnDSaveInfo : "objectid" "obj_teardrop"
		var tempTear = instance_create_layer(x, y, "Instances", obj_teardrop);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 702AB4CC
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "code" "with (tempTear)$(13_10)    {$(13_10)     direction = other.direction;$(13_10)    }"
		with (tempTear)
		    {
		     direction = other.direction;
		    }
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 22461390
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "var" "tempTear1"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_teardrop"
		/// @DnDSaveInfo : "objectid" "obj_teardrop"
		var tempTear1 = instance_create_layer(x, y, "Instances", obj_teardrop);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 7EC6D8F5
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "code" "with (tempTear1)$(13_10)    {$(13_10)     direction = other.direction + 90;$(13_10)    }"
		with (tempTear1)
		    {
		     direction = other.direction + 90;
		    }
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 51AF6116
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "var" "tempTear2"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_teardrop"
		/// @DnDSaveInfo : "objectid" "obj_teardrop"
		var tempTear2 = instance_create_layer(x, y, "Instances", obj_teardrop);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 61B8C890
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "code" "with (tempTear2)$(13_10)    {$(13_10)     direction = other.direction + 180;$(13_10)    }"
		with (tempTear2)
		    {
		     direction = other.direction + 180;
		    }
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 46AC694B
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "var" "tempTear3"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_teardrop"
		/// @DnDSaveInfo : "objectid" "obj_teardrop"
		var tempTear3 = instance_create_layer(x, y, "Instances", obj_teardrop);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 2D24183A
		/// @DnDParent : 5E417A8E
		/// @DnDArgument : "code" "with (tempTear3)$(13_10)    {$(13_10)     direction = other.direction + 270;$(13_10)    }"
		with (tempTear3)
		    {
		     direction = other.direction + 270;
		    }
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 30E7C344
/// @DnDArgument : "expr" "timecounter+1"
/// @DnDArgument : "var" "timecounter"
timecounter = timecounter+1;