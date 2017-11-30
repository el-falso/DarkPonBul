/// @description Insert description here
draw_self();

if (currentState == state.isGameOver) {
	draw_text_outline("You died!", room_width / 2, room_height / 2 - 25, c_white, c_black);
}