function drawHeroGear(aa, bb, ii){
	
	var x1 = aa*64 + (ii * 8);
	var y1 = bb * 64;
	var x2 = x1 + (4 * 64);
	var y2 = y1 + (4 * 64);
	var c = pc.index == ii ? c_lime : c_navy;
	draw_rectangle_color(x1, y1, x2, y2, c, c, c, c, false);
	draw_rectangle_color(x1+4, y1+4, x2-4, y2-4, c_black, c_black, c_black, c_black, false);
	
	for(var i=0; i<3; i++){
		draw_sprite(imgBagSlotTrink, 0, x1, y1 + (i * 64) + 64);
		
		if(i == 0 && pc.wep[ii] != noone){ 
			draw_sprite_stretched(pc.wep[ii].img, 0, x1, y1 + (i * 64) + 64, 64, 64); 
		}
		if(i == 1 && pc.arm[ii] != noone){ draw_sprite_stretched(pc.arm[ii].img, 0, x1, y1 + (i * 64) + 64, 64, 64); }
		if(i == 2 && pc.trink[ii] != noone){ draw_sprite_stretched(pc.trink[ii].img, 0, x1, y1 + (i * 64) + 64, 64, 64); }
		
	}

}