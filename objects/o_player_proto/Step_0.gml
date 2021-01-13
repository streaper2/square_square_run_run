/// @desc ??
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check_pressed(vk_right);
key_sneak = keyboard_check_pressed(vk_down);

hsp = walksp;
vsp += grv;

if(key_jump && place_meeting(x, y+1, o_colision)){
	vsp = -jumpsp;	
}

//Vertical collision
if (place_meeting(x, y+vsp, o_colision)){
	while(!place_meeting(x, y+sign(vsp), o_colision)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

//Horizontal collision
if (place_meeting(x+hsp, y, o_colision)){
	while(!place_meeting(x+sign(hsp), y, o_colision)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;


//Dash

if(key_dash){
	x += 100;	
}

// Sneak

if(key_sneak){
	sprite_index = s_player_sneak_proto;
	alarm[0] = 120;
}