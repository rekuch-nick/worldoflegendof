function heroGravity(){
	//apply gravity
	if(characterOnGround()){
		jumps = jumpsMax; 
		if(ySpeed > 0){ ySpeed = 0; }
		
	} else {
		ySpeed = clamp(ySpeed + grav, ySpeed, gravMax);
		if(jumps == jumpsMax){ jumps --; }
	}
}