function heroFall(){
	//y move
	ys = ySpeed + yPush;
	
	if(ys > 0){
		for(var i=0; i<abs(ys); i++){ //fall
			y ++;
			if(characterOnGround()){
				ySpeed = 0;
				break;
			}
		}
	}
}