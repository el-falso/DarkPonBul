/// @description Insert description here

if (keyboard_check_pressed(vk_escape)) {
	isPaused = !isPaused;
}

isEnterPressed = keyboard_check_pressed(vk_enter);


move = max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S"))) - max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")));


currentItem += move;

if (currentItem < 0) {
	currentItem = array_length_1d(menuItem) - 1;			
}
if (currentItem >= array_length_1d(menuItem)) {
	currentItem = 0;
}

if (isEnterPressed) {
	switch (currentItem) {
		case 0:
			keyboard_key_press(vk_escape);
			isPaused = !isPaused;
			break;
		case 1:
			room_goto(rmMenu);
			break;
		default:
			break;
	}
}