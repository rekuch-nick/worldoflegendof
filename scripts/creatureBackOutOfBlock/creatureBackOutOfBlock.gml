function creatureBackOutOfBlock(dirMoved){
	while(characterFaceBump(dirMoved)){
		x -= dirMoved;
	}
}