function creaturePickupItems(){
	var pup = collision_rectangle(x - fat, y - head, x + fat, y + foot, objPup, true, true);
	if(pup != noone){
		if(playerGainItem(pup.item)){
	
			instance_destroy(pup);
		}
	}
}