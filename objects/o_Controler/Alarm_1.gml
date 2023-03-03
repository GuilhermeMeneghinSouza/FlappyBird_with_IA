/// Tubes runtime
var ypos = random_range(TUBES_MIN, TUBES_MAX);
instance_create_layer(OUT_OFF_ROOM, ypos, "Instances", o_Tube);

alarm_set(1, tubes_timer);