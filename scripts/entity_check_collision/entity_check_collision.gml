var entity_one = argument0
var entity_two = argument1 

if ( instance_exists( entity_one ) and instance_exists( entity_two )) {
	with ( entity_one ) {
		// check horizontal collision
		if ( place_meeting( x + horizontal_speed, y, entity_two )) {
			while ( !place_meeting( x + sign( horizontal_speed ), y, entity_two )) {
				x += sign( horizontal_speed )
			}
			horizontal_speed = 0
		}
		
		// check vertical collision
		if ( place_meeting( x, y + vertical_speed, entity_two )) {
			while ( !place_meeting( x, y + sign( vertical_speed ), entity_two )) {
				y += sign( vertical_speed )
			}	
			if ( sign ( vertical_speed ) > 0 ) {
				vertical_speed = -jump_force * 2.2;
				gravity_force = 0
				// entity._one.is_grounded = true
			} else {
				vertical_speed = 0
			}
		}
	}
}
