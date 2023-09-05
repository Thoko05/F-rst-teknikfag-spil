//movement variables
	move_dir = 0;
	move_spd = 2;
	x_spd = 0;
	y_spd = 0;


//sprite control
	center_y_offset = -14;
	center_y = y + center_y_offset; //set in step event

	weapon_offset_dist = 4;
	aim_dir = 0;

	face = 3;
	sprite[0] = s_player_right;
	sprite[1] = s_player_up;
	sprite[2] = s_player_left;
	sprite[3] = s_player_down
