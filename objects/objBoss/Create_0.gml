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



//attack = objEFFMobSlam;
attack = MobAction.slam;
attackCD = 30 * 5;
attackCDMax = 30 * 2;

spells[0] = noone;

spells[0] = objEFFMobSlam;
spellName[0] = "Cleave";
castTimeMax[0] = 60;
spellWhen[0] = 6;
castIndex = 0;
castTime = 0;

spells[1] = objEFFMobSlam;
spellName[1] = "Cleave";
castTimeMax[1] = 60;
spellWhen[1] = 12;

spells[2] = objEFFMobSlam;
spellName[2] = "Cleave";
castTimeMax[2] = 60;
spellWhen[2] = 18;

//attackWarnRange = 25;
//attackingFrames = 0;



