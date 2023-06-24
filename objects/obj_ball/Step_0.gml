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
	audio_play_sound(sfx_ball_colision, 10, false)
	current_spd_x = -current_spd_x
}
if !place_free(x, y + collision_spd) || !place_free(x, y - collision_spd) {
	audio_play_sound(sfx_ball_colision, 10, false)
	current_spd_y = -current_spd_y
}

if x < 0 {
	audio_play_sound(sfx_game_start, 10, false)
	global.p2_score++
	x = x_center
	y = y_center	
	
	init_params()
	
	wait_time = current_time + 2000
	while(current_time < wait_time) {}
} else if x > room_width {
	audio_play_sound(sfx_game_start, 10, false)
	global.p1_score++
	x = x_center
	y = y_center
	
	init_params()
	
	wait_time = current_time + 2000
	while(current_time < wait_time) {}
} else {
	x += current_spd_x
	y += current_spd_y
}