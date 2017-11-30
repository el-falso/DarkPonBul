/// @func draw_nineslice(sprite, x1, y1, x2, y2)
/// @desc
/// @arg sprite
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2
/// @arg {real} y2

#region define variables
var sprite = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
#endregion


var width = abs(x2 - x1);
var height = abs(y2 - y1);



var sliceWidth = sprite_get_width(sprite) / 3;
var sliceHeight = sprite_get_height(sprite) / 3;
		
draw_sprite_part(sprite, 0, 0, 0, sliceWidth, sliceHeight, x1, y1);
draw_sprite_part_ext(sprite, 0, sliceWidth, 0, sliceWidth, sliceHeight, x1 + sliceWidth, y1, (width - sliceWidth * 2) / sliceWidth, 1, -1, 1);
draw_sprite_part(sprite, 0, sliceWidth * 2, 0, sliceWidth, sliceHeight, x2 - sliceWidth, y1);

draw_sprite_part_ext(sprite, 0, 0, sliceHeight, sliceWidth, sliceHeight, x1, y1 + sliceHeight, 1, (height - sliceHeight * 2) / sliceHeight, -1, 1);
draw_sprite_part_ext(sprite, 0, sliceWidth, sliceHeight, sliceWidth, sliceHeight, x1 + sliceWidth , y1 + sliceHeight, (width - sliceWidth * 2) / sliceWidth , (height - sliceHeight * 2) / sliceHeight, -1, 1);
draw_sprite_part_ext(sprite, 0, sliceWidth * 2, sliceHeight, sliceWidth, sliceHeight, x2 - sliceWidth, y1 + sliceHeight, 1, (height - sliceHeight * 2) / sliceHeight, -1, 1);

draw_sprite_part(sprite, 0, 0, sliceHeight*2, sliceWidth, sliceHeight, x1, y2 - sliceHeight);
draw_sprite_part_ext(sprite, 0, sliceWidth, sliceHeight*2, sliceWidth, sliceHeight, x1 + sliceWidth, y2 - sliceHeight, (width - sliceWidth * 2) / sliceWidth, 1, -1, 1);
draw_sprite_part(sprite, 0, sliceWidth * 2, sliceHeight*2, sliceWidth, sliceHeight, x2 - sliceWidth, y2 - sliceHeight);
