function heroLadder(){
	
	//check for ladder
	var l = collision_rectangle(x-fat, y+head, x+fat, y+foot, objLadder, true, true);
	if(l == noone){ l = collision_rectangle(x-fat, y+head, x+fat, y+foot, objLadderTop, true, true); }
	if(l != noone){ 
		if(yIn != 0){ onLadder = true; } 
	} else { onLadder = false; }
	//climb ladder
	if(onLadder){
		if(yIn < 0){
			ySpeed = -5;
		} else if (yIn > 0) {
			ySpeed = 6;
		} else {
			ySpeed = 0;
		}
	}

}