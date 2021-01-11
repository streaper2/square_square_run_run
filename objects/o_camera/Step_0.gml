/// @desc ??
if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/3);
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
