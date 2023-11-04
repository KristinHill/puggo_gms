/// @description Appear/Disappear 


if visible = true {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, pineappleObj_marcy, true, false) {
		visible = false
	}
}
else {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, pineappleObj_marcy, true, false) {
		visible = true
	}
}