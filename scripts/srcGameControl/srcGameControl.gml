function set_difficulty(mode) {
	/* - set_difficulty changes aspects in game as speed, and tubes delta location
	mode: int in [1:3] thats sets:
		1 - easy
		2 - medium
		3 - hard
	*/
	var layer_id = layer_get_id("Background");
	layer_hspeed(layer_id,-mode);
	global.tumes_timer -= 2;
}

function call_game_over() {
	// print game over
	instance_create_depth(112, 28, -1, o_GameOver);

	// Create menu
	instance_create_depth(112, 88, 0, o_ScoreTable);
	instance_create_depth(80,  98, 0, o_Restart_Menu);
	instance_create_depth(148, 98, 0, o_IA_menu);

	o_Score.y = 56;
	with (o_Score) {
		x -= 61;
	}
}