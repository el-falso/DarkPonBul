/// @description Insert description here


camera = camera_create();

var viewMatrix = matrix_build_lookat(room_width / 2, room_height / 2, -100, room_width / 2, room_height / 2, 0, 0, 1, 0);
var projMatrix = matrix_build_projection_ortho(room_width, room_width, 1.0, 32000.0);

camera_set_view_mat(camera, viewMatrix);
camera_set_proj_mat(camera, projMatrix);
camera_set_view_size(camera, view_wport[0], view_hport[0]);

view_camera[0] = camera;

view_visible[0] = true;
view_enabled = true;
//surface_resize(application_surface, VIEW_WIDTH, VIEW_HEIGHT);

