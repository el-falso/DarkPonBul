/// @description Draw Menu

draw_set_align("center");
draw_set_font(fntMenuHeadline);
draw_text_outline("Dark PonBul", room_width / 2, 80, c_white, c_black);
draw_set_font(fntMenu);
for (i = 0; i < array_length_1d(menuItem); i++) {
	if (i == currentItem) {
		draw_text_outline(menuItem[i], room_width / 2, 150 + 50 * i, c_white, c_red);
	} else {
		draw_text_outline(menuItem[i], room_width / 2, 150 + 50 * i, c_white, c_black);
	}
}
draw_default();