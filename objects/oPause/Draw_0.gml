/// @description Insert description here

vw = camera_get_view_width(camera_get_active());
vh = camera_get_view_height(camera_get_active());

if (!surface_exists(surfacePause)) {	
	surfacePause = surface_create(surfaceWidth, surfaceHeight);
} else {
	surface_set_target(surfacePause);
	draw_set_alpha(0.75);
	draw_roundrect_color(0, 0, surfaceWidth - 2, surfaceHeight - 2, c_black, c_black, false);
	draw_set_alpha(1);
	draw_set_align("center");
	draw_set_font(fntMenuHeadline);
	draw_text_outline("Dark Ponbul", surface_get_width(surfacePause) / 2, 50, c_white, c_black);
	draw_set_font(fntMenu);
	for (i = 0; i < array_length_1d(menuItem); i++) {
		if (i == currentItem) {
			draw_text_outline(menuItem[i], surface_get_width(surfacePause) / 2, 100 + 50 * i, c_red, c_yellow);
		} else {
			draw_text_outline(menuItem[i], surface_get_width(surfacePause) / 2, 100 + 50 * i, c_white, c_black);
		}
	}
	surface_reset_target();
}

if (isPaused) {
	draw_surface(surfacePause, (vw - surfaceWidth) / 2, (vh - surfaceHeight) / 2);
}