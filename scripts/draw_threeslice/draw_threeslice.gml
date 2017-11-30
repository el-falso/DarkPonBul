/// @func draw_threeslice(sprite, isHorizontal, x1, y1, x2y2)
/// @desc
/// @arg sprite
/// @arg {bool} isHorizontal
/// @arg {real} x1
/// @arg {real} y1
/// @arg {real} x2y2

#region define variables
var sprite = argument0;
var isHorizontal = argument1
var x1 = argument2;
var y1 = argument3;
var x2y2 = argument4;	// isHorizontal == True => x2; isHorizontal == False => y2;
#endregion


var width = abs(x2y2 - x1);
var height = abs(x2y2 - y1);


if (isHorizontal) {
	var sliceWidth = sprite_get_width(sprite) / 3;
	var sliceHeight = sprite_get_height(sprite);
		
	draw_sprite_part(sprite, 0, 0, 0, sliceWidth, sliceHeight, x1, y1);
	draw_sprite_part_ext(sprite, 0, sliceWidth, 0, sliceWidth, sliceHeight, x1 + sliceWidth, y1, (width - sliceWidth * 2) / sliceWidth, 1, -1, 1);
	draw_sprite_part(sprite, 0, sliceWidth * 2, 0, sliceWidth, sliceHeight, x2y2 - sliceWidth, y1);
} else {
	var sliceWidth = sprite_get_width(sprite);
	var sliceHeight = sprite_get_height(sprite) / 3;
		
	draw_sprite_part(sprite, 0, 0, 0, sliceWidth, sliceHeight, x1, y1);
	draw_sprite_part_ext(sprite, 0, 0 , sliceHeight, sliceWidth, sliceHeight, x1, y1 + sliceHeight, 1, (height - sliceHeight * 2) / sliceHeight, -1, 1);
	draw_sprite_part(sprite, 0, 0, sliceHeight * 2, sliceWidth, sliceHeight, x1, x2y2 - sliceHeight);
}