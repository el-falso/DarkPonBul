/// @description Insert description here
draw_self();

if (global.GameData[| g_boss_current_health] == 0) {
	draw_text_outline(global.GameData[| g_boss_name], room_width / 2, room_height / 2, c_white, c_black);
}