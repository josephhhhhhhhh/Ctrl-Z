/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7D0680BD
/// @DnDArgument : "expr" "x < 230"
if(x < 230)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66DB5BA6
	/// @DnDParent : 7D0680BD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "xdir"
	xdir = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 06FA7F23
/// @DnDArgument : "expr" "x > 1090"
if(x > 1090)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C1E0C3C
	/// @DnDParent : 06FA7F23
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "xdir"
	xdir = -1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13DB61E3
/// @DnDArgument : "expr" "random_range(3,5)*xdir"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += random_range(3,5)*xdir;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1B8652B5
/// @DnDArgument : "expr" "y < 288"
if(y < 288)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B9C3E90
	/// @DnDParent : 1B8652B5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "ydir"
	ydir = 1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 33DB568E
/// @DnDArgument : "expr" "y > 480"
if(y > 480)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 398CA0E1
	/// @DnDParent : 33DB568E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "ydir"
	ydir = -1;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E727C55
/// @DnDArgument : "expr" "bosshealth==0"
if(bosshealth==0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6BA084D3
	/// @DnDParent : 7E727C55
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6348C486
/// @DnDArgument : "expr" "random_range(3,7)*ydir"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += random_range(3,7)*ydir;