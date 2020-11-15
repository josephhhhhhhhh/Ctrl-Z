draw_sprite_ext(icon_UIbar,0, 0, 702,  1,1,0,c_white,1) 

draw_set_color(c_black)
draw_set_font(Font_UI);
draw_set_halign(fa_left)

draw_text(57, hudy+2, string("Lvl " + string_digits(room_get_name(room))));

draw_text(745, hudy+2, string("Time  Reversals: ") + string(obj_timetraveller.currentInteractionCount));
draw_healthbar(1075, hudy, 1320, hudy+30, (obj_timetraveller.currentInteractionCount/obj_timetraveller.maxInteractionCount)*100, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF1ECC32 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));

draw_sprite_ext(icon_time,0, 505, hudy-5,  0.65,0.65,0,c_white,1)
draw_text(570, hudy+2, string(round(timekeeper/3600)) + string(" m  ") + string(round(timekeeper/60)%60)+string(" s"));


//for (var i = 0; i < 3; i ++ ){
//	draw_sprite_ext(spr_keypart,0, 200 + (40*i), 725 , 1, 1 ,0,c_white,1)
//}
	
if (obj_timetraveller.pointsCollected > 0){
	for (var i = 0; i < obj_timetraveller.pointsCollected; i ++ ){
		draw_sprite_ext(spr_points,0, 280 + (55*i), hudy-5,  0.65,0.65,0,c_white,1)}
}

if  instance_exists(obj_keythatopensall) and (obj_keythatopensall.pickedUpByTimeTraveller){
	draw_sprite_ext(spr_keythatopensall,0, 240, hudy+15,  0.7,0.7,0,c_white,1)
}