// Define an offset from the player's position to the weapon's origin point
var weapon_offset_dist = 20;  // Adjust this value as needed
var weapon_offset_x = 0;
var weapon_offset_y = -6;

// Update aim_dir based on the mouse's direction
aim_dir = point_direction(x, y, mouse_x, mouse_y);

// Calculate the offsets for positioning the weapon
var _x_offset = lengthdir_x(weapon_offset_dist, aim_dir);
var _y_offset = lengthdir_y(weapon_offset_dist, aim_dir);

// Check if aim_dir should be mirrored
var _weapon_y_scl = 1;
if (aim_dir >= 90 && aim_dir <= 270)
{
    _weapon_y_scl = -1;    
}

// Draw the player
draw_self();

// Draw the weapon with the correct rotation and mirroring, including offset
draw_sprite_ext(s_gun, 0, x + _x_offset + weapon_offset_x, y + _y_offset + weapon_offset_y, 1, _weapon_y_scl, aim_dir, c_white, 1);
