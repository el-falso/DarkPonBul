/// @description Insert description here
if (global.GameData[| g_game_state] == false) && ( global.GameData[| g_boss_current_health])  == 0 {
 if (alarm[0] = -1) {
	instance_create_depth(x, y, 0, oCountdown);
	alarm = room_speed * 5;
 }
}