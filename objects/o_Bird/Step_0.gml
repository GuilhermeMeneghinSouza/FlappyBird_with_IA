if (alive) {
	if (keyboard_check(vk_space) or mouse_check_button(mb_left)) flying_time = 0;
}
else save_score();
fly();