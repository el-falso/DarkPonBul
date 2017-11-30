/// @description Insert description here
//if (room == rmGame) {
//	if (!instance_exists(oBoss)) && (!instance_exists(oPlayer)) {
//		instance_create_depth(room_width - 64, room_height / 2, 0, oBoss);
//		instance_create_depth(32, room_height / 2, 0, oPlayer);
//	}
//}

if (room == rmGame) && (global.GameData[| g_game_state] == false) && ( global.GameData[| g_boss_current_health] == 0) {
	if (!instance_exists(oEnd)) {
		instance_create_depth(x, y, 0, oEnd);
	}
}