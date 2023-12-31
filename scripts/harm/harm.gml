function harm(c1, c2, atk){
	
	if(atk == MobAction.slam){
		atk = {
			mightCo: 1,
		}
	}

	
	
	var dmgMax = atk.mightCo * c1.might;
	var dmgMin = 0 + (dmgMax * clamp(c1.minMight / 100, 0, 100));
	if(dmgMin < 1){ dmgMin = 1; }
	var dmg = irandom_range(dmgMin, dmgMax);
	
	var arm = 1 - (c2.armor / 100);
	arm = arm + (c1.armorPen / 100);
	arm = clamp(arm, .1, 1);
	dmg = floor(dmg * arm);
	
	if(c2.sprite_index == imgMCTank && pc.tankGuardTime > 0){
		dmg = ceil(dmg / 4);
	}
	
	dmg = clamp(dmg, 1, dmg);
	
	
	if(c2.isBoss && c1.sprite_index == imgMCDps){ dmg *= 4; }
	if(c1.isBoss && c2.sprite_index == imgMCTank){ dmg = ceil(dmg / 2); }
	
	
	if(c2.id == pc || c2.object_index == objActor){
		var ii = 0;
		if(c2.sprite_index == imgMCHeal){ ii = 1; }
		if(c2.sprite_index == imgMCDps){ ii = 2; }
		pc.hp[ii] -= dmg;
	} else {
		c2.hp -= dmg
	}
	
	var s = instance_create_depth(c2.x, c2.y - c2.head, -900, objEffect);
	s.txtSmall = "-" + string(dmg);
	s.txtColor = c2.aly == 1 ? c_red : c_white;
}