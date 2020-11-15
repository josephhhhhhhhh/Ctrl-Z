var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0);
var left_click = mouse_check_button_pressed(mb_left);


if point_in_rectangle(mousex, mousey, 30, 30 , 128, 128){
	
	if (left_click){
		room_goto(Menu_StartMenu)
	}
	
}