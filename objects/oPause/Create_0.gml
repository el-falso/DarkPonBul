/// @description Insert description here
surfacePause = noone;

isPaused = false;

vw = camera_get_view_width(camera_get_active());
vh = camera_get_view_height(camera_get_active());

surfaceWidth = 400;
surfaceHeight = 200;

if (!surface_exists(surfacePause)) {	
	surfacePause = surface_create(surfaceWidth, surfaceHeight);
}

menuItem[0] = "Resume";
menuItem[1] = "Back to Menu";

currentItem = 0;
move = 0;