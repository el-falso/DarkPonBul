/// @description Insert description here

randomize();

if (global.GameData[| g_game_state]) {

	if (!instance_exists(oBall)) {
		isBallReady = true;
	} else {
		isBallReady = false;
	}

	#region Movement

	if (verticalDirection < 0) {
		c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top);
		c2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top);
		if (c1 || c2) {
			verticalDirection = 1;
		}
	} else {
		c1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);
		c2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom);
		if (c1 || c2) {
			verticalDirection = -1;
		}
	}

	y += verticalDirection * spd;
	#endregion

	with (oCannon) {
		y += other.verticalDirection * other.spd;
	}

	switch (stage) {
		case 1:
			if (isBallReady) {
				selectedBullet = choose(1, 2);
			} else {
				selectedBullet = choose(1, 1);
			}
			break;
		case 2:
			if (isBallReady) {
				selectedBullet = irandom_range(0, 2);
			} else {
				selectedBullet = irandom_range(0, 1);
			}
			break;
		default:
			break;
	}

	if ((global.GameData[| g_boss_current_health] / global.GameData[| g_boss_max_health]) < .5) {
		stage = 2;
	}


	#region Attack

	for (var i = 0; i < instance_number(oCannon); i++) {
	   cannonArr[i] = instance_find(oCannon,i);
	}
	choosenCannon = cannonArr[irandom(array_length_1d(cannonArr) - 1)];
	if (instance_exists(choosenCannon) && !choosenCannon.isLoaded) {
	if (alarm[0] = -1) {
	
		alarm = choose(10, 20, 30);
	}
	}
	#endregion

	if (collision_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2, oPlayer, false, false)) {
		global.GameData[| g_boss_current_health] = clamp(global.GameData[| g_boss_current_health], 0, global.GameData[| g_boss_max_health]);
		global.GameData[| g_boss_current_health] = global.GameData[| g_boss_current_health] - 10;
	}

	if (global.GameData[| g_boss_current_health] < 0) {
		global.GameData[| g_boss_current_health] = 0;
		global.GameData[| g_game_state] = false;
		instance_destroy();
	}
}