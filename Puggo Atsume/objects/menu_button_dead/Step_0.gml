/// @description Menu Button Ops

var menuLayer = layer_get_id("Menu_Instances")


if layer_get_visible(menuLayer) {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, menu_buttonObj, true, false) {
		layer_set_visible(menuLayer, false)
		instance_deactivate_layer(menuLayer)
		instance_deactivate_object(album_buttonObj)
		instance_deactivate_object(shop_buttonObj)
		instance_deactivate_object(inventory_buttonObj)
	}
}
else {
	if mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, menu_buttonObj, true, false) {
		layer_set_visible(menuLayer, true)
		instance_activate_object(album_buttonObj)
		instance_activate_object(shop_buttonObj)
		instance_activate_object(inventory_buttonObj)
		object_set_visible(album_buttonObj, true)
		object_set_visible(shop_buttonObj, true)
		object_set_visible(inventory_buttonObj, true)
	}
}

/*
if menu layer visible {
	on click => make invisible and deactivate buttons
}
else if invisible {
	onclick => make visible and activate buttons
}
*/
