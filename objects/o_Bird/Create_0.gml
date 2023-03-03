#region atributes
flying_time = 0;
alive = true;
_score = 0;

#endregion

#region methods
function fly() {
	if (keyboard_check(vk_space) or mouse_check_button(mb_left)) flying_time = 0;
	if (flying_time < FLYING_IMPULSE)
	{
		flying_time ++;
		y += FLYING_SPEED;
	}
	y += GRAVITY_SPEED;
}
#endregion