if(ww.state != State.play){ return; }

x += xSpeed;
y += ySpeed;



if(!characterOnGround()){
	ySpeed += grav;
} else {
	if(ySpeed > 0){ ySpeed = 0; }
}