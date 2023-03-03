#region atributes
neural = array_create(NUM_BIRDS);
saved = false;
best = noone;
#endregion

#region methods
function save_best_ia(filename) {
	ini_open(filename);

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

function get_best_ia(filename) {
	var w1 = array_create(5);
	var w2 = array_create(5);
	var w3 = array_create(2);

	ini_open(filename);
	for (var i = 0; i < 5; i += 1;) {
		w1[i] = ini_read_real("IA", string("n1_weight{0}", i), 0);
		w2[i] = ini_read_real("IA", string("n2_weight{0}", i), 0);

		if (i < 2) {
			w3[i] = ini_read_real("IA", string("n3_weight{0}", i), 0);
		}
	}
	ini_close();

	neural[0].n1_weight = w1;
	neural[0].n2_weight = w2;
	neural[0].n3_weight = w3;
}

#endregion

#region build
for (var i = 0; i < NUM_BIRDS; i += 1) {
	neural[i] = instance_create_layer(0, 0, "IA", o_NeuralNetwork);

	var w1 = array_create(5);
	var w2 = array_create(5);
	var w3 = array_create(2);

	for (var j = 0; j < 6; j += 1;) {w1[j] = irandom_range(WEIGHT_MIN, WEIGHT_MAX);}
	for (var k = 0; k < 6; k += 1;) {w2[k] = irandom_range(WEIGHT_MIN, WEIGHT_MAX);}
	for (var l = 0; l < 2; l += 1;) {w3[l] = irandom_range(WEIGHT_MIN, WEIGHT_MAX);}

	neural[i].set_weight(w1, w2, w3);
}

get_best_ia(SAVE_FILE);

#endregion