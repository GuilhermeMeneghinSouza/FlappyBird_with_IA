if (alive) {
	if (cont < MOVEMENT_CONTROLER) {
		cont ++;
		y += FLYING_SPEED;
	}

	if (jump(self)) {
		cont = 0;
		y += FLYING_SPEED;
	}
} y += GRAVITY_SPEED;