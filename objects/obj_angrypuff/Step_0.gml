if (global.pause) exit;

timecounter = timecounter+1;

if(shootTears)
{
	if((timecounter%23)==0)
	{
		var tempTear = instance_create_layer(x, y, "Instances", obj_teardrop);
	
		with (tempTear)
		    {
		     direction = other.directionFaced;
		    }
	}
}

if(place_meeting(x+16,y, obj_walls) || place_meeting(x-16,y, obj_walls) || place_meeting(x,y, obj_box)|| place_meeting(x,y, obj_lava) || place_meeting(x,y, obj_portalblocker) || place_meeting(x,y, obj_portalblockerBoth)|| place_meeting(x,y, obj_unrewindablebox))
{
	self.dir = self.dir*-1;
	self.x += self.dir*2*self.walkspeed;
}

if(place_meeting(x,y,obj_angrypuff)){
	show_debug_message("two puffs");
	with(obj_angrypuff) {
		other.dir = other.dir*-1;
		other.x += other.dir*2*other.walkspeed;
		self.dir = self.dir*-1;
		self.x += self.dir*2*self.walkspeed;
	}
}

if(!(canWalkThroughDoors))
{
	if( place_meeting(x,y, obj_door) || place_meeting(x,y, obj_unrewindabledoor))
	{
		self.dir = self.dir*-1;
		self.x += self.dir*2*self.walkspeed;
	}
}

if(instance_exists(obj_switch))
{
	if(obj_switch.isTriggered)
	{
		enemystartsmoving = true;
	}

	else
	{
		enemystartsmoving = false;
	}
}

if(instance_exists(obj_pressureplate))
{
	if( obj_pressureplate.isTriggered )
	{
		enemystartsmoving = true;
	}

	else
	{
		enemystartsmoving = false;
	}
}

if(startWithMove || alternateOn)
{
	enemystartsmoving = true;
}

if(enemystartsmoving)
{
	x += walkspeed*dir;
}

if(transformed)
{
	instance_change(obj_sadpuff, true);

	obj_sadpuff.startWithMove = true;
}

image_xscale = dir;

if(dir==1)
{
	directionFaced = 0;
}

if(dir==-1)
{
	directionFaced = 180;
}

if (place_meeting(x,y,obj_box)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_box)){
      y+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_box)){
      y-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_box)){
      x-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_box)){
      x+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_box)){
      x-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_box)){
      x-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_box)){
      x+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_box)){
      x+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_unrewindablebox)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_unrewindablebox)){
      y+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_unrewindablebox)){
      y-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_unrewindablebox)){
      x-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_unrewindablebox)){
      x+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_unrewindablebox)){
      x-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_unrewindablebox)){
      x-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_unrewindablebox)){
      x+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_unrewindablebox)){
      x+=i;
      break;
    }
  }
}
if (place_meeting(x,y,obj_walls)){
  
  for(var i=0; i<1000; ++i){
    
    //Right
    if (!place_meeting(x+i,y,obj_walls)){
      y+=i;
      break;
    }
    
    //Left
    if (!place_meeting(x-i,y,obj_walls)){
      y-=i;
      break;
    }
    
    //Up
    if (!place_meeting(x,y-i,obj_walls)){
      x-=i;
      break;
    }
    
    //Down
    if (!place_meeting(x,y+i,obj_walls)){
      x+=i;
      break;
    }
    
    //Top Right
    if (!place_meeting(x+i,y-i,obj_walls)){
      x-=i;
      break;
    }
    
    //Top Left
    if (!place_meeting(x-i,y-i,obj_walls)){
      x-=i;
      break;
    }
    //Bottom Right
    if (!place_meeting(x+i,y+i,obj_walls)){
      x+=i;
      break;
    }
    
    //Bottom Left
    if (!place_meeting(x-i,y-i,obj_walls)){
      x+=i;
      break;
    }
  }
}