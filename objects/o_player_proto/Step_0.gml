/// @desc ??
key_jump = keyboard_check_pressed(vk_space);

vsp += grv;

if(key_jump && place_meeting(x, y+1, o_colision)){
	vsp = -jumpsp;	
}


if (place_meeting(x, y+vsp, o_colision)){
	while(!place_meeting(x, y+sign(vsp), o_colision)){
		y += sign(vsp);
	}
	vsp = 0;
}


y += vsp;