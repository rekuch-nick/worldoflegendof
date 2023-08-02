function playerShift(n){

	if(pc.sprite_index == imgMCTank && n == 1){ pc.sprite_index = imgMCHeal; pc.index = 1; }
	else if(pc.sprite_index == imgMCTank && n == -1){ pc.sprite_index = imgMCDps; pc.index = 2; }
	else if(pc.sprite_index == imgMCHeal && n == 1){ pc.sprite_index = imgMCDps; pc.index = 2; }
	else if(pc.sprite_index == imgMCHeal && n == -1){ pc.sprite_index = imgMCTank; pc.index = 0; }
	else if(pc.sprite_index == imgMCDps && n == 1){ pc.sprite_index = imgMCTank; pc.index = 0; }
	else if(pc.sprite_index == imgMCDps && n == -1){ pc.sprite_index = imgMCHeal; pc.index = 1; }
	
	heroSetStats();
	
	
	if(n != 0){
		effect_create_above(ef_smoke, pc.x, pc.y, 2, c_white);
	}
}