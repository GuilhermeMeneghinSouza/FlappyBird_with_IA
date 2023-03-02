/// @controler


// @tubes
global.tumes_timer = 120;
alarm_set(0, global.tumes_timer);

// @mode
#macro MODE_CHANGER 120
difficulty = .5;
set_difficulty(difficulty);
alarm_set(1, MODE_CHANGER);

game_over_drawed = false;