/// @description Insert description here

arr = [[150, 50, "W"], [100, 100, "A"], [150, 100, "S"], [200, 100, "D"]];

arrArrowBtn = [[350, 50, sprArrowUp], [300, 100, sprArrowLeft], [350, 100, sprArrowDown], [400, 100, sprArrowRight]];



if (!surface_exists(surfTutorial)) {
	surfTutorial = surface_create(room_width * 0.8 , room_height * 0.8);
} else {
	surface_set_target(surfTutorial);
	draw_set_alpha(0.75);
	draw_roundrect_color(0, 0, surface_get_width(surfTutorial), surface_get_height(surfTutorial), c_black, c_black, false);
	draw_set_alpha(1);
	draw_set_align("center");
	draw_set_font(fntRegular)
	draw_text_outline("Controls", surface_get_width(surfTutorial) / 2, 20, c_white, c_black);
	draw_roundrect_color(0, 0, surface_get_width(surfTutorial)-2, surface_get_height(surfTutorial)-2, c_white, c_white, true);
	
	draw_text_outline("Press", 50, 91, c_white, c_black);
	draw_keyboard_part(arr, sprButton, 32, 32);
	draw_set_align("center");
	draw_text_outline("or", 275, 91, c_white, c_black);
	draw_keyboard_part(arrArrowBtn, sprButton, 32, 32);
	draw_text_outline(@"for moving the Paddle.
		- Avoid bullets from the enemy.
		- Throwback the ball to
		   damage the enemy.",
		20, 140, c_white, c_black);
	instance_create_depth(450,265, -600, oBtnStart)
	surface_reset_target();
}


draw_surface(surfTutorial, room_width * 0.1, room_height * 0.1);