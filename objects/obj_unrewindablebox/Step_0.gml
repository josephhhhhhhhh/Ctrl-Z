/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38733619
/// @DnDArgument : "var" "place_meeting(x, y, obj_timetraveller)"
/// @DnDArgument : "value" "true"
if(place_meeting(x, y, obj_timetraveller) == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5E2D42CE
	/// @DnDParent : 38733619
	/// @DnDArgument : "key" "ord("E")"
	/// @DnDArgument : "not" "1"
	var l5E2D42CE_0;
	l5E2D42CE_0 = keyboard_check(ord("E"));
	if (!l5E2D42CE_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 187D7695
		/// @DnDParent : 5E2D42CE
		/// @DnDArgument : "key" "vk_left"
		var l187D7695_0;
		l187D7695_0 = keyboard_check(vk_left);
		if (l187D7695_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 57045734
			/// @DnDParent : 187D7695
			/// @DnDArgument : "x" "-4"
			/// @DnDArgument : "x_relative" "1"
			x += -4;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 05B057C2
			/// @DnDParent : 187D7695
			/// @DnDArgument : "expr" "position_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) )"
			if(position_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1867A443
				/// @DnDParent : 05B057C2
				/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
				/// @DnDArgument : "var" "obj_timetraveller.x"
				obj_timetraveller.x = obj_timetraveller.xprevious;
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 41341EB7
		/// @DnDParent : 5E2D42CE
		/// @DnDArgument : "key" "vk_down"
		var l41341EB7_0;
		l41341EB7_0 = keyboard_check(vk_down);
		if (l41341EB7_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 3DE11F3C
			/// @DnDParent : 41341EB7
			/// @DnDArgument : "expr" "position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_walls) )"
			if(position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4F3682E1
				/// @DnDParent : 3DE11F3C
				/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
				/// @DnDArgument : "var" "obj_timetraveller.y"
				obj_timetraveller.y = obj_timetraveller.yprevious;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 60399D65
			/// @DnDParent : 41341EB7
			else
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 75E8B4BF
				/// @DnDParent : 60399D65
				/// @DnDArgument : "y" "4"
				/// @DnDArgument : "y_relative" "1"
				
				y += 4;
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 1C762555
		/// @DnDParent : 5E2D42CE
		/// @DnDArgument : "key" "vk_up"
		var l1C762555_0;
		l1C762555_0 = keyboard_check(vk_up);
		if (l1C762555_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 50439CD4
			/// @DnDParent : 1C762555
			/// @DnDArgument : "y" "-4"
			/// @DnDArgument : "y_relative" "1"
			
			y += -4;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7915E7D9
			/// @DnDParent : 1C762555
			/// @DnDArgument : "expr" "position_meeting(x,y-sprite_width/2, instance_position(x,y-sprite_width/2,obj_walls) )"
			if(position_meeting(x,y-sprite_width/2, instance_position(x,y-sprite_width/2,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 19112D09
				/// @DnDParent : 7915E7D9
				/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
				/// @DnDArgument : "var" "obj_timetraveller.y"
				obj_timetraveller.y = obj_timetraveller.yprevious;
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 4B3C9463
		/// @DnDParent : 5E2D42CE
		/// @DnDArgument : "key" "vk_right"
		var l4B3C9463_0;
		l4B3C9463_0 = keyboard_check(vk_right);
		if (l4B3C9463_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 186595DB
			/// @DnDParent : 4B3C9463
			/// @DnDArgument : "expr" "position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_walls) )"
			if(position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 00812DC3
				/// @DnDParent : 186595DB
				/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
				/// @DnDArgument : "var" "obj_timetraveller.x"
				obj_timetraveller.x = obj_timetraveller.xprevious;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6CB33B5C
			/// @DnDParent : 4B3C9463
			else
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 6ABB15DD
				/// @DnDParent : 6CB33B5C
				/// @DnDArgument : "x" "4"
				/// @DnDArgument : "x_relative" "1"
				x += 4;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0119BB5F
	/// @DnDParent : 38733619
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"
	obj_timetraveller.walkingspeed = 4;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3B6CB55B
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FF7296C
	/// @DnDParent : 3B6CB55B
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"
	obj_timetraveller.walkingspeed = 5;
}