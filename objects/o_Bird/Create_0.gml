#region atributes
flying_time = 0;
alive = true;
_score = 0;

#endregion

#region methods
function fly() {
	if (flying_time < FLYING_IMPULSE)
	{
		flying_time ++;
		y += FLYING_SPEED;
	}
	else y += GRAVITY_SPEED;
}
#endregion