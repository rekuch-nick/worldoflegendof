function heroWalk(){
	
	xs = xSpeed + xPush;
	if(id != pc && ww.phase == Phase.resetPos){ xs = xSpeed * 2; }
	if(xIn < 0){ xs += -moveSpeed; if(attackingFrames < 1){facing = -1;} }
	if(xIn > 0){ xs += moveSpeed; if(attackingFrames < 1){facing = 1;} }
	
	
	
	//x move
	var dir = getDir(xs);
	for(var i=0; i<abs(xs); i++){
		x += dir;
		
		if(characterFaceBump(dir)){
			x -= dir;
			break;
		}
		
		
	}

}