/// @description Insert description here
// You can write your code in this editor

entity_update_gravity( self )
entity_update_movement( self )

if ( wall_check_horizontal( self )) {
	move_speed *= -1;	
}

wall_check_vertical( self )
