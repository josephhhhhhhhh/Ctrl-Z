/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25E02635
/// @DnDArgument : "expr" "keythatopensallishere"
if(keythatopensallishere)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E9C3050
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "!doorClosed"
	/// @DnDArgument : "var" "doorClosed"
	doorClosed = !doorClosed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CA552A7
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x+65,y,obj_unrewindabledoor).doorClosed"
	instance_nearest(x+65,y,obj_unrewindabledoor).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B24D80C
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x-65,y,obj_unrewindabledoor).doorClosed"
	instance_nearest(x-65,y,obj_unrewindabledoor).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 391C4B80
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y-33,obj_unrewindabledoor).doorClosed"
	instance_nearest(x,y-33,obj_unrewindabledoor).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 777567FC
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y+33,obj_unrewindabledoor).doorClosed"
	instance_nearest(x,y+33,obj_unrewindabledoor).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C3BB5B7
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y+67,obj_unrewindabledoor).doorClosed"
	instance_nearest(x,y+67,obj_unrewindabledoor).doorClosed = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E61888B
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance_nearest(x,y-67,obj_unrewindabledoor).doorClosed"
	instance_nearest(x,y-67,obj_unrewindabledoor).doorClosed = false;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0F0901CA
	/// @DnDParent : 25E02635
	/// @DnDArgument : "soundid" "Door_Open_new"
	/// @DnDSaveInfo : "soundid" "Door_Open_new"
	audio_play_sound(Door_Open_new, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26E34472
	/// @DnDParent : 25E02635
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "keythatopensallishere"
	keythatopensallishere = false;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 37A5A59C
	/// @DnDDisabled : 1
	/// @DnDParent : 25E02635
	/// @DnDArgument : "angle" "startAngle + 180"
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 73E452E5
/// @DnDArgument : "expr" "doorClosed && !sideView && leftSideDoor"
if(doorClosed && !sideView && leftSideDoor)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5D25C128
	/// @DnDDisabled : 1
	/// @DnDParent : 73E452E5
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_front_closed_right"
	/// @DnDSaveInfo : "sprite" "spr_front_closed_right"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2D3B57B4
	/// @DnDParent : 73E452E5
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_front_closed_right"
	/// @DnDSaveInfo : "spriteind" "spr_front_closed_right"
	sprite_index = spr_front_closed_right;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3DBBAA6A
/// @DnDArgument : "expr" "doorClosed && !sideView && !leftSideDoor"
if(doorClosed && !sideView && !leftSideDoor)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 296D4146
	/// @DnDDisabled : 1
	/// @DnDParent : 3DBBAA6A
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_front_closed_left"
	/// @DnDSaveInfo : "sprite" "spr_front_closed_left"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7CCCCBBE
	/// @DnDParent : 3DBBAA6A
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_front_closed_left"
	/// @DnDSaveInfo : "spriteind" "spr_front_closed_left"
	sprite_index = spr_front_closed_left;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 72D29C61
/// @DnDArgument : "expr" "!doorClosed && !sideView && leftSideDoor"
if(!doorClosed && !sideView && leftSideDoor)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2A72825D
	/// @DnDDisabled : 1
	/// @DnDParent : 72D29C61
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_front_open_left"
	/// @DnDSaveInfo : "sprite" "spr_front_open_left"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3850051A
	/// @DnDParent : 72D29C61
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_front_open_left"
	/// @DnDSaveInfo : "spriteind" "spr_front_open_left"
	sprite_index = spr_front_open_left;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 74676B29
/// @DnDArgument : "expr" "!doorClosed && !sideView && !leftSideDoor"
if(!doorClosed && !sideView && !leftSideDoor)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 139E0F64
	/// @DnDDisabled : 1
	/// @DnDParent : 74676B29
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_front_open_right"
	/// @DnDSaveInfo : "sprite" "spr_front_open_right"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 61FE8A1A
	/// @DnDParent : 74676B29
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_front_open_right"
	/// @DnDSaveInfo : "spriteind" "spr_front_open_right"
	sprite_index = spr_front_open_right;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6B57FCA2
/// @DnDArgument : "expr" "doorClosed && sideView && leftSideDoor"
if(doorClosed && sideView && leftSideDoor)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 06391C91
	/// @DnDDisabled : 1
	/// @DnDParent : 6B57FCA2
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_side_closed_top"
	/// @DnDSaveInfo : "sprite" "spr_side_closed_top"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5C608DCD
	/// @DnDParent : 6B57FCA2
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_side_closed_top"
	/// @DnDSaveInfo : "spriteind" "spr_side_closed_top"
	sprite_index = spr_side_closed_top;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 13B24241
/// @DnDArgument : "expr" "doorClosed && sideView && !leftSideDoor"
if(doorClosed && sideView && !leftSideDoor)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 73F872EE
	/// @DnDDisabled : 1
	/// @DnDParent : 13B24241
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_side_closed_bottom"
	/// @DnDSaveInfo : "sprite" "spr_side_closed_bottom"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B18FC99
	/// @DnDParent : 13B24241
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_side_closed_bottom"
	/// @DnDSaveInfo : "spriteind" "spr_side_closed_bottom"
	sprite_index = spr_side_closed_bottom;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2F34B75F
/// @DnDArgument : "expr" "!doorClosed && sideView && leftSideDoor && !leftFacingOutward "
if(!doorClosed && sideView && leftSideDoor && !leftFacingOutward )
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 05B52F2E
	/// @DnDDisabled : 1
	/// @DnDParent : 2F34B75F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_side_open_left_top"
	/// @DnDSaveInfo : "sprite" "spr_side_open_left_top"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2E39A604
	/// @DnDParent : 2F34B75F
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_side_open_left_top"
	/// @DnDSaveInfo : "spriteind" "spr_side_open_left_top"
	sprite_index = spr_side_open_left_top;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4E3F0F63
/// @DnDArgument : "expr" "!doorClosed && sideView && !leftSideDoor && !leftFacingOutward"
if(!doorClosed && sideView && !leftSideDoor && !leftFacingOutward)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3B4FEC09
	/// @DnDDisabled : 1
	/// @DnDParent : 4E3F0F63
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_side_open_right_bottom"
	/// @DnDSaveInfo : "sprite" "spr_side_open_right_bottom"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0BD2DA97
	/// @DnDParent : 4E3F0F63
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_side_open_right_bottom"
	/// @DnDSaveInfo : "spriteind" "spr_side_open_right_bottom"
	sprite_index = spr_side_open_right_bottom;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 776B7CB1
	/// @DnDParent : 4E3F0F63
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
/// @DnDHash : 36B513A7
/// @DnDArgument : "expr" "!doorClosed && sideView && leftSideDoor && leftFacingOutward"
if(!doorClosed && sideView && leftSideDoor && leftFacingOutward)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 02CF546D
	/// @DnDDisabled : 1
	/// @DnDParent : 36B513A7
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_side_open_right_top"
	/// @DnDSaveInfo : "sprite" "spr_side_open_right_top"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3DC78A31
	/// @DnDParent : 36B513A7
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_side_open_right_top"
	/// @DnDSaveInfo : "spriteind" "spr_side_open_right_top"
	sprite_index = spr_side_open_right_top;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 751D22B0
/// @DnDArgument : "expr" "!doorClosed && sideView && !leftSideDoor && leftFacingOutward"
if(!doorClosed && sideView && !leftSideDoor && leftFacingOutward)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7D47A5A0
	/// @DnDDisabled : 1
	/// @DnDParent : 751D22B0
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_side_open_left_bottom"
	/// @DnDSaveInfo : "sprite" "spr_side_open_left_bottom"


	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4771A922
	/// @DnDParent : 751D22B0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_side_open_left_bottom"
	/// @DnDSaveInfo : "spriteind" "spr_side_open_left_bottom"
	sprite_index = spr_side_open_left_bottom;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 556B13D1
	/// @DnDParent : 751D22B0
	/// @DnDArgument : "code" "if(collision_circle(x+10,y,32,obj_timetraveller,true,true)) {$(13_10)	image_alpha = 0.25;$(13_10)}$(13_10)else {$(13_10)	image_alpha = 1;$(13_10)}"
	if(collision_circle(x+10,y,32,obj_timetraveller,true,true)) {
		image_alpha = 0.25;
	}
	else {
		image_alpha = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C6ED38E
/// @DnDArgument : "expr" "instance_exists(obj_pressureplate) "
if(instance_exists(obj_pressureplate) )
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F326094
	/// @DnDParent : 4C6ED38E
	/// @DnDArgument : "expr" "currPressureState"
	/// @DnDArgument : "var" "prevPressureState"
	prevPressureState = currPressureState;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3770EB6A
	/// @DnDParent : 4C6ED38E
	/// @DnDArgument : "expr" "obj_pressureplate.isTriggered"
	/// @DnDArgument : "var" "currPressureState"
	currPressureState = obj_pressureplate.isTriggered;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 02BD0A9E
	/// @DnDParent : 4C6ED38E
	/// @DnDArgument : "expr" "(currPressureState !=prevPressureState)"
	if((currPressureState !=prevPressureState))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 775085B3
		/// @DnDDisabled : 1
		/// @DnDParent : 02BD0A9E
		/// @DnDArgument : "angle" "180"
		/// @DnDArgument : "angle_relative" "1"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0ABFC9B6
		/// @DnDParent : 02BD0A9E
		/// @DnDArgument : "expr" "!doorClosed"
		/// @DnDArgument : "var" "doorClosed"
		doorClosed = !doorClosed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1D9F9A5B
		/// @DnDParent : 02BD0A9E
		/// @DnDArgument : "soundid" "Door_Open_new"
		/// @DnDSaveInfo : "soundid" "Door_Open_new"
		audio_play_sound(Door_Open_new, 0, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 244D95B3
/// @DnDArgument : "expr" "instance_exists(obj_switch)"
if(instance_exists(obj_switch))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66D32DE4
	/// @DnDParent : 244D95B3
	/// @DnDArgument : "expr" "currSwitchState"
	/// @DnDArgument : "var" "prevSwitchState"
	prevSwitchState = currSwitchState;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 264BBD19
	/// @DnDParent : 244D95B3
	/// @DnDArgument : "expr" "obj_switch.isTriggered"
	/// @DnDArgument : "var" "currSwitchState"
	currSwitchState = obj_switch.isTriggered;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 797DCB41
	/// @DnDParent : 244D95B3
	/// @DnDArgument : "expr" "(currSwitchState!=prevSwitchState)  && obj_switch.activatedByTouch"
	if((currSwitchState!=prevSwitchState)  && obj_switch.activatedByTouch)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 24C17A40
		/// @DnDDisabled : 1
		/// @DnDParent : 797DCB41
		/// @DnDArgument : "angle" "180"
		/// @DnDArgument : "angle_relative" "1"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 053C6C5C
		/// @DnDParent : 797DCB41
		/// @DnDArgument : "expr" "!doorClosed"
		/// @DnDArgument : "var" "doorClosed"
		doorClosed = !doorClosed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6C182D7B
		/// @DnDParent : 797DCB41
		/// @DnDArgument : "soundid" "Door_Open_new"
		/// @DnDSaveInfo : "soundid" "Door_Open_new"
		audio_play_sound(Door_Open_new, 0, 0);
	}
}