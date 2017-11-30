/// @description Insert description here

draw_set_align("center");
draw_set_alpha(alpha);
str = (seconds >= 0) ? ceil(seconds) : "Start";
draw_text_outline(str, room_width / 2, room_height / 2, c_white, c_black);

