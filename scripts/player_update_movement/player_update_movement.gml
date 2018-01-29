var player_reference = argument0

if ( instance_exists( player_reference )) {
	with ( player_reference ) {
		// update horizontal movement
		horizontal_speed = ( left_input + right_input ) * move_speed;

		// update vertical_movement
		if ( is_grounded and up_input ) {
			vertical_speed = -jump_force;
			is_grounded = false
			gravity_force = 0; // anti-gravity jump	
		}		
	}
}

