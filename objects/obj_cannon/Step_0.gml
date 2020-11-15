if(global.pause == 1)
{
	exit;
}

timecounter = timecounter+1;

if(timecounter>300)
{
	timecounter = 0;
}

if(fireoff)
{
	instance_create_layer(x, y+sprite_height/2, "Instances", obj_projectile);

	fireoff = false;
}

if(cannonBad)
{
	if((timecounter%delay)==0 )
	{
		tempBad = instance_create_layer(x, y, "Instances", obj_cannonbadproj);
	
		with(tempBad){
			self.image_angle = other.image_angle-90;
		}
	}
}

if(instance_exists(obj_switchForCannons))
{
	if(obj_switchForCannons.isTriggered)
	{
		resetCannon = true;
	
		instance_destroy(obj_cannonbadproj, true);
	}
}

if(resetCannon)
{
	startTime += 1;
}

if(resetCannon && (startTime>30))
{
	obj_switchForCannons.isTriggered = false;

	resetCannon = false;

	startTime = 0;
}

if(spamMode && timecounter < 150 && !leftHalf)
{
	delay = 5;
}

if(spamMode && timecounter < 150 && leftHalf)
{
	delay = 302;
}

if(spamMode && timecounter > 150 && !leftHalf)
{
	delay = 302;
}

if(spamMode && timecounter > 150 && leftHalf)
{
	delay = 5;
}

if(spamMode && downTheMiddle)
{
	delay = 5;
}