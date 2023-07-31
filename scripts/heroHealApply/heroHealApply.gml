function heroHealApply(c){
	
	effect_create_above(ef_flare, x, y, 3, c_yellow);
	effect_create_above(ef_flare, x, y, 3, c_aqua);
	
	effect_create_above(ef_firework, c.x, c.y, 3, c_yellow);
	effect_create_above(ef_firework, c.x, c.y, 3, c_aqua);
	
	var d = irandom_range(1, 6);
	pc.hp[c.sprite_index] = clamp(pc.hp[c.sprite_index] + d, 0, pc.hpMax[c.sprite_index]);
	
	
}