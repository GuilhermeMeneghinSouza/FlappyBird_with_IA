/// Changes difficulty every 120 frames

// limit dificulty and background speed
if (difficulty < 12)
{
	difficulty += 1;

	change_difficulty(difficulty);
	alarm_set(0, DIFFICULTY_TIMER);
}