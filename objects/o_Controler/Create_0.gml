#region atributes
game_over_drawed = false;
tubes_timer = 120;
difficulty = 0;

alarm_set(1, DIFFICULTY_TIMER);
alarm_set(0, tubes_timer);

#endregion

#region methods
function verify_birds() {
	var living = true;
	// run through all birds checking if are alive
	with (o_Bird) {
		living = living and alive;
	}
	return living;
}

function change_difficulty(mode) {
	var background_speed = (5 + mode)/10;
	layer_hspeed(layer_get_id("Background"), -background_speed);

	tubes_timer -= 2;
}

function call_game_over() {
	game_over_drawed = true;
	// print game over
	instance_create_depth(112, 28, -1, o_GameOver);

	// Create menu
	instance_create_layer(112, 88, "GUID", o_ScoreTable);
	instance_create_layer(80,  98, "GUID", o_Restart_Menu);
	instance_create_layer(148, 98, "GUID", o_IA_menu);

	o_Score.y = 56;
	with (o_Score) {
		x -= 61;
	}
}

#endregion

change_difficulty(difficulty);