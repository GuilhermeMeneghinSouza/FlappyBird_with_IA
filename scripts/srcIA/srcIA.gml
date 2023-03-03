function jump(bird){
	tube = instance_nearest(bird.x, bird.x, o_Tube);
	if instance_number(tube) {
		var a = (bird.wtubex) * (tube.x);
		var b = (bird.wtubey) * (tube.y);
		var c = bird.wx * bird.x;
		var d = bird.wy * bird.y;
		var e = bird.wdis * (tube.x - bird.x);
	
	
		some = a + b + c + d + e;
	
		if (some < 50) return false;
		else return true
	} else {
		var a = 0;
		var b = 0;
		var c = bird.wx * bird.x;
		var d = bird.wy * bird.y;
		var e = bird.wdis * - bird.x;
		
		some = a + b + c + d + e;
		if (some < 50) return false;
		else return true
	}
}