/// @description Insert description here

if (charCount <= string_length(text)) {
	charCount += 1;
} else {
	if (alarm = -1) {
		alarm[0] = room_speed * 20;
	}
}

textPart = string_copy(text, 1, charCount);

draw_set_align("center");
draw_set_alpha(1);
draw_set_font(fntMenu);
draw_text_outline(textPart, room_width / 2, y + room_height / 2, c_white, c_black);