/// @description Insert description here
enum state {
	isStopped,
	isPlaying,
	isGameOver
}

currentState = state.isStopped;

y = room_height / 2;

velocity = [0, 0];

spd = 8;

lol = 0;
ballArr = [oLinearBullet, oSinusBullet];
found = false;

tilemap = layer_tilemap_get_id("Border");
cd = noone;
