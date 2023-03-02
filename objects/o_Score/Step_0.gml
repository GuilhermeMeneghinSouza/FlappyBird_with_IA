if (drawer) {
	if (image_index == 0 and draw) {
		draw = false;
		
		obj = instance_create_layer(x, y, "GUID", o_Score);
		obj.timer = self.timer
		obj.drawer = false;
		obj.alarm[0] = obj.timer;

		self.timer = timer*10;
		alarm_set(0, timer);
		x -= 8;
		image_index = 1;
	}
	if (image_index == 9) draw = true;
}
//if (y == 56 and not morreu) {
//	morreu = true;
//	x -= 61;
//}