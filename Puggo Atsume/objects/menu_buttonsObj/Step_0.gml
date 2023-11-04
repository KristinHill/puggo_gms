/// @description Change Layer

var lay_id = layer_get_id(targetLayer)
var menu_layer = layer_get_id("Menu_Instances")
var pole = layer_get_id("Pole_Layer")

// if layer visible
if layer_get_visible(lay_id) {
	// click menu button to open menu and deactivate layer
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, menu_buttonObj, true, false) {	
		layer_set_visible(lay_id, false)
		instance_deactivate_layer(lay_id)
		instance_activate_layer(menu_layer)
		layer_set_visible(menu_layer, true)
	}
}
// if layer not visible
else {
	// click button for layer to deactivate menu and activate selected layer
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, buttonObj, true, false) {
		instance_activate_layer(lay_id)
 		layer_set_visible(lay_id, true)
		instance_deactivate_layer(menu_layer)
		layer_set_visible(pole, false)
		instance_deactivate_layer(pole)
	}
}
