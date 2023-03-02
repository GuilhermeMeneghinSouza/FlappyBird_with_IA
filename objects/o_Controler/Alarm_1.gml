if (difficulty < 1.70) {
	difficulty += .1;
	show_debug_message(difficulty);
	set_difficulty(difficulty);
	alarm_set(1, MODE_CHANGER);
}