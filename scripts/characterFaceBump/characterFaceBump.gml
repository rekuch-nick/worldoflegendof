function characterFaceBump(d){
	if(is_undefined(d)){ d = facing; }
	
	var f = d * fat;
	if(pointInBlock(x + f, y - head)){ return true; }
	if(pointInBlock(x + f, y + foot - 1)){ return true; }
	
	
	return false;

}