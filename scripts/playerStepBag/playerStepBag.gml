function playerStepBag(){

	if(icd <= 0 && xIn < 0){ xBag --; icd = icdMax; }
	if(icd <= 0 && xIn > 0){ xBag ++; icd = icdMax; }
	if(icd <= 0 && yIn < 0){ yBag --; icd = icdMax; }
	if(icd <= 0 && yIn > 0){ yBag ++; icd = icdMax; }
	
	if(xBag < 0){ xBag = 18; }
	if(xBag > 18){ xBag = 0; }
	if(yBag < 0){ yBag = bagPower - 1; }
	if(yBag >= bagPower){ yBag = 0; }


	///
	if(pressed5){ playerShift(1); }
	if(pressed4){ playerShift(-1); }

	
	if(pressedJump && pc.bag[pc.xBag, pc.yBag] != noone){
		
		itemEquip(pc.xBag, pc.yBag, pc.bag[pc.xBag, pc.yBag].kind);
		
		
	}





	if(pressedStart){ 
		with(objScreenBag){ instance_destroy(); }
		ww.state = State.play; 
	}
}