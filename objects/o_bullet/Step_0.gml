//move
	x_spd = lengthdir_x( spd, dir );
	y_spd = lengthdir_y( spd, dir );

	x += x_spd;
	y += y_spd;
	
	//collision
	if place_meeting( x, y, o_solid_wall )
	{
		instance_destroy();	
	}
