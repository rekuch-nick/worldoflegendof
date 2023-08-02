





draw_rectangle_color(64, 64 * 5, 64 * 20, 64 * 11, c_navy, c_navy, c_navy, c_navy, false);

for(var a=0; a<19; a++){ for(var b=0; b<pc.bagPowerMax; b++){
	var aa = (a+1) * 64;
	var bb = (b+5) * 64;
	if(b < pc.bagPower){
		//draw_rectangle_color(aa + 4, bb + 4, aa + 60, bb + 60, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
		draw_sprite(imgBagSlot, 0, aa, bb);
		
		if(pc.bag[a, b] != noone){
			var c = itemRareColor(pc.bag[a, b].rare);
			//draw_sprite_stretched(imgItemBorder, 0, aa, bb, 64, 64);
			draw_sprite_stretched_ext(imgItemBorder, 0, aa, bb, 64, 64, c, 1);
			//draw_set_color(c_white);
			draw_sprite_stretched(pc.bag[a, b].img, 0, aa, bb, 64, 64);
			if(pc.bagStack[a, b] > 1){
				draw_text(aa + 6, bb + 40, pc.bagStack[a, b]);
			}
		}
	} else {
		//draw_rectangle_color(aa + 4, bb + 4, aa + 60, bb + 60, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
		draw_sprite(imgBagSlotLocked, 0, aa, bb);
	}
}}



drawHeroGear(0, 1, 0);
drawHeroGear(4, 1, 1);
drawHeroGear(8, 1, 2);



if(state == BagState.bag){
	draw_sprite(sprite_index, image_index, (pc.xBag + 1) * 64, (pc.yBag + 5) * 64);
}