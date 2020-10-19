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
	/// @DnDArgument : "key" "ord("E")"
	/// @DnDArgument : "not" "1"
	var l6DC67580_0;
	l6DC67580_0 = keyboard_check(ord("E"));
	if (!l6DC67580_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 2884E0E6
		/// @DnDParent : 6DC67580
		/// @DnDArgument : "key" "vk_left"
		var l2884E0E6_0;
		l2884E0E6_0 = keyboard_check(vk_left);
		if (l2884E0E6_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5AC6DB17
			/// @DnDParent : 2884E0E6
			/// @DnDArgument : "expr" "obj_timetraveller.x > (x +40)"
			if(obj_timetraveller.x > (x +40))
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
				/// @DnDArgument : "expr" "place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) ) || place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_door) )"
				if(place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) ) || place_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_door) ))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2608F098
					/// @DnDParent : 28C53130
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
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 0C97B85D
		/// @DnDParent : 6DC67580
		/// @DnDArgument : "key" "vk_down"
		var l0C97B85D_0;
		l0C97B85D_0 = keyboard_check(vk_down);
		if (l0C97B85D_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 2E8D2B2F
			/// @DnDParent : 0C97B85D
			/// @DnDArgument : "expr" "obj_timetraveller.y < (y - 40)"
			if(obj_timetraveller.y < (y - 40))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 03F630C2
				/// @DnDParent : 2E8D2B2F
				/// @DnDArgument : "expr" "position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_walls) ) || position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_door) )"
				if(position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_walls) ) || position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_door) ))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 58C88701
					/// @DnDParent : 03F630C2
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
		/// @DnDArgument : "key" "vk_up"
		var l58C6F6AA_0;
		l58C6F6AA_0 = keyboard_check(vk_up);
		if (l58C6F6AA_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5299923A
			/// @DnDParent : 58C6F6AA
			/// @DnDArgument : "expr" "obj_timetraveller.y > (y + 40)"
			if(obj_timetraveller.y > (y + 40))
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
				/// @DnDArgument : "expr" "place_meeting(x,y,obj_walls)"
				if(place_meeting(x,y,obj_walls))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 014D4DFC
					/// @DnDParent : 3D51045B
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
		/// @DnDArgument : "key" "vk_right"
		var l5E0B5F86_0;
		l5E0B5F86_0 = keyboard_check(vk_right);
		if (l5E0B5F86_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 10B59A1E
			/// @DnDParent : 5E0B5F86
			/// @DnDArgument : "expr" "obj_timetraveller.x < (x - 40)"
			if(obj_timetraveller.x < (x - 40))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 6D487C72
				/// @DnDParent : 10B59A1E
				/// @DnDArgument : "expr" "position_meeting(x+sprite_width/2+1,y, instance_position(x+sprite_width/2+1,y,obj_walls) ) || position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_door))"
				if(position_meeting(x+sprite_width/2+1,y, instance_position(x+sprite_width/2+1,y,obj_walls) ) || position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_door)))
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
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33CDD5E5
	/// @DnDParent : 5FF1012C
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"
	obj_timetraveller.walkingspeed = 5;
}