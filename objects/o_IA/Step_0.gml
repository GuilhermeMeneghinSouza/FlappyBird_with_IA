// all die
if (o_Controler.verify_birds_dead() and not saved)
{
	best_score = -1;
	for (var i = 0; i < NUM_BIRDS; i += 1) {
		var new_score = neural[i].neural_score;
		if (new_score >= best_score) {
			best_score = new_score;
			best = neural[i].id;
		}
	}
	save_best_ia();
	saved = true;
}