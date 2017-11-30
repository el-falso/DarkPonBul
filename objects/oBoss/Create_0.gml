/// @description Insert description here
enum loadedBullet {
	sinus,
	linear,
	ball
}
y = room_height / 2;
image_index = 0;
image_speed = .5;


global.GameData[| g_boss_name] = "RNGsus";

Cannon[0, 0] = -10
Cannon[0, 1] = -20
Cannon[1, 0] = -10
Cannon[1, 1] = 20

choosenCannon = noone;

tilemap = layer_tilemap_get_id("Border");

verticalDirection = 1;
spd = 4;
selectedBullet = 0;
stage = 1;
global.GameData[| g_boss_max_health] = 500;
global.GameData[| g_boss_current_health] = global.GameData[| g_boss_max_health];

isBallReady = true;

for (var i = 0; i <array_length_2d(Cannon, 0); i++) {
	instance_create_depth(x + Cannon[i, 0], y + Cannon[i, 1], 0, oCannon)
}