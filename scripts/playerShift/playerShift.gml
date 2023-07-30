function playerShift(n){

	if(pc.sprite_index == imgMCTank && n == 1){ pc.sprite_index = imgMCHeal; }
	else if(pc.sprite_index == imgMCTank && n == -1){ pc.sprite_index = imgMCDps; }
	else if(pc.sprite_index == imgMCHeal && n == 1){ pc.sprite_index = imgMCDps; }
	else if(pc.sprite_index == imgMCHeal && n == -1){ pc.sprite_index = imgMCTank; }
	else if(pc.sprite_index == imgMCDps && n == 1){ pc.sprite_index = imgMCTank; }
	else if(pc.sprite_index == imgMCDps && n == -1){ pc.sprite_index = imgMCHeal; }
	
	heroSetStats();
	
	
	if(n != 0){
		effect_create_above(ef_smoke, pc.x, pc.y, 2, c_white);
	}
}