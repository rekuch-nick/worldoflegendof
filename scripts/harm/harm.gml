function harm(c1, c2, atk){
	
	
	var dmgMax = atk.mightCo * c1.might;
	var dmgMin = 0 + (dmgMax * clamp(c1.minMight / 100, 0, 100));
	var dmg = irandom_range(dmgMin, dmgMax);
	
	var arm = 1 - (c2.armor / 100);
	arm = arm + (c1.armorPen / 100);
	arm = clamp(arm, .1, 1);
	dmg = floor(dmg * arm);
	dmg = clamp(dmg, 1, dmg);
	
	c2.hp -= dmg
	
}