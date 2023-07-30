event_inherited();

isBoss = true;
hurtsToTouch = false;



hp = 2000;
hpMax = 2000;


fat = 60;
head = 50;
foot = 64;

jumpOnBumpChance = 100;
jumpPower = -16;


if(ww.bossDown[room]){ instance_destroy(); return; }


runBossCreate = true;

//worldBossStart();


targetDis = floor(pc.fat * 1.5) + fat;
targetDisChance = 2;



attack = objEFFMobSlam;
attackCD = 30 * 5;
attackCDMax = 30 * 2;
attackWarnRange = 25;
attackingFrames = 0;



