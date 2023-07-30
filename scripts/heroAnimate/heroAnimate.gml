function heroAnimate(){
	
	//display
	if(facing > 0 && image_xscale < 0){ image_xscale *= -1; }
	if(facing < 0 && image_xscale > 0){ image_xscale *= -1; }
	
	
	
	if(xIn != 0 || yIn != 0){ 
		walkAniCD --; if(walkAniCD < 1){ walkAniCD = 40; }
	}
	if(yIn < 0){ 
		walkAniCD --; if(walkAniCD < 1){ walkAniCD = 40; }
	}
	
	
	
	var f = 0;
	if(ySpeed < 0){ f = 7; }
	if(ySpeed > 0){ f = 8; }
	if(yIn > 0){ f = 4; }
	if(onLadder){ f = 5; if(walkAniCD < 21){ f ++; } }
	if(f == 0){
		if(walkAniCD < 31){ f ++; }
		if(walkAniCD < 21){ f ++; }
		if(walkAniCD < 11){ f ++; }
	}
	if(attackingFrames > 0){ f = 9; attackingFrames --; }
	image_index = f;
	
	image_alpha = 1;
	if(hurtTime > 0){ image_alpha = random_range(.2, 1); }

}