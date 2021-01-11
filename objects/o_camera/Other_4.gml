global.cameraX = 0;
global.cameraY = 0;
target = o_player_proto;

global.cameraWidth = 480;
global.cameraHeight = 320;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/3);	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);



