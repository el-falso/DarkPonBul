/// @description Insert description here
instance_create_depth(x, y, -y, oRoomController);
instance_create_depth(x, y, -y, oCamera);
if (instance_exists(oBoss)) {
	instance_create_depth(x, y, -y, oGui);
	instance_create_depth(x, y, -y, oOverlay);
}

instance_create_depth(-100, -100, -y, oLight);

if (room = rmInit) {
	room_goto(rmMenu);
}
