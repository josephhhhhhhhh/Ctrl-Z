if (global.pause) exit;
//time reverse


if(obj_timetraveller.currentInteractionCount){
	audio_play_sound(ES_Ascend_Rewind___SFX_Producer_new, 1, false);
	repeat(100)
    {
    var xx = x + random_range(-900,900);
    var yy = y + random_range(-500,500);
    part_particles_create(global.P_System, xx, yy, global.Particle1, 1);
    }
	
	if(instance_exists(obj_switch)){
		if(obj_switch.switchCount > 0){
			obj_switch.isTriggered = !obj_switch.isTriggered;
			obj_switch.switchCount-=1;
			obj_switch.activatedByTouch = false;
			obj_switch.activatedByRewind = true;
			if(instance_exists(obj_door)){
				audio_play_sound(Door_Open_new,1,false);
			}
			if(instance_exists(obj_portalblocker) || instance_exists(obj_portalblockerBoth)){
				audio_play_sound(Door_Open_new,1,false);
			}
			show_debug_message("triggered reversal");
		}
	}
	if(instance_exists(obj_pressureplate)){
		if(!instance_exists(obj_unrewindablebox)){
			obj_pressureplate.hasShifted = false;
			receivedPPDone = false;
		}
		if(obj_pressureplate.boxCount == 1){
			if instance_exists(obj_switch){
				obj_switch.switchCount += 1;
				show_debug_message("this happened!!" + string(obj_switch.switchCount));
			}
		}
		if(instance_exists(obj_unrewindablebox) && obj_pressureplate.isTriggered && obj_pressureplate.boxCount == 1){
			if instance_exists(obj_switch){
				obj_switch.switchCount -= 1;
				show_debug_message("then this happened!!");
			}
		}
	}
	
	if(instance_exists(obj_box)){
		for(i=0;i<instance_number(obj_box);i++){
		obox = instance_find(obj_box, i);
			obox.x = obox.xstart;
			obox.y = obox.ystart;
		}
	}
	
	for(i=0;i<instance_number(obj_angrypuff);i++){
		ap = instance_find(obj_angrypuff, i);
		ap.x = ap.xstart;
		ap.y = ap.ystart;
	}
	for(i=0;i<instance_number(obj_circlingangrypuff);i++){
		ap = instance_find(obj_circlingangrypuff, i);
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
			}
		}
		if(instance_exists(inst_16A8EF39)){
			if(!inst_16A8EF39.projectileready){
				inst_16A8EF39.projectileready = true;
			}
		}
		if(instance_exists(inst_35C616A1)){
			if(!inst_35C616A1.projectileready){
				inst_35C616A1.projectileready = true;
			}
		}
	}
	if(instance_exists(obj_teardrop)){
		instance_destroy(obj_teardrop);
	}
	if(instance_exists(obj_cannonbadproj)){
		instance_destroy(obj_cannonbadproj);
	}
	currentInteractionCount--;
}
