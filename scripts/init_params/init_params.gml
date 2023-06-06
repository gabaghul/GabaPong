// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.p1_score = 0
global.p2_score = 0

function init_params(){
	randomise()
	current_spd_x = 0
	current_spd_y = 0
	rng_x = random_range(-1,1)
	rng_y = random_range(-1,1)
}