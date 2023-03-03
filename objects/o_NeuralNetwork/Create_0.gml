#region atributes
n1_weight = array_create(5);
n2_weight = array_create(5);
n3_weight = array_create(2);
neural_score = 0;

bird = instance_create_layer(BIRDS_POSITION_X, BIRDS_POSITION_Y, "Instances", o_Bird);

#endregion

#region methods
function output_fuc(number) {
	if (number >= 0) return 1;
	else return 0;
}

function compute(input) {
	var some1 = 0;
	var some2 = 0;
	for (i = 0; i < 5; i += 1;) {
		some1 += (n1_weight[i] * input[i]);
		some2 += (n2_weight[i] * input[i]);
	}

	var some3 = n3_weight[0] * some1;
	some3 += n3_weight[1] * some2;

	return output_fuc(some3);
}

function set_weight(n1, n2, n3) {
	n1_weight = n1;
	n2_weight = n2;
	n3_weight = n3;
}
#endregion