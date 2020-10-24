//time reverse
show_debug_message("Current switch count: " + string(obj_switch.switchCount));
if(obj_timetraveller.currentInteractionCount){
	
	if(instance_exists(obj_switch)){
		if(obj_switch.switchCount > 0){
			obj_switch.isTriggered = !obj_switch.isTriggered;
			obj_switch.switchCount-= 1;
			show_debug_message("switch count minus 1");
			
		}
	}
	if(instance_exists(obj_pressureplate)){
		if(!instance_exists(obj_unrewindablebox)){
			obj_pressureplate.hasShifted = false;
			receivedPPDone = false;
		}
		if(obj_pressureplate.boxCount == 1){
			if instance_exists(obj_switch){
				obj_pressureplate.boxCount=1;
				obj_switch.switchCount += 1;
			}
		}
		if(instance_exists(obj_unrewindablebox) && obj_pressureplate.boxCount == 1){
			if instance_exists(obj_switch){
				obj_switch.switchCount -= 1;
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
			if(instance_exists(obj_door)){
				obj_door.keythatopensallishere = false;
			}
			obj_trackKey.keyUsedCount = obj_trackKey.keyUsedCount - 1;
		}
	}
	
	if(instance_exists(obj_cannonlever)){
		if(instance_exists(inst_540298E6)){
			if(!inst_540298E6.projectileready){
				inst_540298E6.projectileready = true;
				inst_540298E6.image_angle = inst_540298E6.startAngle+90;
			}
		}
		if(instance_exists(inst_16A8EF39)){
			if(!inst_16A8EF39.projectileready){
				inst_16A8EF39.projectileready = true;
				inst_16A8EF39.image_angle = inst_16A8EF39.startAngle+90;
			}
		}
		if(instance_exists(inst_35C616A1)){
			if(!inst_35C616A1.projectileready){
				inst_35C616A1.projectileready = true;
				inst_35C616A1.image_angle = inst_35C616A1.startAngle+90;
			}
		}
	}
	obj_timetraveller.currentInteractionCount -= 1;
}
//obj_angrypuff.x = obj_angrypuff.xstart;
//obj_angrypuff.y = obj_angrypuff.ystart;
//idea for saving intermediary states: 
//1) create counter; counter=0 2) When next state comes, save positions of things that need to be returned, 
//	so counter++;