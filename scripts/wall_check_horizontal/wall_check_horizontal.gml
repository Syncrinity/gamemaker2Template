/// wall_check_collision( a, b, c )
var entity_reference = argument0
var collided = false

if ( instance_exists( entity_reference )) {
	with ( entity_reference ) {
	// check horizontal wall collision
		if ( place_meeting( x + horizontal_speed, y, WALL )) {
				while ( !place_meeting( x + sign( horizontal_speed ), y, WALL )) {
					x += sign( horizontal_speed )
				}
				horizontal_speed = 0
				collided = true
		}		
	}
	return collided;
}
