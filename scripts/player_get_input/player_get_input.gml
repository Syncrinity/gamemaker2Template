var player_reference = argument0

if ( instance_exists( player_reference )) {
	with ( player_reference ) {
		left_input = -keyboard_check(ord("A"))
		right_input = keyboard_check(ord("D"))
		up_input = keyboard_check_pressed(ord("W"))
		down_input = keyboard_check_pressed(ord("S"))
	}
}

