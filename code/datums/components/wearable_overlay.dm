//welcome to BYOND in 2026; now with: dynamic wearable overlay architecture
//resuable component for all your wearable layering needs
/datum/component/wearable_overlay
	var/layer_offset = 0.03
	var/force_dir = TRUE
	var/no_native_render = TRUE
/datum/component/wearable_overlay/Initialize(custom_layer, match_dir, strip_native)
	if(!istype(parent, /obj/item))
		return COMPONENT_INCOMPATIBLE
	if(custom_layer)
		layer_offset = custom_layer
	if(!isnull(match_dir))
		force_dir = match_dir
	if(!isnull(strip_native))
		no_native_render = strip_native
	if(no_native_render && istype(parent, /obj/item/clothing/accessory))
		var/obj/item/clothing/accessory/acc = parent
		acc.inv_overlay = null
/datum/component/wearable_overlay/Destroy()
	if(no_native_render && istype(parent, /obj/item/clothing/accessory))
		var/obj/item/clothing/accessory/acc = parent
		acc.inv_overlay = initial (acc.inv_overlay)
	return ..()
