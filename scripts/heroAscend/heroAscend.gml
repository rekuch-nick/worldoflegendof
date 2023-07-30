function heroAscend(){
	if(ys < 0){
		for(var i=0; i<abs(ys); i++){ //ascend
			y --;
			if(characterHeadBump()){
				y ++;
				break;
			}
		}
	}
}