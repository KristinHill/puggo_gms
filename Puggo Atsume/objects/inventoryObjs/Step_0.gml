/// @description Item Object Ops


pug_layer = layer_get_id("Pug_Instances")
slot_layer = layer_get_id("Item_Slots")
inv_layer = layer_get_id("Inventory_Instances")

slot = emptyObj
obj = id

/*

if click object (in inv) {
	layer_set_visible(inv_layer, false)
	instance_deactivate_layer(inv_layer)
	instance_activate_layer(slot_layer)
	layer_set_visible(slot_layer, true)
	if obj.placed = True {
		instance_deactivate_object(obj)
	}
	if click item slot {
		slotXposition = slot.x
		slotYposition = slot.y
		layer_set_visible(slot_layer, false)
		instance_deactivate_layer(slot_layer)
		instance_activate_layer(pug_layer)
		layer_set_visible(pug_layer, true)
		if slot.inUse = True {
			oldObj.placed = False
			instance_deactive_object(oldObj)
		}
		else {
			instance_activate_object(obj)
			obj.x = slotXposition
			obj.y = slotYposition
			obj.placed = True
			slot.inUse = True
		}
	}
}


if obj.placed = True && timePassed = emptyTime && food.servings > 0 {
	if obj.hasPug = True {
		if newPug.power > oldPug.power {
			replace oldPug w/ newPug
		}
		else {
			do nothing
		}
	}
	replace obj w/random pugObj
	obj.hasPug = True
	pug.visits++
	food.servings--
}

*/
