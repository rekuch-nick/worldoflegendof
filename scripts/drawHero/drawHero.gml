function drawHero(){
	
	if(sprite_index == imgMCHeal){
		if(pc.healFast){
			draw_sprite_ext(imgHealWingsOverheal, 0, x, y, 4, 4, 0, c_white, random_range(.3, .4));
		}
		if(pc.healAoE){
			draw_sprite_ext(imgHealWingsMultitarget, 0, x, y, 4, 4, 0, c_white, random_range(.3, .4));
		}
		
	}
	
	draw_self();
	
	if(castTime > 0){
		var x1 = x - 32;
		var y1 = y - 36;
		var w = 64 * (castTime / castTimeMax);
		var y2 = y1 + 4;
		
		draw_rectangle_color(x1, y1, x1 + w, y2, ww.c_beige, ww.c_beige, ww.c_beige, ww.c_beige, false);
	}
	
	
}