if (drawer and image_index == 9 and alarm_get(0) == (timer - 1)) {
	draw_new_decimal_place(self);
	image_index = 1;
}