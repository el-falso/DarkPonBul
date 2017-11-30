/// @description Insert description here
event_inherited();
if (global.GameData[| g_game_state]) {
	if (state == bulletState.shooted) {
		x -= spd;
		part_particles_create(partSys, x + 8, y, partType, 5);
	}
}