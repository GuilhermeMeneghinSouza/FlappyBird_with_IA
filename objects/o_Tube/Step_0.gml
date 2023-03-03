if (room_get_name(room) == "r_Game") {
	/// use this destroy call for score in future
	if (x < -sprite_width/2)
	{
		instance_destroy(self);
	}
} else {
	if (x + sprite_xoffset <= BIRDS_POSITION_X) instance_destroy(self);
}