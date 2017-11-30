/// @description Create list & Init variables
constants_gamedata();

global.GameData = ds_list_create();
global.GameData[| g_debug] = false;
global.GameData[| g_game_state] = false;
global.GameData[| g_boss_max_health] = 0;
global.GameData[| g_boss_current_health] = 0;
global.GameData[| g_boss_name] = "";
global.GameData[| g_volume_music] = .5;

if (room == rmGame) && (alarm = -1){
	instance_create_depth(0, 0, 0, oCountdown);
	alarm[0] = room_speed * 5;
}

Titelsound1 = noone;
if (room == rmMenu) || (room == rmOptions || (room == rmGame)) {
	if (!audio_is_playing(Titelsound1)) {
		Titelsound1 = audio_play_sound(TitelSound, 100,true);
	}
}