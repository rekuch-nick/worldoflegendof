function bossAttack(){
	
	if(ww.phase == Phase.resetPos){ return; }
	
	var tar = bossPickTarget();
	if(tar == noone){ return; }
	if(tar.x < x){ facing = -1; } else { facing = 1; }
	
	
	//if casting, cast
	if(castTime > 0){
		castTime ++;
		if(castTime >= castTimeMax[castIndex]){
			//resolve spell
			ww.shooter = id;
			instance_create_depth(x + (facing * fat), y + foot / 2, -900, spells[castIndex]);
			attackingFrames = 15;
			
			castTime = 0;
			castIndex ++;
		}
		
	
	//else check if start casting
	} else if(castIndex < array_length(spells) && spells[castIndex] != noone && spellWhen[castIndex] * 30 < ww.bfi) {
		castTime ++;
	
	
	
	//else melee target
	} else if(attack == MobAction.slam){
		
		
		
		attackCD --;
		
		
		if(attackCD < 1 && tar != noone){
			attackCD = attackCDMax;
			attackingFrames = 15;
			
			var tarList = [pc];
			with(objActor){
				tarList[array_length(tarList)] = id;
			}
			
			for(var i=0; i<array_length(tarList); i++){
				var aa = x + (facing * fat);
				//var d = point_distance(aa, y, tarList[i].x, tarList[i].y);
				var d = point_distance(aa, y, tarList[i].x, y);
				if(abs(y - tarList[i].y) > 64){ d = 1000; }
				if(d < fat * 1.2){ ////
					harm(id, tarList[i], MobAction.slam);
				}
			}
			
			
			
			/*
			var xx = x + facing * fat;
			var yy = y + foot / 2;
			
			var dangerRange = 96;
			
			var targetList = [];
			targetList[0] = pc;
			with(objActor){ targetList[array_length(targetList)] = id; }
			
			for(var i=0; i<array_length(targetList); i++){
				var d = point_distance(x, y, xx, yy);
				if(d < dangerRange){ 
					harm(id, targetList[i], MobAction.slam); 
				}
			}
			*/
			
		}
		
		
		
		
	} else if(attack != noone){
		
		attackCD --;
		
		if(attackCD < 1){
			ww.shooter = id;
			attackCD = attackCDMax;
			instance_create_depth(x + (facing * fat), y + foot / 2, -900, attack);
			attackingFrames = 15;
			
		}
	}
	

}