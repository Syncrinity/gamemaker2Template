/// wall_check_collision( a, b, c )
var entity_reference = argument0
var collided = false

if ( instance_exists( entity_reference )) {
	with ( entity_reference ) {	
	// check vertical wall collision	
		if ( place_meeting( x, y + vertical_speed, WALL )) {
			while ( !place_meeting( x, y + sign( vertical_speed ), WALL )) {
				y += sign( vertical_speed )
			}
			if ( sign( vertical_speed ) > 0 ) { // was falling

				is_grounded = true
			}
			vertical_speed = 0
			gravity_force = 0
			collided = true
		}
	}
	return collided
}