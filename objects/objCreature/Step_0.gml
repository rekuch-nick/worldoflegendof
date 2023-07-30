if(ww.state != State.play){ return; }
if(runBossCreate){
	worldBossStart();
	runBossCreate = false;
}


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
	if(!holdGround){
		xs += (moveSpeed * facing);
	}
	
	
	if(attackingFrames > 0){ xs = 0; } //lock in place while slamming
	
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
	
	
	
	if(isBoss){	bossAttack(); }
	
	
	
	
	
	
	
	characterPushDecay();
	if(hurtTime > 0){ hurtTime --; }
	if(attackingFrames > 0){ attackingFrames --; }
	holdGround = false;
	
	//display
	if(facing == 1 && image_xscale < 0){ image_xscale *= -1; }
	if(facing == -1 && image_xscale > 0){ image_xscale *= -1; }
	
	
	aniCD --;
	if(aniCD < 1){
		aniCD = aniCDMax;
		frame = frame == 0 ? 1 : 0;
	}
	
	var f = 0;
	if(attackCD < attackWarnRange){ f = choose(2, 3); }
	if(attackingFrames > 0){ f = 4; }
	if(f == 0){ f = frame; }
	image_index = f;
	
	
	if(hp < 1){
		if(isBoss){
			ww.bossDown[room] = true;
			ww.phase = noone;
			ww.state = State.play;//
			pc.state = State.ready;//
			with(objActor){ instance_destroy(); }
		}
		
		with(objEffect){
			if(c1 == other.id){
				instance_destroy();
			}
		}
		
		instance_destroy();
	}
	
}