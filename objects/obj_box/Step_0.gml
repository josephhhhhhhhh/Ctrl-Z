/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B200F24
/// @DnDArgument : "var" "place_meeting(self.x, self.y, obj_timetraveller)"
/// @DnDArgument : "value" "true"
if(place_meeting(self.x, self.y, obj_timetraveller) == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6E472596
	/// @DnDParent : 1B200F24
	/// @DnDArgument : "key" "ord("E") && self.passthrough"
	/// @DnDArgument : "not" "1"
	var l6E472596_0;
	l6E472596_0 = keyboard_check(ord("E") && self.passthrough);
	if (!l6E472596_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 017B23DB
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_left || ord("A")"
		var l017B23DB_0;
		l017B23DB_0 = keyboard_check(vk_left || ord("A"));
		if (l017B23DB_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 682EB8B2
			/// @DnDParent : 017B23DB
			/// @DnDArgument : "expr" "obj_timetraveller.x > (x + 32)"
			if(obj_timetraveller.x > (x + 32))
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 02C26F77
				/// @DnDParent : 682EB8B2
				/// @DnDArgument : "x" "-boxspeed"
				/// @DnDArgument : "x_relative" "1"
				x += -boxspeed;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 3126FA90
				/// @DnDParent : 682EB8B2
				/// @DnDArgument : "expr" "place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) ) || place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_door) )"
				if(place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) ) || place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_door) ))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4DBB3785
					/// @DnDParent : 3126FA90
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 6B26D74F
				/// @DnDParent : 682EB8B2
				/// @DnDArgument : "expr" "place_meeting(x,y,obj_angrypuff)"
				if(place_meeting(x,y,obj_angrypuff))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 69A5BA9C
					/// @DnDParent : 6B26D74F
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 4003967C
				/// @DnDParent : 682EB8B2
				/// @DnDArgument : "expr" "place_meeting(x-7,y,obj_cannon)"
				if(place_meeting(x-7,y,obj_cannon))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1609D558
					/// @DnDParent : 4003967C
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 4AF5DC30
				/// @DnDParent : 682EB8B2
				else
				{
				
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5425BE13
		/// @DnDParent : 6E472596
		/// @DnDArgument : "expr" "instance_exists(obj_lava)"
		if(instance_exists(obj_lava))
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 66DF19C3
			/// @DnDParent : 5425BE13
			/// @DnDArgument : "expr" "position_meeting(x,y,obj_lavahitbox)"
			if(position_meeting(x,y,obj_lavahitbox))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7F96FC9E
				/// @DnDParent : 66DF19C3
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "self.passthrough"
				self.passthrough = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 0F67140C
				/// @DnDParent : 66DF19C3
				/// @DnDArgument : "spriteind" "spr_submergedBox"
				/// @DnDSaveInfo : "spriteind" "spr_submergedBox"
				sprite_index = spr_submergedBox;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 01139BA0
				/// @DnDParent : 66DF19C3
				/// @DnDArgument : "msg" ""passthrough is on?""
				show_debug_message(string("passthrough is on?"));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10D7242F
				/// @DnDDisabled : 1
				/// @DnDParent : 66DF19C3
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "tempCount"
			
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 7E49F916
				/// @DnDDisabled : 1
				/// @DnDParent : 66DF19C3
				/// @DnDArgument : "expr" "tempCount == 1"
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 2D43F717
				/// @DnDDisabled : 1
				/// @DnDParent : 7E49F916
				/// @DnDArgument : "soundid" "sploosh_sound"
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 1820EECB
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_down || ord("S")"
		var l1820EECB_0;
		l1820EECB_0 = keyboard_check(vk_down || ord("S"));
		if (l1820EECB_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 115A3D54
			/// @DnDParent : 1820EECB
			/// @DnDArgument : "expr" "obj_timetraveller.y < (y - 32)"
			if(obj_timetraveller.y < (y - 32))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 59BEE833
				/// @DnDParent : 115A3D54
				/// @DnDArgument : "expr" "position_meeting(x,y+sprite_height/2, instance_position(x,y+sprite_height/2,obj_walls) ) || position_meeting(x,y+sprite_height/2, instance_position(x,y+sprite_height/2,obj_door) ) || position_meeting(x,y+sprite_height/2, instance_position(x,y+sprite_height/2,obj_unrewindabledoor) )"
				if(position_meeting(x,y+sprite_height/2, instance_position(x,y+sprite_height/2,obj_walls) ) || position_meeting(x,y+sprite_height/2, instance_position(x,y+sprite_height/2,obj_door) ) || position_meeting(x,y+sprite_height/2, instance_position(x,y+sprite_height/2,obj_unrewindabledoor) ))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0439A16F
					/// @DnDParent : 59BEE833
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 10D50572
				/// @DnDParent : 115A3D54
				/// @DnDArgument : "expr" "place_meeting(x,y,obj_angrypuff)"
				if(place_meeting(x,y,obj_angrypuff))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4B942C25
					/// @DnDParent : 10D50572
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 705167C8
				/// @DnDParent : 115A3D54
				/// @DnDArgument : "expr" "place_meeting(x,y+7,obj_cannon)"
				if(place_meeting(x,y+7,obj_cannon))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 44FA2017
					/// @DnDParent : 705167C8
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0D01A03D
				/// @DnDParent : 115A3D54
				else
				{
					/// @DnDAction : YoYo Games.Movement.Jump_To_Point
					/// @DnDVersion : 1
					/// @DnDHash : 69B0C665
					/// @DnDParent : 0D01A03D
					/// @DnDArgument : "y" "boxspeed"
					/// @DnDArgument : "y_relative" "1"
					
					y += boxspeed;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 11820538
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_up || ord("W")"
		var l11820538_0;
		l11820538_0 = keyboard_check(vk_up || ord("W"));
		if (l11820538_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 22647FDD
			/// @DnDParent : 11820538
			/// @DnDArgument : "expr" "obj_timetraveller.y > (y + 32)"
			if(obj_timetraveller.y > (y + 32))
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 01AAFF69
				/// @DnDParent : 22647FDD
				/// @DnDArgument : "y" "-boxspeed"
				/// @DnDArgument : "y_relative" "1"
				
				y += -boxspeed;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 7B2E9C81
				/// @DnDParent : 22647FDD
				/// @DnDArgument : "expr" "place_meeting(x,y,obj_walls)"
				if(place_meeting(x,y,obj_walls))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 48FFFD4F
					/// @DnDParent : 7B2E9C81
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 1D2DC575
				/// @DnDParent : 22647FDD
				/// @DnDArgument : "expr" "place_meeting(x,y,obj_angrypuff)"
				if(place_meeting(x,y,obj_angrypuff))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 05645D19
					/// @DnDParent : 1D2DC575
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 0636A50C
				/// @DnDParent : 22647FDD
				/// @DnDArgument : "expr" "place_meeting(x,y-7,obj_cannon)"
				if(place_meeting(x,y-7,obj_cannon))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7EF40051
					/// @DnDParent : 0636A50C
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 26997660
				/// @DnDParent : 22647FDD
				else
				{
				
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7BD64A36
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_right || ord("D")"
		var l7BD64A36_0;
		l7BD64A36_0 = keyboard_check(vk_right || ord("D"));
		if (l7BD64A36_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 18AE7011
			/// @DnDParent : 7BD64A36
			/// @DnDArgument : "expr" "obj_timetraveller.x < (x - 32)"
			if(obj_timetraveller.x < (x - 32))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 2C3DEED1
				/// @DnDParent : 18AE7011
				/// @DnDArgument : "expr" "position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_walls) ) "
				if(position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_walls) ) )
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5879D72A
					/// @DnDParent : 2C3DEED1
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 27EB48EE
				/// @DnDParent : 18AE7011
				/// @DnDArgument : "expr" "place_meeting(x+5,y, obj_door) || place_meeting(x+5,y, obj_walls) || place_meeting(x+5,y, obj_unrewindabledoor)"
				if(place_meeting(x+5,y, obj_door) || place_meeting(x+5,y, obj_walls) || place_meeting(x+5,y, obj_unrewindabledoor))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6CDE1365
					/// @DnDParent : 27EB48EE
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				
					/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 75BD750C
					/// @DnDParent : 27EB48EE
					/// @DnDArgument : "msg" ""DETECT THIS PLS""
					show_debug_message(string("DETECT THIS PLS"));
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 28CB54CE
				/// @DnDParent : 18AE7011
				/// @DnDArgument : "expr" "place_meeting(x,y,obj_angrypuff)"
				if(place_meeting(x,y,obj_angrypuff))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 52490B48
					/// @DnDParent : 28CB54CE
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 519B766F
				/// @DnDParent : 18AE7011
				/// @DnDArgument : "expr" "place_meeting(x+7,y,obj_cannon) "
				if(place_meeting(x+7,y,obj_cannon) )
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1FDCD774
					/// @DnDParent : 519B766F
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0D080DE6
				/// @DnDParent : 18AE7011
				else
				{
					/// @DnDAction : YoYo Games.Movement.Jump_To_Point
					/// @DnDVersion : 1
					/// @DnDHash : 636A8FAC
					/// @DnDParent : 0D080DE6
					/// @DnDArgument : "x" "boxspeed"
					/// @DnDArgument : "x_relative" "1"
					x += boxspeed;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 053118B0
	/// @DnDParent : 1B200F24
	/// @DnDArgument : "expr" "self.boxspeed"
	/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"
	obj_timetraveller.walkingspeed = self.boxspeed;

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 2FFB3EC8
	/// @DnDParent : 1B200F24
	/// @DnDArgument : "msg" ""B!!""
	show_debug_message(string("B!!"));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C5739D8
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E5C585A
/// @DnDDisabled : 1
/// @DnDParent : 7C5739D8
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4CF31602
/// @DnDDisabled : 1
/// @DnDParent : 7C5739D8
/// @DnDArgument : "msg" ""A""

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5F7C358B
/// @DnDArgument : "expr" "!place_meeting(x,y, obj_lava)"
if(!place_meeting(x,y, obj_lava))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 55624D82
	/// @DnDParent : 5F7C358B
	/// @DnDArgument : "msg" ""restore yourself""
	show_debug_message(string("restore yourself"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CB79121
	/// @DnDParent : 5F7C358B
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "self.passthrough"
	self.passthrough = false;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 396C97DE
	/// @DnDParent : 5F7C358B
	/// @DnDArgument : "spriteind" "spr_boxnew"
	/// @DnDSaveInfo : "spriteind" "spr_boxnew"
	sprite_index = spr_boxnew;
	image_index = 0;
}