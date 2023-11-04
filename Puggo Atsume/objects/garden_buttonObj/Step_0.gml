/// @description Return to Garden

var menu_layer = layer_get_id("Menu_Instances")
var pole = layer_get_id("Pole_Layer")

// if menu layer visible
if layer_get_visible(menu_layer) {
	// hide/deactivate menu layer and make garden button visible
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, garden_buttonObj, true, false) {	
		layer_set_visible(menu_layer, false)
		layer_set_visible(pole, false)
		instance_deactivate_layer(menu_layer)
		instance_deactivate_layer(pole)
	}
}

