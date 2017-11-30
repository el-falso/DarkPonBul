/// @description Insert description here
if(mouse_check_button_pressed(mb_left)) {
	if (collision_point(mouse_x, mouse_y, oBtnStart, false, false)) {
		room_goto(rmMenu);
	}
}