playerGetInput();




if(ww.state == State.title){ playerStepTitle(); return; }

if(ww.state == State.moveRooms){ playerStepMoveRooms(); return; }

if(ww.state == State.bossCD){
	ww.bossStartCountDown --;
	if(ww.bossStartCountDown < 1){
		ww.state = State.play;
		if(sprite_index == imgMCTank){ ww.phase = Phase.recTank; }
		if(sprite_index == imgMCHeal){ ww.phase = Phase.recHeal; }
		if(sprite_index == imgMCDps){ ww.phase = Phase.playDps; }
		
	} else { return; }
}

if(ww.state == State.play){
	
	if(ww.phase == noone){
		if(pressed5){ playerShift(1); }
		if(pressed4){ playerShift(-1); }
	} else {
		if(ww.phase == Phase.resetPos && sprite_index != imgMCDps){
			heroSetButtonInputToReset();
		}
	}
	
	
	
	
	heroFaceButtons();
	heroJump();
	heroLadder();
	heroGravity();
	heroFall();
	heroAscend();
	heroWalk();
	heroHealing();
	
	
	characterPushDecay();
	if(hurtTime > 0){ hurtTime --; }
	
	heroAnimate();
	
	
	
	
	if(ww.phase == Phase.recTank){ playerRecordInput(ww.tankAction); }
	if(ww.phase == Phase.recHeal){ playerRecordInput(ww.healAction); }
	if(ww.phase != noone){ ww.bfi ++; }
	//(ww.phase == Phase.recTank || ww.phase == Phase.recHeal)
	if(ww.bfi >= ww.bfiMax){
		ww.phase = Phase.resetPos;
	}
	if(ww.phase == Phase.resetPos){ playerResetPosChecks(); }
	
	
	
	if(keyboard_check_pressed(vk_backspace)){
		with(objBoss){ hp = 0; }
	}
}
