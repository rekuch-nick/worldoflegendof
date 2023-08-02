function itemEquip(a, b, k){
	
	var iOld = pc.bag[a, b];
	
	if(k == Item.wep){ pc.bag[a, b] = pc.wep[pc.index]; pc.wep[pc.index] = iOld; }
	if(k == Item.arm){ pc.bag[a, b] = pc.arm[pc.index]; pc.arm[pc.index] = iOld; }
	if(k == Item.trink){ pc.bag[a, b] = pc.trink[pc.index]; pc.trink[pc.index] = iOld; }
	
}