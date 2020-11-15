/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3005F779
/// @DnDArgument : "var" "place_meeting(x, y, obj_timetraveller) || place_meeting(x+2, y+2, obj_timetraveller) "
/// @DnDArgument : "value" "true"
if(place_meeting(x, y, obj_timetraveller) || place_meeting(x+2, y+2, obj_timetraveller)  == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6DC67580
	/// @DnDParent : 3005F779
	/// @DnDArgument : "key" "ord("E") && passthrough"
	/// @DnDArgument : "not" "1"
	var l6DC67580_0;
	l6DC67580_0 = keyboard_check(ord("E") && passthrough);
	if (!l6DC67580_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 2884E0E6
		/// @DnDParent : 6DC67580
		/// @DnDArgument : "key" "vk_left || ord("A")"
		var l2884E0E6_0;
		l2884E0E6_0 = keyboard_check(vk_left || ord("A"));
		if (l2884E0E6_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5AC6DB17
			/// @DnDParent : 2884E0E6
			/// @DnDArgument : "expr" "obj_timetraveller.x > (x +32)"
			if(obj_timetraveller.x > (x +32))
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 53D955CB
				/// @DnDParent : 5AC6DB17
				/// @DnDArgument : "x" "-unrewindableboxspeed"
				/// @DnDArgument : "x_relative" "1"
				x += -unrewindableboxspeed;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 28C53130
				/// @DnDParent : 5AC6DB17
				/// @DnDArgument : "expr" "position_meeting(x-33,y, obj_walls) || position_meeting(x-33,y, obj_door) || position_meeting(x-33,y-39, obj_door) || position_meeting(x-33,y+39, obj_walls) || position_meeting(x-33,y, obj_unrewindabledoor) || position_meeting(x-33,y-39, obj_unrewindabledoor) || position_meeting(x-33,y, obj_switch) || position_meeting(x-33,y+40, obj_switch) || position_meeting(x-33,y-39, obj_switch)  || place_meeting(x-33,y,obj_unrewindabledoor)"
				if(position_meeting(x-33,y, obj_walls) || position_meeting(x-33,y, obj_door) || position_meeting(x-33,y-39, obj_door) || position_meeting(x-33,y+39, obj_walls) || position_meeting(x-33,y, obj_unrewindabledoor) || position_meeting(x-33,y-39, obj_unrewindabledoor) || position_meeting(x-33,y, obj_switch) || position_meeting(x-33,y+40, obj_switch) || position_meeting(x-33,y-39, obj_switch)  || place_meeting(x-33,y,obj_unrewindabledoor))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2608F098
					/// @DnDParent : 28C53130
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 3B5C798E
				/// @DnDParent : 5AC6DB17
				/// @DnDArgument : "expr" "place_meeting(x-7,y,obj_cannon)"
				if(place_meeting(x-7,y,obj_cannon))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3ECD19EB
					/// @DnDParent : 3B5C798E
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0F6DA516
				/// @DnDParent : 5AC6DB17
				else
				{
				
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 593B8737
		/// @DnDParent : 6DC67580
		/// @DnDArgument : "expr" "instance_exists(obj_lava)"
		if(instance_exists(obj_lava))
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 6D305575
			/// @DnDParent : 593B8737
			/// @DnDArgument : "expr" "position_meeting(x,y,obj_lavahitbox)"
			if(position_meeting(x,y,obj_lavahitbox))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1085164E
				/// @DnDParent : 6D305575
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "passthrough"
				passthrough = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 3266D857
				/// @DnDParent : 6D305575
				/// @DnDArgument : "imageind_relative" "1"
				/// @DnDArgument : "spriteind" "spr_glitch_lavaBox"
				/// @DnDSaveInfo : "spriteind" "spr_glitch_lavaBox"
				sprite_index = spr_glitch_lavaBox;
				image_index += 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 0C97B85D
		/// @DnDParent : 6DC67580
		/// @DnDArgument : "key" "vk_down || ord("S")"
		var l0C97B85D_0;
		l0C97B85D_0 = keyboard_check(vk_down || ord("S"));
		if (l0C97B85D_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 2E8D2B2F
			/// @DnDParent : 0C97B85D
			/// @DnDArgument : "expr" "obj_timetraveller.y < (y - 32)"
			if(obj_timetraveller.y < (y - 32))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 03F630C2
				/// @DnDParent : 2E8D2B2F
				/// @DnDArgument : "expr" "position_meeting(x,y+40, obj_walls) || position_meeting(x,y+40, obj_door) || position_meeting(x-33,y+40, obj_walls) || position_meeting(x-33,y+40, obj_door) || position_meeting(x+33,y+40, obj_walls) || position_meeting(x+33,y+40, obj_door) || position_meeting(x,y+40, obj_switch) || position_meeting(x-33,y+40, obj_switch) || position_meeting(x+33,y+40, obj_switch)  || place_meeting(x,y-40,obj_unrewindabledoor)"
				if(position_meeting(x,y+40, obj_walls) || position_meeting(x,y+40, obj_door) || position_meeting(x-33,y+40, obj_walls) || position_meeting(x-33,y+40, obj_door) || position_meeting(x+33,y+40, obj_walls) || position_meeting(x+33,y+40, obj_door) || position_meeting(x,y+40, obj_switch) || position_meeting(x-33,y+40, obj_switch) || position_meeting(x+33,y+40, obj_switch)  || place_meeting(x,y-40,obj_unrewindabledoor))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 58C88701
					/// @DnDParent : 03F630C2
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 25984958
				/// @DnDParent : 2E8D2B2F
				/// @DnDArgument : "expr" "place_meeting(x,y+7,obj_cannon)"
				if(place_meeting(x,y+7,obj_cannon))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 784E5532
					/// @DnDParent : 25984958
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 5ED9C6DB
				/// @DnDParent : 2E8D2B2F
				else
				{
					/// @DnDAction : YoYo Games.Movement.Jump_To_Point
					/// @DnDVersion : 1
					/// @DnDHash : 1481A2E7
					/// @DnDParent : 5ED9C6DB
					/// @DnDArgument : "y" "unrewindableboxspeed"
					/// @DnDArgument : "y_relative" "1"
					
					y += unrewindableboxspeed;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 58C6F6AA
		/// @DnDParent : 6DC67580
		/// @DnDArgument : "key" "vk_up || ord("W")"
		var l58C6F6AA_0;
		l58C6F6AA_0 = keyboard_check(vk_up || ord("W"));
		if (l58C6F6AA_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5299923A
			/// @DnDParent : 58C6F6AA
			/// @DnDArgument : "expr" "obj_timetraveller.y > (y + 32)"
			if(obj_timetraveller.y > (y + 32))
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 2A8508F4
				/// @DnDParent : 5299923A
				/// @DnDArgument : "y" "-unrewindableboxspeed"
				/// @DnDArgument : "y_relative" "1"
				
				y += -unrewindableboxspeed;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 3D51045B
				/// @DnDParent : 5299923A
				/// @DnDArgument : "expr" "position_meeting(x,y-39, obj_walls) || position_meeting(x,y-39, obj_door) || position_meeting(x-33,y-39, obj_walls) || position_meeting(x-33,y-39, obj_door) || position_meeting(x+33,y-39, obj_walls) || position_meeting(x+33,y-39, obj_door) || position_meeting(x,y-39, obj_unrewindabledoor) || position_meeting(x+33,y-39, obj_unrewindabledoor) || position_meeting(x-33,y-39, obj_unrewindabledoor)  ||place_meeting(x,y-40,obj_unrewindabledoor)"
				if(position_meeting(x,y-39, obj_walls) || position_meeting(x,y-39, obj_door) || position_meeting(x-33,y-39, obj_walls) || position_meeting(x-33,y-39, obj_door) || position_meeting(x+33,y-39, obj_walls) || position_meeting(x+33,y-39, obj_door) || position_meeting(x,y-39, obj_unrewindabledoor) || position_meeting(x+33,y-39, obj_unrewindabledoor) || position_meeting(x-33,y-39, obj_unrewindabledoor)  ||place_meeting(x,y-40,obj_unrewindabledoor))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 014D4DFC
					/// @DnDParent : 3D51045B
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 52D13F30
				/// @DnDParent : 5299923A
				/// @DnDArgument : "expr" "place_meeting(x,y-7,obj_cannon)"
				if(place_meeting(x,y-7,obj_cannon))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 277C56FD
					/// @DnDParent : 52D13F30
					/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
					/// @DnDArgument : "var" "obj_timetraveller.y"
					obj_timetraveller.y = obj_timetraveller.yprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 17389C87
				/// @DnDParent : 5299923A
				else
				{
				
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 5E0B5F86
		/// @DnDParent : 6DC67580
		/// @DnDArgument : "key" "vk_right || ord("D")"
		var l5E0B5F86_0;
		l5E0B5F86_0 = keyboard_check(vk_right || ord("D"));
		if (l5E0B5F86_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 10B59A1E
			/// @DnDParent : 5E0B5F86
			/// @DnDArgument : "expr" "obj_timetraveller.x < (x - 32)"
			if(obj_timetraveller.x < (x - 32))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 6D487C72
				/// @DnDParent : 10B59A1E
				/// @DnDArgument : "expr" "position_meeting(x+33,y, obj_walls) || position_meeting(x+33,y, obj_door) || position_meeting(x+33,y-39, obj_door) || position_meeting(x+33,y+39, obj_walls) || position_meeting(x+33,y, obj_unrewindabledoor) || position_meeting(x+33,y-39, obj_door) || position_meeting(x+33,y, obj_unrewindabledoor) || position_meeting(x+33,y-39, obj_unrewindabledoor) || position_meeting(x+33,y+39, obj_unrewindabledoor) ||place_meeting(x+33,y,obj_unrewindabledoor)"
				if(position_meeting(x+33,y, obj_walls) || position_meeting(x+33,y, obj_door) || position_meeting(x+33,y-39, obj_door) || position_meeting(x+33,y+39, obj_walls) || position_meeting(x+33,y, obj_unrewindabledoor) || position_meeting(x+33,y-39, obj_door) || position_meeting(x+33,y, obj_unrewindabledoor) || position_meeting(x+33,y-39, obj_unrewindabledoor) || position_meeting(x+33,y+39, obj_unrewindabledoor) ||place_meeting(x+33,y,obj_unrewindabledoor))
				{
					/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
					/// @DnDVersion : 1
					/// @DnDHash : 71B5758E
					/// @DnDParent : 6D487C72
					/// @DnDArgument : "msg" ""on the left of ubox""
					show_debug_message(string("on the left of ubox"));
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7FC92125
					/// @DnDParent : 6D487C72
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 3A0AA958
				/// @DnDParent : 10B59A1E
				/// @DnDArgument : "expr" "place_meeting(x+7,y,obj_cannon) "
				if(place_meeting(x+7,y,obj_cannon) )
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0D795F75
					/// @DnDParent : 3A0AA958
					/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
					/// @DnDArgument : "var" "obj_timetraveller.x"
					obj_timetraveller.x = obj_timetraveller.xprevious;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 35DCF317
				/// @DnDParent : 10B59A1E
				else
				{
					/// @DnDAction : YoYo Games.Movement.Jump_To_Point
					/// @DnDVersion : 1
					/// @DnDHash : 001F1595
					/// @DnDParent : 35DCF317
					/// @DnDArgument : "x" "unrewindableboxspeed"
					/// @DnDArgument : "x_relative" "1"
					x += unrewindableboxspeed;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4240F69D
	/// @DnDParent : 3005F779
	/// @DnDArgument : "expr" "unrewindableboxspeed"
	/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"
	obj_timetraveller.walkingspeed = unrewindableboxspeed;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5FF1012C
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33CDD5E5
/// @DnDDisabled : 1
/// @DnDParent : 5FF1012C
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0D1434DD
/// @DnDArgument : "expr" "!position_meeting(x,y,obj_lavahitbox)"
if(!position_meeting(x,y,obj_lavahitbox))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4D0B8BB8
	/// @DnDParent : 0D1434DD
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_glitch_box"
	/// @DnDSaveInfo : "spriteind" "spr_glitch_box"
	sprite_index = spr_glitch_box;
	image_index += 0;
}