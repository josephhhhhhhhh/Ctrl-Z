//time reverse
if(obj_switch.switchCount > 0){
	obj_switch.isTriggered = !obj_switch.isTriggered;
	obj_switch.switchCount-=1;
}
if(obj_box){
	obj_box.x = obj_box.xstart;
	obj_box.y = obj_box.ystart;
}
for(i=0;i<instance_number(obj_angrypuff);i++){
	ap = instance_find(obj_angrypuff, i);
	ap.x = ap.xstart;
	ap.y = ap.ystart;
}
//obj_angrypuff.x = obj_angrypuff.xstart;
//obj_angrypuff.y = obj_angrypuff.ystart;
if(!instance_exists(obj_keythatopensall)){
	var inst;
	inst = instance_create_layer(obj_trackKey.keyX, obj_trackKey.keyY, "Instances",obj_keythatopensall);
	obj_door.keythatopensallishere = false;
}

//idea for saving intermediary states: 
//1) create counter; counter=0 2) When next state comes, save positions of things that need to be returned, 
//	so counter++;