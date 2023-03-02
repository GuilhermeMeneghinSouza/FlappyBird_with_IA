/// @controler


// @tubes
#macro TUBES_TIMER 20
alarm_set(0, TUBES_TIMER);

// @mode
#macro MODE_CHANGER 120
difficulty = .5;
set_difficulty(difficulty);
alarm_set(1, MODE_CHANGER);