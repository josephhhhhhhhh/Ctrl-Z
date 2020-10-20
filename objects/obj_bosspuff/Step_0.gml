/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5476580E
/// @DnDArgument : "expr" "spookyMode"
/// @DnDArgument : "not" "1"
if(!(spookyMode))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7C827FAA
	/// @DnDParent : 5476580E
	/// @DnDArgument : "expr" "x < 230"
	if(x < 230)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33A7974D
		/// @DnDParent : 7C827FAA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "xdir"
		xdir = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 12AA5DB0
	/// @DnDParent : 5476580E
	/// @DnDArgument : "expr" "x > 1090"
	if(x > 1090)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5998CD5E
		/// @DnDParent : 12AA5DB0
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "xdir"
		xdir = -1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04532CC1
	/// @DnDParent : 5476580E
	/// @DnDArgument : "expr" "random_range(3,5)*xdir"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += random_range(3,5)*xdir;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7A6FA57F
	/// @DnDParent : 5476580E
	/// @DnDArgument : "expr" "y < 288"
	if(y < 288)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43E4C2F2
		/// @DnDParent : 7A6FA57F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "ydir"
		ydir = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 29DA9FB9
	/// @DnDParent : 5476580E
	/// @DnDArgument : "expr" "y > 480"
	if(y > 480)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EBDBBB0
		/// @DnDParent : 29DA9FB9
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "ydir"
		ydir = -1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 78A4287A
	/// @DnDParent : 5476580E
	/// @DnDArgument : "expr" "bosshealth==0"
	if(bosshealth==0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 26E9B0A6
		/// @DnDParent : 78A4287A
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41ECEFC2
	/// @DnDParent : 5476580E
	/// @DnDArgument : "expr" "random_range(3,7)*ydir"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += random_range(3,7)*ydir;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 23F4D111
/// @DnDArgument : "expr" "spookyMode"
if(spookyMode)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 263A7668
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "i==0"
	if(i==0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 6ED474ED
		/// @DnDParent : 263A7668
		/// @DnDArgument : "code" "if point_distance(x, y, -96, 320) > 5$(13_10)   {$(13_10)   move_towards_point(-96, 320, 5);$(13_10)   }$(13_10)else speed = 0;$(13_10)"
		if point_distance(x, y, -96, 320) > 5
		   {
		   move_towards_point(-96, 320, 5);
		   }
		else speed = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 374D478F
		/// @DnDParent : 263A7668
		/// @DnDArgument : "expr" "speed == 0"
		if(speed == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 767843F8
			/// @DnDParent : 374D478F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "i"
			i = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 45D5669A
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "i==1"
	if(i==1)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 55DAF2D4
		/// @DnDParent : 45D5669A
		/// @DnDArgument : "code" "$(13_10)if point_distance(x, y, 800, 896) > 5$(13_10)   {$(13_10)   move_towards_point(800, 896, 5);$(13_10)   }$(13_10)else speed = 0;"
		
		if point_distance(x, y, 800, 896) > 5
		   {
		   move_towards_point(800, 896, 5);
		   }
		else speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 150BE4DB
		/// @DnDParent : 45D5669A
		/// @DnDArgument : "var" "i"
		i = 0;
	}
}