/// @description Appear/Disappear 



if visible = true {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, rocketObj_fawn, true, false) {
		visible = false
	}
}
else {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, rocketObj_fawn, true, false) {
		visible = true
	}
}