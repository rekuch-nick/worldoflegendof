function bossMoveNormal(){
	
	var tar = bossPickTarget();
	

	
	xTar = tar.x + targetDis;
	yTar = tar.y
	
	
	if(x > xTar){ facing = -1; }
	
	if(x < xTar){ facing = 1; }
	
	if(point_distance(x, y, xTar, y) < 11){
		holdGround = true;
	}
	
	
	if(irandom_range(0, 99) < targetDisChance){
		targetDis = tar.fat + fat; // ...
	}
	
}