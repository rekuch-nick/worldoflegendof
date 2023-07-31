if(chip != noone){
	draw_set_alpha(image_alpha);
	draw_rectangle_color(x - 2, y - 2, x + 2, y + 2, chip, chip, chip, chip, false);
	draw_set_alpha(1);
} else if (square != noone) {
	draw_set_alpha(image_alpha);
	draw_rectangle_color(x, y, x + 32, y + 32, square, square, square, square, false);
	draw_set_alpha(1);
} else if (txtSmall != ""){
	draw_set_halign(fa_center);
	draw_text_transformed_color(x, y, txtSmall, 1, 1, 0, txtColor, txtColor, txtColor, txtColor, 1);
	draw_set_halign(fa_left);
} else {
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, drawColor, image_alpha);
}