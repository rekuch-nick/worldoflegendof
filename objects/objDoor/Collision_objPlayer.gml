if(ww.state != State.play){ return; }

if(pc.tappedUp && !shut){
	pc.gotoRoom = targetRoom;
	pc.gotoRoomX = targetX;
	pc.gotoRoomY = targetY;
	ww.state = State.moveRooms;
	
}