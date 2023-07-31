function hasInput(){
	
	if(xIn != 0){ return true; }
	if(yIn != 0){ return true; }
	if(holdingJump){ return true; }
	if(holding1){ return true; }
	if(holding2){ return true; }
	if(holding3){ return true; }
	//if(holding4){ return true; }
	//if(holding5){ return true; }
	
	return false;
}