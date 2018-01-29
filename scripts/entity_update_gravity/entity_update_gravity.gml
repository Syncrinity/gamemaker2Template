var entity_reference = argument0

if ( instance_exists( entity_reference )) {
	with ( entity_reference ) { 
		if ( gravity_force + GRAVITY_FORCE_DEFAULT < GRAVITY_FORCE_MAX ) {
			gravity_force += GRAVITY_FORCE_DEFAULT;
		} else {
			gravity_force = GRAVITY_FORCE_MAX	
		}
		vertical_speed += gravity_force
	}
}
