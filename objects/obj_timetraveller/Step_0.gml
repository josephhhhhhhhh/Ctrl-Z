/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E242BDA
/// @DnDArgument : "var" "hasTouchedLava"
/// @DnDArgument : "value" "true"
if(hasTouchedLava == true)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 36D9DB3C
	/// @DnDParent : 2E242BDA
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 28F8561D
/// @DnDArgument : "expr" "place_meeting(x,y, obj_angrypuff)"
if(place_meeting(x,y, obj_angrypuff))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 257E4DBF
	/// @DnDParent : 28F8561D
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1D22B783
/// @DnDArgument : "expr" "place_meeting(x,y, obj_bosspuff)"
if(place_meeting(x,y, obj_bosspuff))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 70C298F0
	/// @DnDParent : 1D22B783
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 111324D3
/// @DnDArgument : "expr" "place_meeting(x,y, obj_teardrop)"
if(place_meeting(x,y, obj_teardrop))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 304ED99C
	/// @DnDParent : 111324D3
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E699357
/// @DnDArgument : "expr" "place_meeting(x,y, obj_circlingangrypuff)"
if(place_meeting(x,y, obj_circlingangrypuff))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0AA0A219
	/// @DnDParent : 7E699357
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 537075E3
/// @DnDArgument : "expr" "place_meeting(x,y, obj_cannonbadproj)"
if(place_meeting(x,y, obj_cannonbadproj))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22508755
	/// @DnDParent : 537075E3
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25D52F38
/// @DnDArgument : "expr" "instance_exists(obj_pressureplate)"
if(instance_exists(obj_pressureplate))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5E7494E7
	/// @DnDParent : 25D52F38
	/// @DnDArgument : "expr" "obj_pressureplate.hasShifted"
	if(obj_pressureplate.hasShifted)
	{
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 752F19A9
		/// @DnDDisabled : 1
		/// @DnDParent : 5E7494E7
		/// @DnDArgument : "msg" ""moved""
	
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5989C6A5
		/// @DnDParent : 5E7494E7
		/// @DnDArgument : "expr" " !receivedPPDone"
		if( !receivedPPDone)
		{
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 4B2F2C74
			/// @DnDDisabled : 1
			/// @DnDParent : 5989C6A5
			/// @DnDArgument : "msg" ""ppdone""
		
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C36BC60
			/// @DnDParent : 5989C6A5
			/// @DnDArgument : "expr" "currentInteractionCount+obj_pressureplate.boxCount"
			/// @DnDArgument : "var" "currentInteractionCount"
			currentInteractionCount = currentInteractionCount+obj_pressureplate.boxCount;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 2F8FC037
			/// @DnDParent : 5989C6A5
			/// @DnDArgument : "expr" "currentInteractionCount > maxInteractionCount"
			if(currentInteractionCount > maxInteractionCount)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 23A193B6
				/// @DnDParent : 2F8FC037
				/// @DnDArgument : "expr" "maxInteractionCount"
				/// @DnDArgument : "var" "currentInteractionCount"
				currentInteractionCount = maxInteractionCount;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A5F52A2
			/// @DnDParent : 5989C6A5
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "receivedPPDone"
			receivedPPDone = true;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4F072990
/// @DnDArgument : "expr" "instance_exists(obj_switch)"
if(instance_exists(obj_switch))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 19489E8A
	/// @DnDParent : 4F072990
	/// @DnDArgument : "expr" "!obj_switch.transmittedSwitchCount && obj_switch.switchPressed"
	if(!obj_switch.transmittedSwitchCount && obj_switch.switchPressed)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4E703DC4
		/// @DnDParent : 19489E8A
		/// @DnDArgument : "expr" "currentInteractionCount + 1"
		/// @DnDArgument : "var" "currentInteractionCount"
		currentInteractionCount = currentInteractionCount + 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 796D9561
		/// @DnDParent : 19489E8A
		/// @DnDArgument : "expr" "currentInteractionCount > maxInteractionCount"
		if(currentInteractionCount > maxInteractionCount)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73AE4DD3
			/// @DnDParent : 796D9561
			/// @DnDArgument : "expr" "maxInteractionCount"
			/// @DnDArgument : "var" "currentInteractionCount"
			currentInteractionCount = maxInteractionCount;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0015C618
		/// @DnDParent : 19489E8A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "obj_switch.transmittedSwitchCount"
		obj_switch.transmittedSwitchCount = true;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 1DAF3ADB
		/// @DnDDisabled : 1
		/// @DnDParent : 19489E8A
		/// @DnDArgument : "msg" ""plus one anyhow""
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55570B81
/// @DnDArgument : "expr" "keyParts == 3 && !builtKey"
if(keyParts == 3 && !builtKey)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B2442CA
	/// @DnDParent : 55570B81
	/// @DnDArgument : "xpos" "x "
	/// @DnDArgument : "ypos" "y "
	/// @DnDArgument : "objectid" "obj_keythatopensall"
	/// @DnDSaveInfo : "objectid" "obj_keythatopensall"
	instance_create_layer(x , y , "Instances", obj_keythatopensall);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 76E7C1D4
	/// @DnDParent : 55570B81
	/// @DnDArgument : "objectid" "obj_trackKey"
	/// @DnDSaveInfo : "objectid" "obj_trackKey"
	instance_create_layer(0, 0, "Instances", obj_trackKey);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4120DE8F
	/// @DnDParent : 55570B81
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "builtKey"
	builtKey = true;
}