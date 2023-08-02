function itemBuildGear(s, rare, kind){
	
	var gear = {
		hp: 0,
		def: 0,
		evade: 0,
		
		mp: 0,
		mpGain: 0,
		
		dmg: 0,
		crit: 0,
		critPow: 0,
		pen: 0,
		atkSpd: 0,
		minDmg: 0,
		eleDmg: [0,0,0,0,0,0,0,0,0,0,0,0,0],
		
		resist: [0,0,0,0,0,0,0,0,0,0,0,0,0],
		
		proc: noone,
	}
	
	if(s == "Tiger"){
		gear.dmg += 10 * rare;
		gear.evade += 5 * rare;
	}
	
	if(s == "Bear"){
		gear.dmg += 10 * rare;
		gear.def += 5 * rare;
	}
	
	if(s == "Owl"){
		gear.mp += 15 * rare;
		gear.mpGain += .3 * rare;
	}
	
	
	
	if(kind == Item.arm){
		gear.hp += 20 * (rare + 1);
	}
	
	if(kind == Item.wep){
		gear.dmg += 10 * (rare + 1);
	}

}