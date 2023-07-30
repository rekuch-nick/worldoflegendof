function worldBossStart(){
	
	ww.bfi = 0;
	ww.bfiMax = 30 * 30;
	//ww.bfiMax = 30 * 9;
	ww.phase = noone;
	ww.state = State.bossCD;
	ww.bossStartCountDown = 30 * 2;
	
	
	ww.tankAction = [];
	ww.healAction = [];
	
	while(pc.sprite_index != imgMCTank){ 
		with(objPlayer){
			playerShift(1); 
		}
	}
}