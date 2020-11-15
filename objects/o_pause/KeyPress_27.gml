if (global.win) exit;

if (global.htp){
	global.htp = 0
}
else{

	if (global.pause == 0){
		global.pause = 1;
	}

	else{
		global.pause = 0;
	}
}