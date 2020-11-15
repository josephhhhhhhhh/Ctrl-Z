 
var i = 0
repeat(buttons) {
	
	draw_set_font(Font_main);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	if (menu_index == i) {
		draw_set_color(c_white)
		draw_set_font(Font_main)
	};
	
	if (i < 2){
		col = ls_x + gap*i;
		row = ls_y + hgap;
	}
	if (i > 1 and i < 4 ){
		col = ls_x + gap*(i-2);
		row = ls_y  + hgap*2;
	}
	if (i > 3){
		col = ls_x + gap*(i-4);
		row = ls_y  + hgap*3;
	}
	
	
	
	draw_sprite_ext(icon[i],-1, col - 32, row,1,1,0,c_white,1)
	if (menu_index == 1) {
		draw_sprite_ext(icon_level_mouse,-1, ls_x + gap - 32, ls_y + hgap,1,1,0,c_white,1)
	}
	
	draw_text(col+3, row + 80, button[i]);
	//draw_rectangle(col - string_width(button[i])/2, row , col + string_width(button[i])/2, row + button_h,false)

	i++;
}

//FUN
if (not ctrl and not z) draw_sprite_ext(spr_logo,-1, 120, 120,1,1,0,c_white,1);
if (ctrl and not z) draw_sprite_ext(spr_logo_c,-1, 120, 120,1,1,0,c_white,1);
if (not ctrl and z) draw_sprite_ext(spr_logo_z,-1, 120, 120,1,1,0,c_white,1);
if (ctrl and z) draw_sprite_ext(spr_logo_cz,-1, 120, 120,1,1,0,c_white,1);

//DEBUG
if (global.debug > 4){
	draw_set_font(Font_title)
	draw_set_color(c_black)
	draw_text(menu_x,35,"DEBUG MODE")
}

//NEWGAMEWARNING
if (newgame == 1){
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(), false);
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_newgame,-1, menu_x- sprite_get_width(spr_newgame)/2, menu_y/2,1,1,0,c_white,1);
	
	draw_set_font(Font_title)
	draw_set_color(c_black)
	draw_text(menu_x,menu_y-90,"SAVED  DATA")
	draw_text(menu_x,menu_y-55,"WILL  BE  ERASED.")
}