// centering the ball at the start
x_center = room_width/2
y_center = room_height/2
x = x_center
y = y_center

// speed
max_spd = 3
collision_spd = max_spd + 2
current_spd_x = 0
current_spd_y = 0

// scores
p1_score = 0
p2_score = 0

// rng first direction of the ball
rng_x = random_range(-1,1)
rng_y = random_range(-1,1)