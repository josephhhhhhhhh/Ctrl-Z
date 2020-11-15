/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2816E22B
/// @DnDArgument : "var" "global.pause"
/// @DnDArgument : "value" "1"
if(global.pause == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6C4B05E6
	/// @DnDParent : 2816E22B
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7C975140
	/// @DnDParent : 2816E22B
	exit;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 18258222
/// @DnDArgument : "speed" "7"
speed = 7;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 27501F0F
/// @DnDArgument : "expr" "place_meeting(x,y,obj_walls)"
if(place_meeting(x,y,obj_walls))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 673F8282
	/// @DnDParent : 27501F0F
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 129E7246
/// @DnDArgument : "expr" "place_meeting(x,y,obj_door)"
if(place_meeting(x,y,obj_door))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 52ADA8BB
	/// @DnDParent : 129E7246
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 65568D43
/// @DnDArgument : "expr" "place_meeting(x,y,obj_unrewindabledoor)"
if(place_meeting(x,y,obj_unrewindabledoor))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4343611D
	/// @DnDParent : 65568D43
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1581E11C
/// @DnDArgument : "expr" "place_meeting(x,y,obj_box)"
if(place_meeting(x,y,obj_box))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3084AF65
	/// @DnDParent : 1581E11C
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4138ECDF
/// @DnDArgument : "expr" "place_meeting(x,y,obj_unrewindablebox)"
if(place_meeting(x,y,obj_unrewindablebox))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72677B88
	/// @DnDParent : 4138ECDF
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1ED05564
/// @DnDArgument : "expr" "place_meeting(x,y,obj_timetraveller)"
if(place_meeting(x,y,obj_timetraveller))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 09367D83
	/// @DnDParent : 1ED05564
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 153CD697
/// @DnDArgument : "expr" "place_meeting(x,y,obj_lava)"
if(place_meeting(x,y,obj_lava))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7A84E8D5
	/// @DnDParent : 153CD697
	instance_destroy();
}