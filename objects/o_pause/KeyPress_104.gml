if(volumeLevel < 1){
	volumeLevel += 0.05;
	audio_master_gain(volumeLevel);
}
