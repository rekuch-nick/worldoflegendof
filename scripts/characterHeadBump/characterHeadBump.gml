function characterHeadBump(){
	
	if(pointInBlock(x, y - head)){ return true; }
	if(pointInBlock(x + fat, y - head)){ return true; }
	if(pointInBlock(x - fat, y - head)){ return true; }
	
	
	return false;
}