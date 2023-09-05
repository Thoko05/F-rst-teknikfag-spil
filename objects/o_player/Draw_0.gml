//draw the player
draw_self();

//draw the weapon
	var _weapon_y_scl = 1;

//flip the weapon upright
	if aim_dir < 90 && aim_dir > 270
	{
		_weapon_y_scl = -1;	
	}

	draw_sprite_ext( s_gun, 0, x, center_y, 1, 1, aim_dir, c_white, 1 );
