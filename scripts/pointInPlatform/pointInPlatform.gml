function pointInPlatform(a, b){
	
	var plat = collision_point(a, b, objPlatform, true, true);
	if(platDropTime > 0){ plat = noone; }
	return plat;
}