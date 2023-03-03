// all die
if (o_Controler.verify_birds_dead() and not saved)
{
	var best_score = -1;
	for (var i = 0; i < NUM_BIRDS; i += 1) {
		var new_score = neural[i].bird._score;
		if (new_score > best_score) {
			best_score = new_score;
			best = neural[i].id;
		}
	}
	save_best_ia(SAVE_FILE);
	saved = true;
}

// neural
with (o_NeuralNetwork) {
	var input = array_create(5);

	input[0] = bird.x;
	input[1] = bird.y;

	var tube = instance_nearest(bird.x, bird.y, o_Killer);
	input[2] = tube.x;
	input[3] = tube.y;

	input[4] = (tube.x - bird.x);
	
	if (compute(input)) {
		bird.flying_time = 0;
	}
	else { // may we must exclude this
		bird.flying_time = FLYING_IMPULSE;
	}
}