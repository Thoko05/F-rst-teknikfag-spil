// Opdater aim_dir baseret på musens retning
aim_dir = point_direction(x, y, mouse_x, mouse_y);

// Tjek om aim_dir skal spejles
var _weapon_y_scl = 1;
if (aim_dir >= 90 && aim_dir <= 270)
{
    _weapon_y_scl = -1;	
}

// Tegn spilleren
draw_self();

// Tegn våbenet med den korrekte rotation og spejling
draw_sprite_ext(s_gun, 0, x, y, 1, _weapon_y_scl, aim_dir, c_white, 1);
