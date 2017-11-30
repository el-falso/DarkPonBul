var str = argument0;
var xx = argument1;
var yy = argument2;
//draw_set_circle_precision(4);
draw_roundrect(xx, yy, xx + 16, yy + 16, true);
draw_set_align("center");
if (is_string(str)) {
	draw_text_outline(str, xx + 8, yy + 8, c_white, c_black);
} else {
	draw_sprite(str, 0, xx + 8, yy + 8);
}
draw_set_align("left");