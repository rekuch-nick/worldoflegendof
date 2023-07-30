function bossAttack(){
	
	if(ww.phase == Phase.resetPos){ return; }
	
	
	var tar = bossPickTarget();
	if(tar.x < x){ facing = -1; } else { facing = 1; }
	
	
	
	if(attack == MobAction.slam){
		attackCD --;
		
		
		if(attackCD < 1){
			attackCD = attackCDMax;
			attackingFrames = 15;
			
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