function playerStepMoveRooms(){
	
	
	ww.curtinFade += .05 * ww.curtinFadeDir;
	
	if(ww.curtinFade >= 1){ 
		
		if(gotoRoom == noone){
			room_goto_next();
		} else {
			room_goto(gotoRoom);
		}
		
		if(gotoRoomX != noone){
			x = gotoRoomX;
			y = gotoRoomY;
			xStart = x;
			yStart = y;
		}
		
		gotoRoom = noone;
		gotoRoomX = noone;
		gotoRoomY = noone;
		
		ww.curtinFadeDir = -1; 
	}
	if(ww.curtinFade <= 0 && ww.curtinFadeDir == -1){
		ww.curtinFade = 0;
		ww.curtinFadeDir = 1;
		ww.state = State.play;
		
		
	}

}