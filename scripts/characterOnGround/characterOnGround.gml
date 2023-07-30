function characterOnGround(){
	
	if(id == pc){
		if(onLadder && yIn <= 0){ return true; }
	}
	
	if(pointInBlock(x, y + foot + 1)){ return true; }
	if(pointInBlock(x + fat, y + foot + 1)){ return true; }
	if(pointInBlock(x - fat, y + foot + 1)){ return true; }
	
	if(pointInPlatform(x, y + foot + 1)){ return true; }
	if(pointInPlatform(x + fat, y + foot + 1)){ return true; }
	if(pointInPlatform(x - fat, y + foot + 1)){ return true; }
	
	
	return false;
}