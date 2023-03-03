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

function create_neural_network() {
	#region get best ia to w1, w2, w3
	var w1 = array_create(5);
	var w2 = array_create(5);
	var w3 = array_create(2);

	ini_open(SAVE_FILE);
	for (var i = 0; i < 5; i += 1;) {
		w1[i] = ini_read_real("IA", string("n1_weight{0}", i), 0);
		w2[i] = ini_read_real("IA", string("n2_weight{0}", i), 0);

		if (i < 2) {
			w3[i] = ini_read_real("IA", string("n3_weight{0}", i), 0);
		}
	}
	ini_close();

	#endregion

	#region set all weights to best
	for (var i = 0; i < NUM_BIRDS; i += 1) {
		neural[i] = instance_create_layer(0, 0, "IA", o_NeuralNetwork, {neural_id: i});
		neural[i].set_weight(w1, w2, w3);
	}

	#endregion

	#region randomiza weights
	for (var i = 1; i < NUM_BIRDS; i += 1) {
		(neural[i]).n1_weight[irandom(4)] = irandom_range(WEIGHT_MIN, WEIGHT_MAX);
		(neural[i]).n2_weight[irandom(4)] = irandom_range(WEIGHT_MIN, WEIGHT_MAX);
		(neural[i]).n3_weight[irandom(1)] = irandom_range(WEIGHT_MIN, WEIGHT_MAX);
	}

	#endregion
}

#endregion

#region build neural netwrok
create_neural_network();

#endregion