if (bird.alive) {
	var tube = instance_nearest(bird.x, bird.y, o_Tube);
	var out_put = compute([bird.x, bird.y,
						   tube.x, tube.y,
						  (tube.x -bird.x)]);

	if (out_put) bird.flying_time = 0;		// fly
	else bird.flying_time = FLYING_IMPULSE; // fall

	neural_score += 1;
}