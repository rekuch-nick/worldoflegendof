if(ww.state != State.play){ return; }

x += dir * moveSpeed;


with(objPlayer){
	
	if(onObject == other.id){
		x += other.dir * other.moveSpeed;
		creatureBackOutOfBlock(other.dir);
	}
}

if(abs(x - xStart) > disMax){ dir *= -1; }