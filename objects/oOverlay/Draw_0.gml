/// @description Draw Overlay
if (global.GameData[| g_debug]) {
	//draw_text(view_xport[0] + 100, 100, "fps (real): " + string(fps_real));
	//draw_text(view_xport[0] + 100, 150, "fps: " + string(fps));
	for (var i = 0; i < room_speed - 1; i++) {
		FPS[i] = FPS[i+1];
	}
	FPS[room_speed-1] = round(fps_real);

	var TFPS = 0;

	for (var i = 0; i < room_speed; i++) {
		TFPS += FPS[i];
	}
	draw_set_font(font3);
	draw_set_color(c_white);
	draw_text(100, 50, string(fps)+" / "+string(((TFPS/room_speed)>>1)<<1));
	if (num1) {
		draw_bbox();
	}


}