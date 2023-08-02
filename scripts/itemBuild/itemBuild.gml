function itemBuild(n, image, itemKind, rarity, cost, maxStacks, props){
	if(is_undefined(props)){ props = noone; }
	
	
	var itm = {
		nam: n,
		img: image,
		kind: itemKind,
		rare: rarity,
		value: cost,
		stackTo: maxStacks,
	}
	
	if(props != noone){
		
	}
	
	
	return itm;
}