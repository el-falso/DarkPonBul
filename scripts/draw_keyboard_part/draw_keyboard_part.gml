var arr = argument0;
var nsBtn = argument1;
var sizeHor = argument2;
var sizeVer = argument3;

draw_set_align("center");
for(var i=0; i < array_length_1d(arr); i++) {
	var innerArr = arr[0,i];
	draw_nineslice(nsBtn, innerArr[0, 0], innerArr[0, 1], innerArr[0, 0] + sizeHor, innerArr[0, 1] + sizeVer);
	if(is_string(innerArr[0, 2])) {
		draw_text_outline(innerArr[0, 2], innerArr[0, 0] + sizeHor / 2, innerArr[0, 1] + sizeVer / 2, c_white, c_black);
	} else {
		draw_sprite(innerArr[0, 2], 0, innerArr[0, 0] + sizeHor / 2, innerArr[0, 1] + sizeVer / 2);
	}
}
draw_set_align("left");