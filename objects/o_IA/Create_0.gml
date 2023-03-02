#macro NUM_BIRDS 20
global.alive = true;

mybirds = array_create(NUM_BIRDS);

for (i = 0; i < NUM_BIRDS; i += 1) {
	mybirds[i] = instance_create_depth(18, 62, 0, o_BirdIA);
}
best = mybirds[9];

mybirds[0].wtubex = best.wtubex;
mybirds[0].wtubey = best.wtubey;
mybirds[0].wx = best.wx;
mybirds[0].wy = best.wy;
mybirds[0].wdis = best.wdis;

show_debug_message(mybirds);