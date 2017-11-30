/// @description Insert description here
if (mouse_check_button(mb_left)) {
	posNormal = (mouse_x - x) / width;
}

posNormal = clamp(posNormal, 0, 1);