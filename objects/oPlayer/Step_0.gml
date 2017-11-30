/// @description Insert description here

//if (global.GameData[| g_game_state]) {
//	currentState = state.isPlaying;
//} else {
//	//currentState = state.isStopped;
//}

if (global.GameData[| g_game_state]) {
	var vec2X = 0;
	var vec2Y = 1;


	moveHorizontal = max(keyboard_check(vk_right), keyboard_check(ord("D"))) - max(keyboard_check(vk_left), keyboard_check(ord("A")));
	moveVertical = max(keyboard_check(vk_down), keyboard_check(ord("S"))) - max(keyboard_check(vk_up), keyboard_check(ord("W")));

	velocity[@ vec2X] = moveHorizontal * spd;

	x += velocity[vec2X];
	x = clamp(x, 0 + x - bbox_left, room_width - (bbox_right - x) - 1);

	velocity[@ vec2Y] = moveVertical * spd;
	y += velocity[vec2Y];
	y = clamp(y, 0 + y - bbox_top, room_height - (bbox_bottom - y) - 1);

		if (moveVertical < 0) {
			c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) ;
			c2 = tilemap_get_at_pixel(tilemap, bbox_right-1, bbox_top);
			if (c1 != 0 || c2 != 0) {
				y = bbox_top & ~(32-1);
				y += 32 +y -bbox_top
				//y = y - (y mod 32) - (bbox_top - y)
			}
		} else {
			c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);
			c2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom);
			if (c1 != 0 || c2 != 0) {
				y = bbox_bottom & ~(32 - 1);
				y -= bbox_bottom - y;
			}
		}


	found = found ||
		collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, oLinearBullet, false, false) ||
		collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, oSinusBullet, false, false)

	if (found) {
		if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, oLinearBullet, false, false)) {
			var collisionID = instance_nearest(x, y, oLinearBullet);
			effect_create_above(ef_explosion, collisionID.x, collisionID.y, 2, c_red);
			effect_create_above(ef_explosion, collisionID.x, collisionID.y, 1.5, c_orange);
			effect_create_below(ef_smoke, collisionID.x, collisionID.y, choose(2,3,4), c_gray);
			//effect_create_above(ef_explosion, collisionID.x, collisionID.y, 1, c_yellow);
			instance_destroy(collisionID);
		} else if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, oSinusBullet, false, false)) {
			var collisionID = instance_nearest(x, y, oSinusBullet);
			effect_create_above(ef_explosion, collisionID.x, collisionID.y, 2, c_red);
			effect_create_above(ef_explosion, collisionID.x, collisionID.y, 1.5, c_orange);
			effect_create_below(ef_smoke, collisionID.x, collisionID.y, choose(2,3,4), c_gray);
			//effect_create_above(ef_explosion, collisionID.x, collisionID.y, 1, c_yellow);
			instance_destroy(collisionID);
		}
		cd = instance_create_depth(0,0,0, oCountdown);
		cd.seconds = 3;
		global.GameData[| g_game_state] = false;
		currentState = state.isGameOver;
		if (alarm = -1) {
			alarm[0] = room_speed * 3;
		}
	}
}