/// @description Insert description here
if (keyboard_check_pressed(vk_numpad0)) {
	global.GameData[| g_debug] = !global.GameData[| g_debug];
}
if (global.GameData[| g_debug] && keyboard_check_pressed(vk_numpad1)) {
	num1 = !num1
}

//TFPS1 += fps_real
//counter++;
//if (counter > room_speed) {
//	counter = 1;
//	TFPS1 = 0;
//}