/*
if(attackingFrames > 0 && sprite_index == imgMCTank){
	if( (other.x < x && facing == -1) || (other.x > x && facing == 1) ){
		
		other.yPush = -6;
		other.xPush = x < other.x ? 12 : -12;
		other.hurtTime = 10;
		
	}
}
*/

if(hurtTime > 0){ return; }

if(other.aly == -1 && other.hurtsToTouch){
	
	if(ww.phase == noone){
		yPush = -6;
		xPush = x < other.x ? - 12 : 12;
		hurtTime = 30;
	}
	
	harm(other, id, MobAction.slam);
	
}