if (not o_Controler.verify_birds_dead())
{
	// reset time score
	if (image_index < 10) image_index += 1;
	else image_index = 0;

	alarm_set(0, timer);
}