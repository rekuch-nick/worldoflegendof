function bossMoveNormal(){
	
	var tar = pc;
	if(instance_number(objActor > 0)){
		tar = instance_find(objActor, 0);
		with(objActor){
			if(sprite_index == imgMCTank){
				tar = id;
			}
		}
	}
	
	
	
	if(x > tar.x + tar.fat + fat){ facing = -1; }
	
	if(x < tar.x + tar.fat + fat){ facing = 1; }
	
	
	
}