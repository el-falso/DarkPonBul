/// @description Insert description here
enum bulletState {
	loaded,
	shooted
}

state = noone;
creator = oBoss;

//partSys = noone;
//partType = noone;
//partEmit = noone;

//if (!part_system_exists(partSys)) {
	partSys = part_system_create();
//}

//if (!part_type_exists(partType)) {
	partType = part_type_create();
	part_type_shape(partType, pt_shape_square);
	part_type_orientation(partType, 0, 0, 0, 0, true);
	part_type_size(partType, 0.01, 0.05, 0.01, 0.01);
	part_type_speed(partType, 1, 2, 0.1, 0);
	part_type_direction(partType, 0, 0, 0, 1);
	part_type_life(partType, room_speed / 10, room_speed / 6);
//}

//if (!part_emitter_exists(partSys, partEmit)) {
//	partEmit = part_emitter_create(partSys);
////}

//part_emitter_region(partSys, partEmit, x -100, y-100,x+100, y+100, ps_shape_rectangle, ps_distr_linear);
//part_emitter_stream(partSys, partEmit, partType, 4);

if (alarm[0] = -1) {
	alarm = room_speed * 2;
}