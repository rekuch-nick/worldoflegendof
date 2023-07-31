draw_self();

if(castTime > 0){
	var x1 = x - 75;
	var y1 = y - (sprite_height / 2) - 50;
	var y2 = y - (sprite_height / 2) - 25;
	var w = 150 * (castTime / castTimeMax[castIndex]);
	draw_rectangle_color(x1, y1, x1+150, y2, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_rectangle_color(x1, y1, x1+w, y2, ww.c_bisque, ww.c_bisque, ww.c_bisque, ww.c_bisque, false);
	
	draw_set_halign(fa_center);
	draw_text_color(x, y1 + 4, spellName[castIndex], c_black, c_black, c_black, c_black, 1);
	draw_set_halign(fa_left);
}