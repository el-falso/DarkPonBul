/// @description Insert description here
//if (global.GameData[| g_room_state] == roomState.isPaused) exit;

if (seconds >= 0) {
	seconds -= delta_time/1000000;
} else {
	fadeIn = false;
	completed = true;
}


if (fadeIn) {
	if (alpha <= 1) {
		alpha += 0.05;
	}
	else { 
		alpha = 1;
		fadeIn = false;
	}
}
else {
	if (alpha >= 0 && alpha <= 1 && seconds <= 0) {
		alpha -= 0.05;
	}
	else if (alpha <= 0 && seconds <= 0) {
		alpha = 0;
		completed = true;
		//oCounter.started = true;
		instance_destroy();
		
		//fadeIn = true;
	}
}

