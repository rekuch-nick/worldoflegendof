event_inherited();

isBoss = true;




hp = 100;
hpMax = 100;


fat = 60;
head = 50;
foot = 64;

jumpOnBumpChance = 100;
jumpPower = -16;


if(ww.bossDown[room]){ instance_destroy(); return; }

worldBossStart();
ww.state = State.bossCD;

