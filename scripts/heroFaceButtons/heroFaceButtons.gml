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
		
		
		for(var aa=-1; aa<=1; aa++){
			if(aa == 0){ continue; }
			var a = aa * 128;
			instance_create_depth(x + a, y, depth + 1, objEffLightBurst);
		}
		
		attackingFrames = 15; 
	}
	
	
	if(pressed3 && attackingFrames < 1 && sprite_index == imgMCHeal){ 
		pc.healFast = !pc.healFast;
		
		//var s = instance_create_depth(x, y - head, -900, objEffect);
		//s.txtSmall = pc.healFast ? "Overcharge" : "Normal";
		
	}
	
	
	if(pressed2 && attackingFrames < 1 && sprite_index == imgMCHeal){ 
		pc.healAoE = !pc.healAoE;
		
		//var s = instance_create_depth(x, y - head, -900, objEffect);
		//s.txtSmall = pc.healAoE ? "Multi-Target" : "Single-Target";
		
	}
	
	
	

}