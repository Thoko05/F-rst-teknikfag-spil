//move
	x_spd = lengthdir_x( spd, dir );
	y_spd = lengthdir_y( spd, dir );

	x += x_spd;
	y += y_spd;
	
//cleanup
	//destroy
	if destroy == true
	{
		//vfx (skriv kode her for at have en destruktion animation på skuddende)
		instance_destroy();
	}
	
	//collision
	if place_meeting( x, y, o_solid_wall )
	{
		destroy = true;
	}

	//bullet out of range
	if point_distance( xstart, ystart, x, y ) > max_dist
	{
		destroy = true;	
	}
