if(place_meeting(x,y,obj_timetraveller) || distance_to_point(obj_timetraveller.x, obj_timetraveller.y-29) <= 19)
{	

	obj_timetraveller.pointsCollected = ++obj_timetraveller.pointsCollected;
	
	instance_destroy();
}