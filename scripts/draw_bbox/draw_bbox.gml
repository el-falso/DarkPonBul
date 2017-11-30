for (i = 0; i < instance_number(all); i++) {
	oid = instance_find(all, i);
	if (oid != 100001){
	draw_line_color(oid.x - (oid.x - oid.bbox_left), oid.y - (oid.y - oid.bbox_top), oid.x + (oid.bbox_right - oid.x), oid.y - (oid.y - oid.bbox_top), c_red, c_red);
	draw_line_color(oid.x - (oid.x - oid.bbox_left), oid.y + (oid.bbox_bottom - oid.y), oid.x + (oid.bbox_right - oid.x), oid.y + (oid.bbox_bottom - oid.y), c_red, c_red);
	
	draw_line_color(oid.x - (oid.x - oid.bbox_left), oid.y - (oid.y - oid.bbox_top), oid.x - (oid.x - oid.bbox_left), oid.y + (oid.bbox_bottom - oid.y), c_green, c_green);
	draw_line_color(oid.x + (oid.bbox_right - oid.x), oid.y - (oid.y - oid.bbox_top), oid.x + (oid.bbox_right - oid.x), oid.y + (oid.bbox_bottom - oid.y), c_green, c_green);
}}