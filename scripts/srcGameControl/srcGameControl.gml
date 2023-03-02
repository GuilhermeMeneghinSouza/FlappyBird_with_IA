function set_difficulty(mode) {
	/* - set_difficulty changes aspects in game as speed, and tubes delta location
	mode: int in [1:3] thats sets:
		1 - easy
		2 - medium
		3 - hard
	*/
	var layer_id = layer_get_id("Background");
	layer_hspeed(layer_id,-mode);
}