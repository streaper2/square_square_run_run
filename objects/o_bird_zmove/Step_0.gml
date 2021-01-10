timer += 1;



if (timer < timer_distance)   {
	motion_add(270,0.01)
} else {
	
	speed *= -1;
	timer=0;	
}


if speed > 2 {
	speed = 2;
}