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
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 30E7C344
/// @DnDArgument : "expr" "timecounter+1"
/// @DnDArgument : "var" "timecounter"
timecounter = timecounter+1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 69A5C279
/// @DnDArgument : "expr" "place_meeting(x,y,obj_circlingangrypuff) || place_meeting(x,y, obj_walls) || place_meeting(x,y,obj_door) || place_meeting(x,y,obj_lava) || place_meeting(x,y,obj_unrewindablebox) || place_meeting(x,y,obj_box)"
if(place_meeting(x,y,obj_circlingangrypuff) || place_meeting(x,y, obj_walls) || place_meeting(x,y,obj_door) || place_meeting(x,y,obj_lava) || place_meeting(x,y,obj_unrewindablebox) || place_meeting(x,y,obj_box))
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 587189DC
	/// @DnDParent : 69A5C279
	/// @DnDArgument : "direction" "180"
	/// @DnDArgument : "direction_relative" "1"
	direction += 180;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 750C4F4D
	/// @DnDParent : 69A5C279
	/// @DnDArgument : "expr" "direction == 0"
	if(direction == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E880962
		/// @DnDParent : 750C4F4D
		/// @DnDArgument : "expr" "x+8"
		/// @DnDArgument : "var" "x"
		x = x+8;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 18417A60
	/// @DnDParent : 69A5C279
	/// @DnDArgument : "expr" "direction == 90"
	if(direction == 90)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DD2A57E
		/// @DnDParent : 18417A60
		/// @DnDArgument : "expr" "y-8"
		/// @DnDArgument : "var" "y"
		y = y-8;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 41FBE1BF
	/// @DnDParent : 69A5C279
	/// @DnDArgument : "expr" "direction == 180"
	if(direction == 180)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 712343CF
		/// @DnDParent : 41FBE1BF
		/// @DnDArgument : "expr" "x-8"
		/// @DnDArgument : "var" "x"
		x = x-8;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0B0174DA
	/// @DnDParent : 69A5C279
	/// @DnDArgument : "expr" "direction == 270"
	if(direction == 270)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1CC0CFCD
		/// @DnDParent : 0B0174DA
		/// @DnDArgument : "expr" "y+8"
		/// @DnDArgument : "var" "y"
		y = y+8;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2025039E
/// @DnDArgument : "expr" "point_distance(x,y, obj_unrewindablebox.x, obj_unrewindablebox.y) <=58"
if(point_distance(x,y, obj_unrewindablebox.x, obj_unrewindablebox.y) <=58)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 5E921302
	/// @DnDParent : 2025039E
	/// @DnDArgument : "direction" "180"
	/// @DnDArgument : "direction_relative" "1"
	direction += 180;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 13DAF0D3
/// @DnDArgument : "code" "if (place_meeting(x,y,obj_unrewindablebox)){$(13_10)  $(13_10)  for(var i=0; i<1000; ++i){$(13_10)    $(13_10)    //Right$(13_10)    if (!place_meeting(x+i,y,obj_unrewindablebox)){$(13_10)      x+=i;$(13_10)      break;$(13_10)    }$(13_10)    $(13_10)    //Left$(13_10)    if (!place_meeting(x-i,y,obj_unrewindablebox)){$(13_10)      x-=i;$(13_10)      break;$(13_10)    }$(13_10)    $(13_10)    //Up$(13_10)    if (!place_meeting(x,y-i,obj_unrewindablebox)){$(13_10)      y-=i;$(13_10)      break;$(13_10)    }$(13_10)    $(13_10)    //Down$(13_10)    if (!place_meeting(x,y+i,obj_unrewindablebox)){$(13_10)      y+=i;$(13_10)      break;$(13_10)    }$(13_10)    $(13_10)    //Top Right$(13_10)    if (!place_meeting(x+i,y-i,obj_unrewindablebox)){$(13_10)      x+=i;$(13_10)      y-=i;$(13_10)      break;$(13_10)    }$(13_10)    $(13_10)    //Top Left$(13_10)    if (!place_meeting(x-i,y-i,obj_unrewindablebox)){$(13_10)      x-=i;$(13_10)      y-=i;$(13_10)      break;$(13_10)    }$(13_10)    //Bottom Right$(13_10)    if (!place_meeting(x+i,y+i,obj_unrewindablebox)){$(13_10)      x+=i;$(13_10)      y+=i;$(13_10)      break;$(13_10)    }$(13_10)    $(13_10)    //Bottom Left$(13_10)    if (!place_meeting(x-i,y-i,obj_unrewindablebox)){$(13_10)      x-=i;$(13_10)      y+=i;$(13_10)      break;$(13_10)    }$(13_10)  }$(13_10)}"
if (place_meeting(x,y,obj_unrewindablebox)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_unrewindablebox)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_unrewindablebox)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_unrewindablebox)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_unrewindablebox)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_unrewindablebox)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_unrewindablebox)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_unrewindablebox)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_unrewindablebox)){
      x-=i;
      y+=i;
      break;
    }
  }
}