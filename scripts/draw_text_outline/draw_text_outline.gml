/// @func draw_text_outline(str, xx, yy, tcol, ocol)
/// @desc
/// @arg {string} str
/// @arg {real} x
/// @arg {real} y
/// @arg {real} color(text)
/// @arg {real} color(outline)

var str = argument0;
var xx = argument1;
var yy = argument2;
var tcol = argument3;
var ocol = argument4;

draw_set_color(ocol);
draw_text(xx - 1, yy, str);
draw_text(xx + 1, yy, str);
draw_text(xx, yy - 1, str);
draw_text(xx, yy + 1, str);

draw_set_color(tcol);
draw_text(xx, yy, str);