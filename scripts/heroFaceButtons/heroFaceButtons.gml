function heroFaceButtons(){
	ww.shooter = id;
	
	if(pressed1 && attackingFrames < 1 && sprite_index == imgMCTank){
		instance_create_depth(x + (facing * 64), y, depth + 1, objEffSlash);
		
		
		attackingFrames = 15; 
	}
	
	
	
	if(pressed1 && attackingFrames < 1 && sprite_index == imgMCDps){ 
		instance_create_depth(x + (facing * 32), y, depth + 1, objEffFirebolt);
		
		attackingFrames = 15; 
	}
	
	
	
	if(pressed1 && attackingFrames < 1 && sprite_index == imgMCHeal){ 
		
		
		for(var aa=-4; aa<=4; aa++){
			if(aa == 0){ continue; }
			var a = aa * 64;
			instance_create_depth(x + a, y, depth + 1, objEffLightBurst);
		}
		
		attackingFrames = 15; 
	}

}