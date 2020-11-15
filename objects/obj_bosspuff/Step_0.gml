/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EA76E77
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 52F1B056
	/// @DnDParent : 1EA76E77
	exit;
}

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
	/// @DnDHash : 63C17ECC
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "x < 230"
	if(x < 230)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 772D2AA6
		/// @DnDParent : 63C17ECC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "xdir"
		xdir = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 07FE60F1
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "x > 1090"
	if(x > 1090)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18DEAF20
		/// @DnDParent : 07FE60F1
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "xdir"
		xdir = -1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BC35AD3
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "random_range(3,5)*xdir"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += random_range(3,5)*xdir;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 461B474F
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "y < 288"
	if(y < 288)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48DEA82E
		/// @DnDParent : 461B474F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "ydir"
		ydir = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 54B3A63D
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "y > 480"
	if(y > 480)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DBF0F11
		/// @DnDParent : 54B3A63D
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "ydir"
		ydir = -1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 566B8E7F
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "bosshealth==0"
	if(bosshealth==0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 481E73CD
		/// @DnDParent : 566B8E7F
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16192CC5
	/// @DnDParent : 23F4D111
	/// @DnDArgument : "expr" "random_range(3,7)*ydir"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += random_range(3,7)*ydir;
}