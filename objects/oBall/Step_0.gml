/// @description Insert description here
event_inherited();

var vec2X = 0;
var vec2Y = 1;

if (global.GameData[| g_game_state]) {
	if (state == bulletState.shooted) {

	

		if (velocity[vec2Y] < 0) {
			c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) ;
			c2 = tilemap_get_at_pixel(tilemap, bbox_right-1, bbox_top);
			if (c1 != 0 || c2 != 0) {
				audio_play_sound(ef_klonk, 100, false);
				y = bbox_top & ~(32-1);
				y += 32 +y -bbox_top
				//y = y - (y mod 32) - (bbox_top - y)
				velocity[vec2Y] *= -1;
			}
		} else {
			c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);
			c2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom);
			if (c1 != 0 || c2 != 0) {
				audio_play_sound(ef_klonk, 100, false);
				y = bbox_bottom & ~(32 - 1);
				y -= bbox_bottom - y;
				velocity[vec2Y] *= -1;
			}
		}

		if (velocity[vec2X] <= 0) {
			if (place_meeting(x + velocity[vec2X], y, oPlayer)) {
				audio_play_sound(ef_klonk, 100, false);
				while (!place_meeting(x + sign(velocity[vec2X]), y, oPlayer)) {
					velocityNormal[@ vec2Y] = 1;
				}
				if ((oPlayer.moveHorizontal && oPlayer.moveVertical) == 0) {
					velocity[vec2X] *= -1;
				}
				if ((oPlayer.velocity[vec2Y] < 0 && velocityY < 0) || (oPlayer.velocity[vec2Y] > 0 && velocityY > 0)) {
					velocity[vec2X] *= -1;
					//velocity[vec2Y] += oPlayer.velocity[vec2Y] / 2;
				}
				if ((oPlayer.velocity[vec2Y] > 0 && velocityY < 0) || (oPlayer.velocity[vec2Y] < 0 && velocityY > 0)) {
					velocity[vec2X] *= -1;
					velocity[vec2Y] *= -1;
				}
			}
		} else {
			if (place_meeting(x, y, oBoss)) {
				global.GameData[| g_boss_current_health] -= 50;
				instance_destroy();
			}
		}
		velocityNormal = norm_vec2([velocity[vec2X], velocity[vec2Y]]);
	
		velocityX = velocityNormal[vec2X] * spd;
		velocityY = velocityNormal[vec2Y] * spd;

		x += velocityX;
		y += velocityY;
	}
}