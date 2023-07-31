function heroHealing(){
	
	if(hasInput() || ww.phase == noone){
		castTime = 0;
	} else {
		if(sprite_index == imgMCHeal){
			
			castTime ++;
			castTimeMax = 30 * 3;
			if(pc.healFast){ castTimeMax -= 45; }
			if(pc.healAoE){ castTimeMax += 60; }
			
			var healCost = 4;
			if(pc.healFast){ healCost += 2; }
			if(pc.healAoE){ healCost += 2; }
			
			
			
			if(castTime >= castTimeMax){
				castTime = 0;
				
				if(pc.mp[sprite_index] >= healCost){
					pc.mp[sprite_index] -= healCost;
					
					if(pc.healAoE){
						heroHealApply(pc);
						with(objActor){ heroHealApply(id); }
						
					} else {
						var tar = pc;
						with(objActor){ if(sprite_index == imgMCTank){ tar = id; } }
						if(tar == pc && pc.sprite_index != imgMCTank){
							with(objActor){ if(sprite_index == imgMCHeal){ tar = id; } }
						}
						
						heroHealApply(tar);
						
						
					}
					
					
					
				} else {
					//fizzle
				}
				
			}
		
		}
	}
	
	

}