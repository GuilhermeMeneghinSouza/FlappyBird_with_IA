#region atributes
flying_time = 0;
alive = true;
_score = 0;

alarm_set(0, SECONDS);

#endregion

#region methods
function fly() {
	if (flying_time < FLYING_IMPULSE)
	{
		flying_time ++;
		y += FLYING_SPEED;
	}
	else y += GRAVITY_SPEED;
}

function save_score() {
	if (room_get_name(room) == "r_Game") {
		ini_open(SAVE_FILE);

		var oldscore = ini_read_real("SCORE", "best", 0);
		if (oldscore < _score) {
			ini_write_real("SCORE", "best", _score);
		}

		ini_close();
	}
}

#endregion