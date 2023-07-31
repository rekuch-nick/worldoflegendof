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

timeCD --;
if(timeCD < 1){
	instance_destroy();
}