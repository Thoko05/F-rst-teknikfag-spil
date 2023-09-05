//get inputs
up_key = keyboard_check( ord( "W" ) );
left_key = keyboard_check( ord( "A" ) );
down_key = keyboard_check( ord( "S" ) );
right_key = keyboard_check( ord( "D" ) );

//player movement
#region
	//get the direction
	var _horiz_key = right_key - left_key;
	var _vert_key = down_key - up_key;
	move_dir = point_direction(0, 0, _horiz_key, _vert_key);

	//get the x and y speeds
	var _spd = 0;
	var _input_level = point_distance(0, 0, _horiz_key, _vert_key);
	_input_level = clamp( _input_level, 0, 1);
	_spd = move_spd * _input_level;

	x_spd = lengthdir_x(_spd, move_dir);
	y_spd = lengthdir_y(_spd, move_dir);

	//collision
	if place_meeting( x + x_spd, y, o_wall )
	{
		x_spd = 0;	
	}

	if place_meeting( x, y + y_spd, o_wall )
	{
		y_spd = 0;	
	}


	//move the player
	x += x_spd
	y += y_spd
	
	//depth
	depth = -bbox_bottom;
	
#endregion


//player aiming
	center_y = y + center_y_offset;
	
	//aim
	aim_dir = point_direction( x, center_y, mouse_x, mouse_y );

//sprite control
#region
	//make sure the player is facing the correct direction
	face = round( aim_dir/90 );
	if face == 4 { face = 0; };
	
	//animate
	if x_spd = 0 && y_spd == 0
	{	
		image_index = 0;	
	}

	//set the player sprite
	mask_index = sprite[3];
	sprite_index = sprite[face];
	
#endregion

