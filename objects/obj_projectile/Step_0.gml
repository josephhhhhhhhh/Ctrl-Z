if(global.win == 1)
{
	exit;
}


y += 5;

if(place_meeting(x,y,obj_bosspuff))
{
	obj_bosspuff.bosshealth = obj_bosspuff.bosshealth-1;

	instance_destroy();
}

if(place_meeting(x,y,obj_walls))
{
	instance_destroy();
}