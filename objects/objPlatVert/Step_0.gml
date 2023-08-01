if(ww.state != State.play){ return; }

y += dir * moveSpeed;


with(objPlayer){
	
	if(onObject == other.id){
		y += other.dir * other.moveSpeed;
		//creatureBackOutOfBlock(other.dir);
	}
}


if(abs(y - yStart) > disMax){ dir *= -1; }