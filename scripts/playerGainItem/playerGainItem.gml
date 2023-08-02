function playerGainItem(itm){
	
	//find stack with room
	for(var b=0; b<pc.bagPower; b++){ for(var a=0; a<19; a++){ 
		if(pc.bag[a, b] != noone && pc.bag[a, b].nam == itm.nam && pc.bag[a, b].rare == itm.rare && pc.bag[a, b].rare == itm.rare){
			if(pc.bag[a, b].stackTo > pc.bagStack[a, b]){
				pc.bagStack[a, b] ++;
				return true;
			}
		}
	}}
	
	
	//find empty slot
	for(var b=0; b<pc.bagPower; b++){ for(var a=0; a<19; a++){ 
		if(pc.bag[a, b] == noone){
			pc.bag[a, b] = itm;
			pc.bagStack[a, b] = 1;
			return true;
		}
	}}
	
	
	return false;
}