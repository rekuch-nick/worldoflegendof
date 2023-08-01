function heroHealApply(c){
	var ii = 0;
	if(c.sprite_index == imgMCHeal){ ii = 1; }
	if(c.sprite_index == imgMCDps){ ii = 2; }
	
	effect_create_above(ef_flare, x, y, 3, c_yellow);
	effect_create_above(ef_flare, x, y, 3, c_aqua);
	
	effect_create_above(ef_firework, c.x, c.y, 3, c_yellow);
	effect_create_above(ef_firework, c.x, c.y, 3, c_aqua);
	
	var d = irandom_range(1, 6);
	pc.hp[ii] = clamp(pc.hp[ii] + d, 0, pc.hpMax[ii]);
	
	
}