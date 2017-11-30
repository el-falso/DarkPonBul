/// @description Menu Logic

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
			room_goto(rmGame);
			break;
		//case 1:
			//room_goto(rmOptions);
			//break;
		case 1:
			room_goto(rmControls);
			break;
		case 2:
			room_goto(rmCredits);
			break;
		case 3:
			game_end();
			break;
		default:
			break;
	}
}
