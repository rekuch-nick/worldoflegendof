function heroSetButtonInputToReset(){
	
	xIn = 0;
	yIn = 0;
	
	pressedJump = false;
	holdingJump = false;
	
	holding1 = false; pressed1 = false;
	holding2 = false; pressed2 = false;
	holding3 = false; pressed3 = false;
	
	if(point_distance(x, y, xStart, yStart) < 20){
		x = xStart; y = yStart;
		return;
	}
	
	if(x < pc.xStart){ xIn = 1; }
	if(x > pc.xStart){ xIn = -1; }
	
	if(y > pc.yStart){
		holdingJump = true;
		pressedJump = true;
		yIn = -1;
	}
	
	if(y < pc.yStart){
		yIn = 1;
	}
	
	
	
}