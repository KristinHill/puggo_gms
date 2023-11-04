/// @description Menu Button Ops

var menuLayer = layer_get_id("Menu_Instances")
var pole = layer_get_id("Pole_Layer")

// if menu is visible
if layer_get_visible(menuLayer) {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, menu_buttonObj, true, false) {
		// hide and deactivate entire menu layer
		layer_set_visible(menuLayer, false)
		layer_set_visible(pole, false)
		instance_deactivate_layer(menuLayer)
		instance_deactivate_layer(pole)
	}
}
// if menu is hidden/deactivated
else {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, menu_buttonObj, true, false) {
		// deactivate other layers
		instance_deactivate_layer("Inventory_Instances")
		instance_deactivate_layer("Album_Instances")
		instance_deactivate_layer("Shop_Instances")
		// activate and make visible menu layer
		instance_activate_layer(menuLayer)
		instance_activate_layer(pole)
		layer_set_visible(menuLayer, true)
		layer_set_visible(pole, true)
	}
}
