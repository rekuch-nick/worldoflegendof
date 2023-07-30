if(other.aly == 1){ return; }

if(!arrayContains(hitList, other)){
	
	hitList[array_length(hitList)] = other;
	
	if(ww.phase == noone && !other.ignorePush){
		other.yPush = -6;
		other.xPush = x < other.x ? 12 : -12;
		other.hurtTime = 10;
	}
	
	harm(c1, other, id);
	
}