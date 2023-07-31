function playerResetPosChecks(){
	var allBack = true;
	if(pc.sprite_index != imgMCDps && point_distance(x, y, xStart, yStart) > 24){ allBack = false; }
	with(objBoss){ if(point_distance(x, y, xStart, yStart) > 24){ allBack = false; } }
	with(objActor){ if(point_distance(x, y, xStart, yStart) > 24){ allBack = false; } }
	
	if(allBack){
		ww.bfi = 0;
		
		
		//x = xStart; y = yStart;
		with(objBoss){ x = xStart; y = yStart; }
		with(objActor){ x = xStart; y = yStart; xSpeed = 0; ySpeed = 0}
		xSpeed = 0; ySpeed = 0;
		
		if(sprite_index == imgMCTank){
			instance_create_depth(x, y, depth, objActor, {sprite_index: imgMCTank});
			ww.phase = Phase.recHeal;
			while(sprite_index != imgMCHeal){ playerShift(1); }
			
			ww.state = State.bossCD; ww.bossStartCountDown = 60;
			
		} else if (sprite_index == imgMCHeal){
			instance_create_depth(x, y, depth, objActor, {sprite_index: imgMCHeal});
			ww.phase = Phase.playDps;
			while(sprite_index != imgMCDps){ playerShift(1); }
			
			ww.state = State.bossCD; ww.bossStartCountDown = 60;
			
		} else {
			ww.phase = Phase.playDps;
		}
	}

}