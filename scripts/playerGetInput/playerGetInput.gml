function playerGetInput(){
	gamepadCheck();
	
	xIn = 0;
	yIn = 0;
	
	if(keyboard_check(vk_left) || keyboard_check(ord("A")) ||
								gamepad_button_check(pc.gamepadID, gp_padl) || 
								gamepad_axis_value(pc.gamepadID, gp_axislh) < -.5 ){
		xIn --;
	}
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D")) ||
								gamepad_button_check(pc.gamepadID, gp_padr) || 
								gamepad_axis_value(pc.gamepadID, gp_axislh) > .5 ){
	
		xIn ++;
	}
	
	if(keyboard_check(vk_down) || keyboard_check(ord("S")) ||
								gamepad_button_check(pc.gamepadID, gp_padd) || 
								gamepad_axis_value(pc.gamepadID, gp_axislv) > .5 ){
		yIn ++;
	}
	
	if(keyboard_check(vk_up) || keyboard_check(ord("W")) ||
								gamepad_button_check(pc.gamepadID, gp_padu) || 
								gamepad_axis_value(pc.gamepadID, gp_axislv) < -.5 ){
		yIn --;
	}
	
	if(yIn > 0){ platDropTime = 11; }
	platDropTime = clamp(platDropTime - 1, 0, platDropTime);
	
	tappedDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(pc.gamepadID, gp_padd);
	tappedUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(pc.gamepadID, gp_padu);
	
	tappedLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(pc.gamepadID, gp_padl);
	tappedRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(pc.gamepadID, gp_padr);
	
	if(!tappedDown){ timeSinceTappedDown = clamp(timeSinceTappedDown + 1, 0, 30); }
	if(!tappedUp){ timeSinceTappedUp = clamp(timeSinceTappedUp + 1, 0, 30); }
	if(!tappedLeft){ timeSinceTappedLeft = clamp(timeSinceTappedLeft + 1, 0, 30); }
	if(!tappedRight){ timeSinceTappedRight = clamp(timeSinceTappedRight + 1, 0, 30); }
	
	
	
	holdingJump = keyboard_check(vk_space) || gamepad_button_check(pc.gamepadID, gp_face1);
	pressedJump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(pc.gamepadID, gp_face1);
	
	holding1 = keyboard_check(ord("1")) || gamepad_button_check(pc.gamepadID, gp_face2);
	pressed1 = keyboard_check_pressed(ord("1")) || gamepad_button_check_pressed(pc.gamepadID, gp_face2);
	
	holding2 = keyboard_check(ord("2")) || gamepad_button_check(pc.gamepadID, gp_face3);
	pressed2 = keyboard_check_pressed(ord("2")) || gamepad_button_check_pressed(pc.gamepadID, gp_face3);
	
	holding3 = keyboard_check(ord("3")) || gamepad_button_check(pc.gamepadID, gp_face4);
	pressed3 = keyboard_check_pressed(ord("3")) || gamepad_button_check_pressed(pc.gamepadID, gp_face4);
	
	holding4 = keyboard_check(ord("4")) || gamepad_button_check(pc.gamepadID, gp_shoulderl);
	pressed4 = keyboard_check_pressed(ord("4")) || gamepad_button_check_pressed(pc.gamepadID, gp_shoulderl);
	
	holding5 = keyboard_check(ord("5")) || gamepad_button_check(pc.gamepadID, gp_shoulderr);
	pressed5 = keyboard_check_pressed(ord("5")) || gamepad_button_check_pressed(pc.gamepadID, gp_shoulderr);
	
	holdingStart = keyboard_check(vk_enter) || gamepad_button_check(pc.gamepadID, gp_start);
	pressedStart = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(pc.gamepadID, gp_start);
	
	
}