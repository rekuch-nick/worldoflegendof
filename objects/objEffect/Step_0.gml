x += xSpeed;
y += ySpeed;
ySpeed += grav;
if(txtSmall != ""){ y --; }

image_alpha -= fade;
if(flicker){ image_alpha = random_range(0, 1); }

if(wob != 0){
	x = xStart + irandom_range(-wob, wob);
	y = yStart + irandom_range(-wob, wob);
}

if(pointBySpeed){
	image_angle = 0;
	if(xSpeed < 0){ image_angle = 180; }
	if(ySpeed < 0 && xSpeed > 0){ image_angle = 45; }
	if(ySpeed < 0 && xSpeed < 0){ image_angle = 135; }
	
	
	if(ySpeed > 0 && xSpeed > 0){ image_angle = 315; }
	if(ySpeed > 0 && xSpeed < 0){ image_angle = 225; }
	//if(ySpeed < 0 && xSpeed > 0){ image_angle = 90; }
}

if(!passWall){
	if(collision_point(x, y, objBlock, true, true)){
		timeCD = 0;
	}
}

timeCD --;
if(timeCD < 1){
	instance_destroy();
}