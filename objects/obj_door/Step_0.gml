/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 451B9083
/// @DnDArgument : "expr" "keythatopensallishere "
if(keythatopensallishere )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6593125C
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "doorClosed "
	doorClosed  = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 124E4928
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x+65,y,obj_door).doorClosed"
	instance_nearest(x+65,y,obj_door).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4181BBB5
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x-65,y,obj_door).doorClosed"
	instance_nearest(x-65,y,obj_door).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 553CD34C
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y-33,obj_door).doorClosed"
	instance_nearest(x,y-33,obj_door).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07E7347A
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y+33,obj_door).doorClosed"
	instance_nearest(x,y+33,obj_door).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2847BD48
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y+67,obj_door).doorClosed"
	instance_nearest(x,y+67,obj_door).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B840F70
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y-67,obj_door).doorClosed"
	instance_nearest(x,y-67,obj_door).doorClosed = false;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6FA65DFC
	/// @DnDParent : 451B9083
	/// @DnDArgument : "soundid" "Door_Open_new"
	/// @DnDSaveInfo : "soundid" "Door_Open_new"
	audio_play_sound(Door_Open_new, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 782B9F80
	/// @DnDParent : 451B9083
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "keythatopensallishere"
	keythatopensallishere = false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6A5102E8
/// @DnDArgument : "expr" "instance_exists(obj_pressureplate) "
if(instance_exists(obj_pressureplate) )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 705E7966
	/// @DnDParent : 6A5102E8
	/// @DnDArgument : "expr" "currPressureState"
	/// @DnDArgument : "var" "prevPressureState"
	prevPressureState = currPressureState;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E7302A7
	/// @DnDParent : 6A5102E8
	/// @DnDArgument : "expr" "obj_pressureplate.isTriggered"
	/// @DnDArgument : "var" "currPressureState"
	currPressureState = obj_pressureplate.isTriggered;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 233BFB9F
	/// @DnDParent : 6A5102E8
	/// @DnDArgument : "expr" "(currPressureState !=prevPressureState)"
	if((currPressureState !=prevPressureState))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 7775B3C7
		/// @DnDDisabled : 1
		/// @DnDParent : 233BFB9F
		/// @DnDArgument : "angle" "180"
		/// @DnDArgument : "angle_relative" "1"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1592786F
		/// @DnDParent : 233BFB9F
		/// @DnDArgument : "expr" "!doorClosed"
		/// @DnDArgument : "var" "doorClosed"
		doorClosed = !doorClosed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 22C72F8A
		/// @DnDParent : 233BFB9F
		/// @DnDArgument : "soundid" "Door_Open_new"
		/// @DnDSaveInfo : "soundid" "Door_Open_new"
		audio_play_sound(Door_Open_new, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 457A924E
/// @DnDArgument : "expr" "instance_exists(obj_switch) "
if(instance_exists(obj_switch) )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 309B3679
	/// @DnDParent : 457A924E
	/// @DnDArgument : "expr" "currSwitchState"
	/// @DnDArgument : "var" "prevSwitchState"
	prevSwitchState = currSwitchState;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F7F2DFF
	/// @DnDParent : 457A924E
	/// @DnDArgument : "expr" "obj_switch.isTriggered"
	/// @DnDArgument : "var" "currSwitchState"
	currSwitchState = obj_switch.isTriggered;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 13C5A86F
	/// @DnDParent : 457A924E
	/// @DnDArgument : "expr" "(currSwitchState!=prevSwitchState)  && obj_switch.switchHasBeenPressedOnce"
	if((currSwitchState!=prevSwitchState)  && obj_switch.switchHasBeenPressedOnce)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 3C4BE085
		/// @DnDDisabled : 1
		/// @DnDParent : 13C5A86F
		/// @DnDArgument : "angle" "180"
		/// @DnDArgument : "angle_relative" "1"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F33BBCF
		/// @DnDParent : 13C5A86F
		/// @DnDArgument : "expr" "!doorClosed"
		/// @DnDArgument : "var" "doorClosed"
		doorClosed = !doorClosed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 51F9F9A0
		/// @DnDParent : 13C5A86F
		/// @DnDArgument : "soundid" "Door_Open_new"
		/// @DnDSaveInfo : "soundid" "Door_Open_new"
		audio_play_sound(Door_Open_new, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1DC810BC
/// @DnDArgument : "expr" "doorClosed && !sideView && leftSideDoor"
if(doorClosed && !sideView && leftSideDoor)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3FBD743C
	/// @DnDParent : 1DC810BC
	/// @DnDArgument : "spriteind" "door_front_R"
	/// @DnDSaveInfo : "spriteind" "door_front_R"
	sprite_index = door_front_R;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4BE80F26
/// @DnDArgument : "expr" "doorClosed && !sideView && !leftSideDoor"
if(doorClosed && !sideView && !leftSideDoor)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2A22F1C3
	/// @DnDParent : 4BE80F26
	/// @DnDArgument : "spriteind" "door_front_L"
	/// @DnDSaveInfo : "spriteind" "door_front_L"
	sprite_index = door_front_L;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0D2F184F
/// @DnDArgument : "expr" "!doorClosed && !sideView && leftSideDoor"
if(!doorClosed && !sideView && leftSideDoor)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 642611FB
	/// @DnDParent : 0D2F184F
	/// @DnDArgument : "spriteind" "door_front_open_L"
	/// @DnDSaveInfo : "spriteind" "door_front_open_L"
	sprite_index = door_front_open_L;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3581C946
/// @DnDArgument : "expr" "!doorClosed && !sideView && !leftSideDoor"
if(!doorClosed && !sideView && !leftSideDoor)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6B493640
	/// @DnDParent : 3581C946
	/// @DnDArgument : "spriteind" "door_front_open_R"
	/// @DnDSaveInfo : "spriteind" "door_front_open_R"
	sprite_index = door_front_open_R;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 26CFCC22
/// @DnDArgument : "expr" "doorClosed && sideView && leftSideDoor"
if(doorClosed && sideView && leftSideDoor)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2F27ACBE
	/// @DnDParent : 26CFCC22
	/// @DnDArgument : "spriteind" "door_Side_Top"
	/// @DnDSaveInfo : "spriteind" "door_Side_Top"
	sprite_index = door_Side_Top;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 71AD8408
/// @DnDArgument : "expr" "doorClosed && sideView && !leftSideDoor"
if(doorClosed && sideView && !leftSideDoor)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 38AB2049
	/// @DnDParent : 71AD8408
	/// @DnDArgument : "spriteind" "door_Side_Bottom"
	/// @DnDSaveInfo : "spriteind" "door_Side_Bottom"
	sprite_index = door_Side_Bottom;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5926F9FF
/// @DnDArgument : "expr" "!doorClosed && sideView && leftSideDoor && !leftFacingOutward "
if(!doorClosed && sideView && leftSideDoor && !leftFacingOutward )
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4B029FD9
	/// @DnDParent : 5926F9FF
	/// @DnDArgument : "spriteind" "door_Side_Open_R_Top78"
	/// @DnDSaveInfo : "spriteind" "door_Side_Open_R_Top78"
	sprite_index = door_Side_Open_R_Top78;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 67FBD66C
/// @DnDArgument : "expr" "!doorClosed && sideView && !leftSideDoor && !leftFacingOutward"
if(!doorClosed && sideView && !leftSideDoor && !leftFacingOutward)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 32AF4B03
	/// @DnDParent : 67FBD66C
	/// @DnDArgument : "spriteind" "door_Side_Open_L_Bottom79"
	/// @DnDSaveInfo : "spriteind" "door_Side_Open_L_Bottom79"
	sprite_index = door_Side_Open_L_Bottom79;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 74938931
	/// @DnDParent : 67FBD66C
	/// @DnDArgument : "code" "if(collision_circle(x+40,y,32,obj_timetraveller,true,true)) {$(13_10)	image_alpha = 0.25;$(13_10)}$(13_10)else {$(13_10)	image_alpha = 1;$(13_10)}"
	if(collision_circle(x+40,y,32,obj_timetraveller,true,true)) {
		image_alpha = 0.25;
	}
	else {
		image_alpha = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7DC56473
/// @DnDArgument : "expr" "!doorClosed && sideView && leftSideDoor && leftFacingOutward"
if(!doorClosed && sideView && leftSideDoor && leftFacingOutward)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 074171AC
	/// @DnDParent : 7DC56473
	/// @DnDArgument : "spriteind" "door_Side_Open_L_Top80"
	/// @DnDSaveInfo : "spriteind" "door_Side_Open_L_Top80"
	sprite_index = door_Side_Open_L_Top80;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3EF69CC0
/// @DnDArgument : "expr" "!doorClosed && sideView && !leftSideDoor && leftFacingOutward"
if(!doorClosed && sideView && !leftSideDoor && leftFacingOutward)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1C62D101
	/// @DnDParent : 3EF69CC0
	/// @DnDArgument : "spriteind" "door_Side_Open_R_Bottom77"
	/// @DnDSaveInfo : "spriteind" "door_Side_Open_R_Bottom77"
	sprite_index = door_Side_Open_R_Bottom77;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 484BCF46
	/// @DnDParent : 3EF69CC0
	/// @DnDArgument : "code" "if(collision_circle(x+10,y,32,obj_timetraveller,true,true)) {$(13_10)	image_alpha = 0.25;$(13_10)}$(13_10)else {$(13_10)	image_alpha = 1;$(13_10)}"
	if(collision_circle(x+10,y,32,obj_timetraveller,true,true)) {
		image_alpha = 0.25;
	}
	else {
		image_alpha = 1;
	}
}