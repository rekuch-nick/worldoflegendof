timeSinceTappedLeft = 30;
timeSinceTappedRight = 30;
timeSinceTappedUp = 30;
timeSinceTappedDown = 30;
state = State.ready;
platDropTime = 0;
icd = 0;
playerGetInput();
depth = -1000;
facing = 1;
foot = 31;
head = 26;
fat = 14;

isBoss = false;

xStart = x;
yStart = y;

moveSpeed = 7;
xSpeed = 0;
ySpeed = 0;
aly = 1;

grav = 1;
gravMax = 15;
jumpPower = -11;
jumps = 0;
jumpsMax = 1;
onLadder = false;


gotoRoom = noone;
gotoRoomX = noone;
gotoRoomY = noone;

onObject = noone;

image_speed = 0;
walkAniCD = 40;
walkFrame = 0;

attackingFrames = 0;

xPush = 0; yPush = 0;
hurtTime = 0;

playerShift(0);

hp[0] = 100; hpMax[0] = 100;
hp[1] = 100; hpMax[1] = 100;
hp[2] = 100; hpMax[2] = 100;

mp[0] = 100; mpMax[0] = 100;
mp[1] = 100; mpMax[1] = 100;
mp[2] = 100; mpMax[2] = 100;

facePic[0] = imgFaceTank;
facePic[1] = imgFaceHeal;
facePic[2] = imgFaceDps;

healFast = false;
healAoE = false;

tankGuardTime = 0;

castTime = 0;
castTimeMax = 90;

timeMS = 0;


icdMax = 6;


xBag = 0; yBag = 0;
bagPower = 2;
bagPowerMax = 6;


index = 0;

for(var a=0; a<19; a++){ for(var b=0; b<bagPowerMax; b++){
	bag[a, b] = noone;
	bagStack[a, b] = 0;
}}

for(var i=0; i<3; i++){
	wep[i] = noone;
	arm[i] = noone;
	trink[i] = noone;
}
