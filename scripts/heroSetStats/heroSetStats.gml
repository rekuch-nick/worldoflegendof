function heroSetStats(){
	
	var img = sprite_index;
	
	jumpsMax = 1;
	jumpPower = -11;
	
	
	might = 10;
	critChance = 0;
	critPower = 200;
	atkSpeed = 0;
	armorPen = 0;
	minMight = 0;
	
	armor = 0;
	
	
	
	if(img == imgMCTank){
		index = 0;
	}
	
	if(img == imgMCHeal){
		index = 1;
	}
	
	
	if(img == imgMCDps){
		index = 2;
		jumpsMax = 2;
	}

}