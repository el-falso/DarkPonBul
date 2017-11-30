/// @description Insert description here
bossHealth = lerp(bossHealth, global.GameData[| g_boss_current_health], .5);

global.GameData[| g_settings_width] = camera_get_view_width(camera_get_active());
global.GameData[| g_settings_height] = camera_get_view_height(camera_get_active());

draw_set_alpha(1);
//draw_sprite(sprHealthbar, 0, ((view_wport[0]) - sprite_get_width(sprHealthbar)) / 2, view_hport[0] - 100);
draw_set_align("left");
draw_set_font(fntGame);
draw_text(global.GameData[| g_settings_width] * 0.10, global.GameData[| g_settings_height] - 120, global.GameData[| g_boss_name]);
draw_set_align("right");
draw_text(global.GameData[| g_settings_width] * 0.90,
	global.GameData[| g_settings_height] - 120,
	global.GameData[| g_boss_current_health]);
draw_threeslice(sprHealthbar,
	true,
	global.GameData[| g_settings_width] * 0.10,
	global.GameData[| g_settings_height] - 100,
	global.GameData[| g_settings_width] * 0.90);
draw_sprite_ext(sprite12,
	0,
	global.GameData[| g_settings_width] * 0.10 + 1,
	global.GameData[| g_settings_height] - 98,
	bossHealth / 500 * (global.GameData[| g_settings_width] * 0.90 - 4 - global.GameData[| g_settings_width] * 0.10 + 1) / sprite_get_width(sprite12),
	1, 0, -1, 1);
