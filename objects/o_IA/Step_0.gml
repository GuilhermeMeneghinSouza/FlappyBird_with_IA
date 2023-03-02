global.alive = true;
var dead = 0;
with (o_BirdIA) {
	if (not id.alive) {
		dead += 1;
	}
}
if (dead == NUM_BIRDS) global.alive = false;

if (global.alive == false) {
	global.best = 0;
	with (o_BirdIA) {
		if (id._score > global.best) {
			best = id;
		}
	}
	with (global.best) {
		game_save("save_bird");
	}
}