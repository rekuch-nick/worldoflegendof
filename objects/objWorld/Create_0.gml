enum State {
	title,
	play,
	moveRooms,
	bossCD,
	bag,
	
	ready,
	aggro,
	resetting,
}

enum Phase {
	recTank,
	recHeal,
	playDps,
	resetPos,
}

enum Ele {
	normal,
	fire,
	cold,
	shock,
	light,
	bio,
}

enum MobAction {
	slam,
	bump,
}

enum Item {
	junk,
	matSmith,
	matAlch,
	matEnchant,
	matJewel,
	wep,
	arm,
	trink,
	potion,
}

draw_set_font(fntPlain);
room_speed = 30;
defineColors();


state = State.title;
phase = noone;

curtinFade = 0;
curtinFadeDir = 1;

bfiMax = 30 * 30; bfi = 0;


for(var i=0; i<400; i++){
	bossDown[i] = false;
}




