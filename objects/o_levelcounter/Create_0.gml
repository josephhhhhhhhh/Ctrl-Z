global.levelpass[0] = 1
global.levelpass[1] = 0
global.levelpass[2] = 0
global.levelpass[3] = 0
global.levelpass[4] = 0
global.levelpass[5] = 0
global.levelpass[6] = 0
global.levelpass[7] = 0
global.levelpass[8] = 0
global.levelpass[9] = 0
global.levelpass[10] = 0
global.levelpass[11] = 0
global.levelpass[12] = 0
global.levelpass[13] = 0
global.levelpass[14] = 0
global.levelpass[15] = 0
global.levelpass[16] = 0
global.levelpass[17] = 0
global.levelpass[18] = 0
global.levelpass[19] = 0
global.levelpass[20] = 0
global.levelpass[21] = 0

levelpasses = array_length_1d(global.levelpass);

global.levelpasscount = 0
var i
for (i = 0; i < levelpasses; i += 1){
	if (global.levelpass[i]){
		global.levelpasscount ++
	}
}