#region atributes
neural = array_create(NUM_BIRDS);
saved = false;
best = noone;
#endregion

#region methods
function save_best_ia() {
	ini_open(SAVE_FILE);

	if (best.bird._score > ini_read_real("IA", "score", 0)) {
		ini_write_real("IA", "score", best.bird._score);

		for (var i = 0; i < 5; i += 1;) {
			ini_write_real("IA", string("n1_weight{0}", i), best.n1_weight[i]);
			ini_write_real("IA", string("n2_weight{0}", i), best.n2_weight[i]);

			if (i < 2) {
				ini_write_real("IA", string("n3_weight{0}", i), best.n3_weight[i]);
			}
		}
	}
	ini_close();
}

#endregion

for (var i = 0; i < NUM_BIRDS; i += 1) {
	neural[i] = instance_create_layer(0, 0, "IA", o_NeuralNetwork, {neural_id: i});
}