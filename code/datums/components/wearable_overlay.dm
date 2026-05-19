//welcome to BYOND in 2026; now with: dynamic wearable overlay architecture
//resuable component for all your wearable layering needs
/datum/component/wearable_overlay
	var/layer_offset = 0.03
	var/force_dir = TRUE

/datum/component/wearable_overlay/Initialize(custom_layer, match_dir)
	if(!istype(parent, /obj/item))
		return COMPONENT_INCOMPATIBLE
	if(custom_layer)
		layer_offset = custom_layer
	if(!isnull(match_dir))
		force_dir = match_dir
