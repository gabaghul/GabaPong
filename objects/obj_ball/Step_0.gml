if rng_x < 0  && current_spd_x == 0 {
	current_spd_x = max_spd
} else  if rng_x >= 0 && current_spd_x == 0 {
	current_spd_x = -max_spd
}
if rng_y < 0 && current_spd_y == 0 {
	current_spd_y = max_spd
} else if rng_y >= 0 && current_spd_y == 0 {
	current_spd_y = -max_spd
}

if !place_free(x + collision_spd, y) || !place_free(x - collision_spd, y) {
	current_spd_x = -current_spd_x
}
if !place_free(x, y + collision_spd) || !place_free(x, y - collision_spd) {
	current_spd_y = -current_spd_y
}

if x < 0 {
	global.p2_score++
	x = x_center
	y = y_center	
	
	init_params()
} else if x > room_width {
	global.p1_score++
	x = x_center
	y = y_center	
	
	init_params()
} else {
	x += current_spd_x
	y += current_spd_y
}