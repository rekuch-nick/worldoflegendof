timeSinceTappedLeft = 30;
timeSinceTappedRight = 30;
timeSinceTappedUp = 30;
timeSinceTappedDown = 30;
state = State.ready;
platDropTime = 0;
playerGetInput();
depth = -1000;
facing = 1;
foot = 31;
head = 26;
fat = 14;

xStart = x;
yStart = y;

moveSpeed = 7;
xSpeed = 0;
ySpeed = 0;


grav = 1;
gravMax = 15;
jumpPower = -11;
jumps = 0;
jumpsMax = 1;
onLadder = false;


gotoRoom = noone;
gotoRoomX = noone;
gotoRoomY = noone;


image_speed = 0;
walkAniCD = 40;
walkFrame = 0;

attackingFrames = 0;

xPush = 0; yPush = 0;
hurtTime = 0;

playerShift(0);

