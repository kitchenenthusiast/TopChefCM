//==============================================//
//         OPRHANED SYSTEM sorry geeves :(      //
//ARMOR VALUE RESETS ONLY FOR UNUSED ARMOR LINK //
//==============================================//
/obj/item/clothing/proc/reset_armor_melee_value()
	armor_melee = initial(armor_melee)

/obj/item/clothing/proc/reset_armor_bullet_value()
	armor_bullet = initial(armor_bullet)

/obj/item/clothing/proc/reset_armor_laser_value()
	armor_laser = initial(armor_laser)

/obj/item/clothing/proc/reset_armor_energy_value()
	armor_energy = initial(armor_energy)

/obj/item/clothing/proc/reset_armor_bomb_value()
	armor_bomb = initial(armor_bomb)

/obj/item/clothing/proc/reset_armor_bio_value()
	armor_bio = initial(armor_bio)

/obj/item/clothing/proc/reset_armor_rad_value()
	armor_rad = initial(armor_rad)

/obj/item/clothing/proc/reset_armor_internaldamage_value()
	armor_internaldamage = initial(armor_internaldamage)

//==============================================//
//       STORAGE HANDLING FOR ALL CLOTHES       //
//==============================================//
/obj/item/clothing/proc/safe_move_to_storage(obj/item/stored_item, mob/user, atom/storage)
	if(!stored_item || !user || !storage)
		return FALSE
	var/is_held = (stored_item.loc == user)
	if(is_held && !user.drop_held_item(stored_item))
		return FALSE
	stored_item.forceMove(storage)
	return TRUE

/obj/item/clothing/proc/can_store_item(obj/item/stored_item)
	return TRUE

//==============================================//
//      ACCESSORY HANDLING FOR ALL CLOTHES      //
//==============================================//
/obj/item/clothing/proc/is_valid_accessory(obj/item/accessory_item)
	if(!accessory_item)
		return FALSE
	return istype(accessory_item, /obj/item/clothing/accessory)

/obj/item/clothing/proc/can_accept_accessory(obj/item/accessory_item, list/accessory_list, limit)
	if(!accessory_item)
		return FALSE
	if(!accessory_list)
		return TRUE
	return length(accessory_list) < limit

//==============================================//
//       OVERLAY HANDLING FOR ALL CLOTHES       //
//==============================================//
/obj/item/clothing
	var/list/clothing_overlays

/obj/item/clothing/proc/ensure_clothing_overlays()
	if(!islist(clothing_overlays))
		clothing_overlays = list()

/obj/item/clothing/proc/clear_clothing_overlays()
	ensure_clothing_overlays()
	clothing_overlays.Cut()

/obj/item/clothing/proc/build_overlay_image(image/source_overlay, layer_offset)
	if(!source_overlay)
		return null
	if(!istype(source_overlay, /image))
		return null
	var/image/final_clothing_overlay = image(source_overlay) //we clone for safety
	final_clothing_overlay.layer = FLOAT_LAYER + layer_offset
	final_clothing_overlay.dir = src.dir
	return final_clothing_overlay

/obj/item/clothing/proc/add_clothing_overlay(image/source_overlay, layer_offset)
	if(!source_overlay)
		return
	ensure_clothing_overlays()
	var/image/final_clothing_overlay = build_overlay_image(source_overlay, layer_offset)
	if(!final_clothing_overlay)
		return
	clothing_overlays += final_clothing_overlay

/obj/item/clothing/proc/sync_clothing_overlays()
	ensure_clothing_overlays()
	overlays.Cut()
	if(!length(clothing_overlays))
		return
	for(var/image/clothing_overlay_image in clothing_overlays)
		if(clothing_overlay_image)
			overlays += clothing_overlay_image

//==============================================//
//EQUIP/UNEQUIP SAFETY HANDLING FOR ALL CLOTHES //
//==============================================//
/obj/item/clothing/proc/safe_equip_mob(obj/item/equipped_item, mob/user, atom/destination)
	if(!equipped_item || !user || !destination)
		return FALSE
	var/is_held = (equipped_item.loc == user)
	if(is_held && !user.drop_held_item(equipped_item))
		return FALSE
	equipped_item.forceMove(destination)
	return TRUE

/obj/item/clothing/proc/post_equip_update(mob/living/user)
	if(ismob(user))
		user.update_inv_head()
