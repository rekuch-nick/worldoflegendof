function drawNamePlate(aa, bb, index){
	
	
	var x1 = aa; var y1 = bb; var x2 = x1 + 256; var y2 = y1 + 32;
	draw_rectangle_color(x1, y1, x2, y2, ww.c_dkgreen, ww.c_dkgreen, ww.c_dkgreen, ww.c_dkgreen, false);
	
	draw_sprite_stretched(pc.facePic[index], 0, aa+4, bb+4, 20, 20);
	
	
	x1 = aa + 28; y1 = bb + 4; x2 = x1 + 112; y2 = y1 + 24;
	draw_rectangle_color(x1, y1, x2, y2, c_black, c_black, c_black, c_black, false);
	var w = 112 * (pc.hp[index] / pc.hpMax[index]);
	draw_rectangle_color(x1, y1, x1+w, y2, c_maroon, c_maroon, c_red, c_red, false);
	
	x1 = x1 + 120; x2 = x1 + 104;
	draw_rectangle_color(x1, y1, x2, y2, c_black, c_black, c_black, c_black, false);
	var w = 104 * (pc.mp[index] / pc.mpMax[index]);
	draw_rectangle_color(x1, y1, x1+w, y2, c_blue, c_blue, c_aqua, c_aqua, false);
	
	
	
	
	
	
	//draw_rectangle_color(x1, y1, x2, y2, c_red, c_red, c_maroon, c_maroon, false);

}