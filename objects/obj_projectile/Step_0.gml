/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 16028C03
/// @DnDArgument : "y" "5"
/// @DnDArgument : "y_relative" "1"

y += 5;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 60FDBBE3
/// @DnDArgument : "expr" "place_meeting(x,y,obj_bosspuff)"
if(place_meeting(x,y,obj_bosspuff))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 609FAC62
	/// @DnDParent : 60FDBBE3
	/// @DnDArgument : "expr" "obj_bosspuff.bosshealth-1"
	/// @DnDArgument : "var" "obj_bosspuff.bosshealth"
	obj_bosspuff.bosshealth = obj_bosspuff.bosshealth-1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BB59813
	/// @DnDParent : 60FDBBE3
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 24E64A7D
/// @DnDArgument : "expr" "place_meeting(x,y,obj_walls)"
if(place_meeting(x,y,obj_walls))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D73173C
	/// @DnDParent : 24E64A7D
	instance_destroy();
}