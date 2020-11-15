if(hasTouchedLava == true)
{
	effect_create_above(ef_explosion, x, y, 1, c_yellow);
	instance_destroy();
}

if(place_meeting(x,y, obj_angrypuff))
{
	effect_create_above(ef_explosion, x, y, 1, c_yellow);
	instance_destroy();
}

if(place_meeting(x,y, obj_bosspuff))
{
	effect_create_above(ef_explosion, x, y, 1, c_yellow);
	instance_destroy();
}

if(place_meeting(x,y, obj_teardrop))
{
	effect_create_above(ef_explosion, x, y, 1, c_yellow);
	instance_destroy();
}

if(place_meeting(x,y, obj_circlingangrypuff))
{
	effect_create_above(ef_explosion, x, y, 1, c_yellow);
	instance_destroy();
}

if(place_meeting(x,y, obj_cannonbadproj))
{
	effect_create_above(ef_explosion, x, y, 1, c_yellow);
	instance_destroy();
}

if(instance_exists(obj_pressureplate))
{
	if(obj_pressureplate.hasShifted)
	{
	
	
		if( !receivedPPDone)
		{
			if(currentInteractionCount < maxInteractionCount){
				currentInteractionCount = currentInteractionCount+obj_pressureplate.boxCount;
			}
			if(instance_exists(obj_switch) && instance_exists(obj_unrewindablebox)){
				if(obj_switch.switchCount<obj_switch.countLimit){
					obj_switch.switchCount += 1;
				}
			}
		
			receivedPPDone = true;
		}
	}
}

if(instance_exists(obj_switch))
{
	if(!obj_switch.transmittedSwitchCount && obj_switch.switchPressed)
	{
		currentInteractionCount = currentInteractionCount + 1;
	
		if(currentInteractionCount > maxInteractionCount)
		{
			currentInteractionCount = maxInteractionCount;
		}
	
		obj_switch.transmittedSwitchCount = true;
	}
}

if(keyParts == 3 && !builtKey)
{
	instance_create_layer(x , y , "Instances", obj_keythatopensall);

	instance_create_layer(0, 0, "Instances", obj_trackKey);

	builtKey = true;
}

if (place_meeting(x,y,obj_door)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_door)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_door)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_door)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_door)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_door)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_door)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_door)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_door)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_unrewindabledoor)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_unrewindabledoor)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_unrewindabledoor)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_unrewindabledoor)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_unrewindabledoor)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_unrewindabledoor)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_unrewindabledoor)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_unrewindabledoor)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_unrewindabledoor)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_switch)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_switch)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_switch)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_switch)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_switch)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_switch)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_switch)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_switch)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_switch)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_cannonlever)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_cannonlever)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_cannonlever)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_cannonlever)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_cannonlever)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_cannonlever)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_cannonlever)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_cannonlever)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_cannonlever)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_walls)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_walls)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_walls)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_walls)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_walls)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_walls)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_walls)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_walls)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_walls)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_cannon)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_cannon)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_cannon)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_cannon)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_cannon)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_cannon)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_cannon)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_cannon)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_cannon)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_portalblocker)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_portalblocker)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_portalblocker)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_portalblocker)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_portalblocker)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_portalblocker)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_portalblocker)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_portalblocker)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_portalblocker)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_portalblockerBoth)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_portalblockerBoth)){
      x+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_portalblockerBoth)){
      x-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_portalblockerBoth)){
      y-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_portalblockerBoth)){
      y+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_portalblockerBoth)){
      x+=i;
      y-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_portalblockerBoth)){
      x-=i;
      y-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_portalblockerBoth)){
      x+=i;
      y+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_portalblockerBoth)){
      x-=i;
      y+=i;
      break;
    }
  }
}
if(place_empty(x,y)){
	walkingspeed = 5;
}
if(x==xprevious && y==yprevious){
	image_speed = 0;
} else if (x!=xprevious || y != yprevious) {
	image_speed = 1;	
}
