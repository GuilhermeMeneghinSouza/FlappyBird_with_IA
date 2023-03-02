#macro MOVEMENT_CONTROLER 5

if (global.alive) {
	if (cont < MOVEMENT_CONTROLER) {
		cont ++;
		y += FLYING_SPEED;
	}

	// Verify inputs
	if (keyboard_check(vk_space) or mouse_check_button(mb_left)) {
		cont = 0;
		y += FLYING_SPEED;
	}
} y += GRAVITY_SPEED;