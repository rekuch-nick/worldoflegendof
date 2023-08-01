if(ww.state != State.play){ return; }
	
	var rr = noone;
	
	if(ww.bfi < ww.bfiMax){ // && ww.bfi < array_length(rr)){
		
		
		if(sprite_index == imgMCTank){ rr = ww.tankAction[clamp(ww.bfi, 0, array_length(ww.tankAction) - 1)]; }
		if(sprite_index == imgMCHeal){ rr = ww.healAction[clamp(ww.bfi, 0, array_length(ww.healAction) - 1)]; }
	
		xIn= rr.xIn;
		yIn= rr.yIn;
		platDropTime= rr.platDropTime;
		tappedDown= rr.tappedDown;
		tappedUp= rr.tappedUp;
		tappedLeft= rr.tappedLeft;
		tappedRight= rr.tappedRight;
		holdingJump= rr.holdingJump;
		pressedJump= rr.pressedJump;
		holding1= rr.holding1;
		pressed1= rr.pressed1;
		holding2= rr.holding2;
		pressed2= rr.pressed2;
		holding3= rr.holding3;
		pressed3= rr.pressed3;
		
		onLadder= rr.onLadder;
	} else {
		heroSetButtonInputToReset()
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
	
	//creatureOnObject();
	
	heroAnimate();
