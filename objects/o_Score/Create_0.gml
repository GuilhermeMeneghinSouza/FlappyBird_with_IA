#region atributes
timer = SECONDS;
drawer = true;

#endregion

#region default_build
image_speed = 0;
alarm_set(0, timer); // clock

#endregion

#region methods
function build(score_obj, _timer, _drawer) {
	with (score_obj) {
		timer = _timer;
		drawer = _drawer;

		alarm_set(0, timer);
	}
}

function draw_new_decimal_place() {
	// create a new score
	new_score_id = instance_create_layer(x, y, "GUID", o_Score);
	build(new_score_id, timer, false);

	// fix timer
	timer = timer * 10;
	alarm_set(0, timer);
	// fix position
	x -= 8;
}

#endregion