//draw_text(10, 10, state);
//draw_text(10, 30, ww.phase);
//draw_text(10, 50, pc.state);
//draw_text(10, 70, string(ww.bfiMax - ww.bfi));

draw_text(10, 10, "Tank: " + string(pc.hp[imgMCTank]));
draw_text(10, 30, "Heal: " + string(pc.hp[imgMCHeal]));
draw_text(10, 50, "Dps: " + string(pc.hp[imgMCDps]));


if(state == State.title){
	draw_set_color(ww.c_burlywood);
	draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false);
	draw_set_color(c_white);
}

if(state == State.bossCD){
	var s = "Tank the boss\n\nBumping the boss won't damage you\n\Position it to protect your team";
	if(pc.sprite_index == imgMCHeal){ s = "Heal the Tank\n\nYou'll auto-cast heals while not moving or attacking\n\n"; }
	if(pc.sprite_index == imgMCDps){ s = "\n\nFinish the boss!\n\nMax DPS!"; }
	
	draw_set_color(ww.c_burlywood);
	draw_rectangle(0, 100, camera_get_view_width(view_camera[0]), 300, false);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(camera_get_view_width(view_camera[0]) / 2, 120, s);
	draw_set_halign(fa_left);
}

if(phase != noone && instance_number(objBoss) > 0){
	var bos = instance_find(objBoss, 0);
	draw_rectangle_color(1146, 20, 1346, 40, c_black, c_black, c_black, c_black, false);
	var x2 = 1146 + (200 * (bos.hp / bos.hpMax));
	draw_rectangle_color(1146, 20, x2, 40, c_red, c_red, c_maroon, c_maroon, false);
}

if(state == State.moveRooms){
	draw_set_color(c_black);
	draw_set_alpha(curtinFade);
	draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}