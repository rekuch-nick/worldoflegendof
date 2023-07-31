function heroJump(){
	if(pressedJump && jumps > 0){
		castTime = 0;
		
		jumps --;
		ySpeed = jumpPower;
		onLadder = false;
	}
	
	if(ySpeed < 0 && !holdingJump){
		ySpeed = 0;
	}

}