if file_exists("Save.sav"){
	var LoadFile = file_text_open_read("Save.sav");
	var LoadedRoom = file_text_read_real(LoadFile);
	file_text_close(LoadFile);
	
	for (var i = 0; i < LoadedRoom+1; i += 1){
		if (i == 22){
			break;
		}
		if (global.levelpass[i] == 0){
			global.levelpass[i] = 1	
		}
	}
	
}

else{
	for (var i = 1; i < buttons; i += 1){
		if (global.levelpass[i] == 1){
			global.levelpass[i] = 0
		}
	}
}
