function heroFaceButtons(){
	ww.shooter = id;
	
	if(pressed1 && attackingFrames < 1 && sprite_index == imgMCTank){
		var s = instance_create_depth(x + (facing * 64), y, depth + 1, objEffSlash);
		
		
		attackingFrames = 15; 
	}
	
	
	
	if(pressed1 && attackingFrames < 1 && sprite_index == imgMCDps){ 
		var s = instance_create_depth(x + (facing * 32), y, depth + 1, objEffFirebolt);
		
		attackingFrames = 15; 
	}

}