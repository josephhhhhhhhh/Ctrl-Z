//time reverse
if(obj_timetraveller.currentInteractionCount){
	
	if(instance_exists(obj_switch)){
		if(obj_switch.switchCount > 0){
			obj_switch.isTriggered = !obj_switch.isTriggered;
			obj_switch.switchCount-=1;
		}
	}
	if(instance_exists(obj_pressureplate)){
		if(!instance_exists(obj_unrewindablebox)){
			obj_pressureplate.hasShifted = false;
			receivedPPDone = false;
		}
		if(obj_pressureplate.boxCount == 1){
			if instance_exists(obj_switch){
				obj_pressureplate.boxCount -=1;
				obj_switch.switchCount += 1;
			}
		}
	}
	
	if(instance_exists(obj_box)){
		obj_box.x = obj_box.xstart;
		obj_box.y = obj_box.ystart;
	}
	
	for(i=0;i<instance_number(obj_angrypuff);i++){
		ap = instance_find(obj_angrypuff, i);
		ap.x = ap.xstart;
		ap.y = ap.ystart;
	}

	if(!instance_exists(obj_keythatopensall)&&instance_exists(obj_trackKey)){
		if(obj_trackKey.keyUsedCount>0){
			var inst;
			inst = instance_create_layer(obj_trackKey.keyX, obj_trackKey.keyY, "Instances",obj_keythatopensall);
			obj_door.keythatopensallishere = false;
			obj_trackKey.keyUsedCount = obj_trackKey.keyUsedCount - 1;
		}
	}
	
	if(instance_exists(obj_cannonlever)){
		if(!inst_540298E6.projectileready){
			inst_540298E6.projectileready = true;
			inst_540298E6.image_angle = inst_540298E6.startAngle+90;
		}
		if(!inst_16A8EF39.projectileready){
			inst_16A8EF39.projectileready = true;
			inst_16A8EF39.image_angle = inst_16A8EF39.startAngle+90;
		}
	}
	obj_timetraveller.currentInteractionCount -= 1;
}
//obj_angrypuff.x = obj_angrypuff.xstart;
//obj_angrypuff.y = obj_angrypuff.ystart;
//idea for saving intermediary states: 
//1) create counter; counter=0 2) When next state comes, save positions of things that need to be returned, 
//	so counter++;