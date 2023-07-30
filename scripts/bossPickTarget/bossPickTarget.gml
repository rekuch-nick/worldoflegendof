function bossPickTarget(){
	
	
	var tar = pc;
	if(instance_number(objActor > 0)){
		tar = instance_find(objActor, 0);
		with(objActor){
			if(sprite_index == imgMCTank){
				tar = id;
			}
		}
	}
	
	
	return tar;
}