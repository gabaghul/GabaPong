if (keyboard_check(vk_up)) {
	current_spd = -max_spd
} else if (keyboard_check(vk_down)) {
	current_spd = max_spd
} else current_spd = 0

y = y + current_spd