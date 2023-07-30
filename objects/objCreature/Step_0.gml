if(ww.state != State.play){ return; }



if(state == State.ready || state == State.aggro){
	
	
	if(irandom_range(0, 99) < turnChance){ facing *= -1; }
	if(irandom_range(0, 99) < jumpChance && characterCanJump()){ ySpeed = jumpPower; }
	
	
	
	if(ww.phase == Phase.resetPos){
		if(x < xStart){ facing = 1; }
		if(x > xStart){ facing = -1; }
		if(y > yStart){ ySpeed -= 2; }
		
		if(point_distance(x, y, xStart, yStart) < 20){
			xSpeed = 0; ySpeed = 0; facing = 0;
		}
	} else if(ww.phase != noone){
		bossMoveNormal();
	}
	
	
	
	//apply gravity
	if(characterOnGround()){
		if(ySpeed > 0){ ySpeed = 0; }
	} else {
		ySpeed = clamp(ySpeed + grav, ySpeed, gravMax);
	}
	
	
	//y move
	var ys = ySpeed;
	if(yPush != 0){ ys = yPush; }
	
	if(ySpeed > 0){
		for(var i=0; i<abs(ys); i++){ //fall
			y ++;
			if(characterOnGround()){
				ySpeed = 0;
				break;
			}
		}
	}
	
	if(ySpeed < 0){
		for(var i=0; i<abs(ys); i++){ //ascend
			y --;
			if(characterHeadBump()){
				y ++;
				break;
			}
		}
	}
	
	
	
	
	
	
	
	
	var xs = xSpeed;
	if(ww.phase == Phase.resetPos){ xs = xSpeed * 2; }
	if(xPush != 0){ xs = xPush; }
	xs += (moveSpeed * facing);
	
	
	
	
	//x move
	var dir = getDir(xs);
	for(var i=0; i<abs(xs); i++){
		x += dir;
		
		if(irandom_range(0, 99) < turnAtLedgeChance && !characterOnGround()){
			x -= dir;
			facing *= -1;
			break;
		}
		
		if(characterFaceBump(dir)){
			x -= dir;
			
			if(irandom_range(0, 99) < turnOnBumpChance){ facing *= -1; }
			if(irandom_range(0, 99) < jumpOnBumpChance && characterCanJump()){ ySpeed = jumpPower; }
			
			
			break;
		}
		
		
	}
	
	
	
	characterPushDecay();
	if(hurtTime > 0){ hurtTime --; }
	
	//display
	if(facing == 1 && image_xscale < 0){ image_xscale *= -1; }
	if(facing == -1 && image_xscale > 0){ image_xscale *= -1; }
	
	
	
	
	if(hp < 1){
		if(isBoss){
			ww.bossDown[room] = true;
			ww.phase = noone;
			with(objActor){ instance_destroy(); }
		}
		
		instance_destroy();
	}
	
}