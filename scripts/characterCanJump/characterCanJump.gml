function characterCanJump(){
	
	return irandom_range(0, 99) < jumpInAirChance || characterOnGround();

}