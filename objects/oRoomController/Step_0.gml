/// @description Insert description here
if (keyboard_check_pressed(ord("R"))) {
	room_restart();
}

//if (!global.GameData) {
//	global.GameData = ds_list_create();
//	global.GameData[| g_debug] = false;
//	global.GameData[| g_game_state] = false;
//	global.GameData[| g_boss_max_health] = 0;
//	global.GameData[| g_boss_current_health] = 0;
//	global.GameData[| g_volume_music] = .5;
//}

if (Titelsound1) {
	audio_group_set_gain(audiogroup_default, global.GameData[| g_volume_music], 0);
	//audio_sound_gain(Titelsound1, global.GameData[| g_volume_music], 0);
}