function creatureOnObject(){
	onObject = noone;
	
	if(onObject == noone){
		onObject = collision_point(x, y + foot + 1, objPlatHor, true, true);
	}
	
	if(onObject == noone){
		onObject = collision_point(x, y + foot + 1, objPlatVert, true, true);
	}

}