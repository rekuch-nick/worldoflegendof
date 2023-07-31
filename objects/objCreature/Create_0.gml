
isBoss = false;
xStart = x; yStart = y;

facing = x < pc.x ? 1 : -1;
xPush = 0; yPush = 0;

state = State.ready;


platDropTime = 0;

depth = -800;

foot = 31;
head = 26;
fat = 24;

moveSpeed = 3;
xSpeed = 0;
ySpeed = 0;


grav = 1;
gravMax = 15;
jumpPower = -11;


turnOnBumpChance = 50;
turnChance = 0;
jumpChance = 0;
jumpOnBumpChance = 0;
jumpInAirChance = 0;
turnAtLedgeChance = 0;


hp = 10;
hpMax = 10;
bumpMight = 10;
aly = -1;
hurtsToTouch = true;

hurtTime = 0;


ignorePush = false;

might = 10;
critChance = 0;
critPower = 200;
atkSpeed = 0;
armorPen = 0;
minMight = 0;
	
armor = 0;
	
runBossCreate = false;
holdGround = false;


attack = noone;
attackCD = 30 * 5;
attackCDMax = 30 * 5;
attackWarnRange = 45;
attackingFrames = 0;

aniCD = 0;
aniCDMax = 25;
frame = 0;





spells[0] = noone;
spellName[0] = "";
castTimeMax[0] = 60;
spellWhen[0] = 6;
castIndex = 0;
castTime = 0;


