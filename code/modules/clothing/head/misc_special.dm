/*
 * Welding mask
 */
/obj/item/clothing/head/welding
	name = "welding helmet"
	desc = "A head-mounted face cover designed to protect the wearer completely from space-arc eye."
	icon_state = "welding"
	rarity_value = 10
	item_state_slots = list(
		slot_l_hand_str = "welding",
		slot_r_hand_str = "welding",
		)
	matter = list(MATERIAL_STEEL = 4, MATERIAL_GLASS = 2)
	var/up = 0
<<<<<<< HEAD
	armor = list(
		melee = 20,
		bullet = 10,
		energy = 10,
		bomb = 0,
=======
	armor_list = list(
		melee = 20,
		bullet = 5,
		energy = 10,
		bomb = 5,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		bio = 0,
		rad = 0
	)
	flags_inv = (HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE)
	body_parts_covered = HEAD|FACE|EYES
	action_button_name = "Flip Welding Mask"
	siemens_coefficient = 0.9
	w_class = ITEM_SIZE_NORMAL
<<<<<<< HEAD
	flash_protection = FLASH_PROTECTION_MAJOR
	tint = TINT_HEAVY
	style = STYLE_NEG_LOW
	var/base_state
=======
	var/base_state
	flash_protection = FLASH_PROTECTION_MODERATE
	tint = TINT_MODERATE
	obscuration = HEAVY_OBSCURATION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/head/welding/attack_self()
	if(!base_state)
		base_state = icon_state
	toggle()

/obj/item/clothing/head/welding/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Default Welding"] = "welding"
	options["Demonic Welding"] = "demonwelding"
	options["Knight Welding"] = "knightwelding"
	options["Fancy Welding"] = "fancywelding"
	options["Faithful Welding"] = "cultwelding"
	options["Aquatic Welding"] = "norah_briggs_1"
	options["Rustic Welding"] = "yuki_matsuda_1"
	options["Flame Welding"] = "alice_mccrea_1"
	options["Technomancer Welding"] = "engiewelding"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		base_state = options[choice]
		icon_state = options[choice]
		item_state = options[choice]
		if(up)
			icon_state = "[base_state]up"
		item_state_slots = list(
		slot_l_hand_str = options[choice],
		slot_r_hand_str = options[choice],
		)
		to_chat(M, "You adjusted your helmet's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1


/obj/item/clothing/head/welding/verb/toggle()
	set category = "Object"
	set name = "Adjust Welding Mask"
	set src in usr

	if(!usr.incapacitated())
		if(src.up)
			src.up = !src.up
			body_parts_covered |= (EYES|FACE)
			flags_inv |= (HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE)
			flash_protection = initial(flash_protection)
			tint = initial(tint)
			obscuration = initial(obscuration)
			icon_state = base_state
			to_chat(usr, "You flip the [src] down to protect your eyes.")
		else
			src.up = !src.up
			body_parts_covered &= ~(EYES|FACE)
			flash_protection = FLASH_PROTECTION_NONE
			tint = TINT_NONE
			obscuration = 0
			flags_inv &= ~(HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE)
			icon_state = "[base_state]up"
			to_chat(usr, "You push the [src] up out of your face.")
<<<<<<< HEAD
		update_wear_icon()	//so our mob-overlays
=======
		update_wear_icon()	//so our mob-over-lays
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		usr.update_action_buttons()

/obj/item/clothing/head/welding/demon
	name = "demonic welding helmet"
	desc = "A welding helmet painted to resemble a demonic face."
	icon_state = "demonwelding"
	item_state_slots = list(
		slot_l_hand_str = "demonwelding",
		slot_r_hand_str = "demonwelding",
		)

/obj/item/clothing/head/welding/church
	name = "faithful welding helmet"
	desc = "A welding helmet painted to resemble a the local faith ."
	icon_state = "cultwelding"
	item_state_slots = list(
		slot_l_hand_str = "cultwelding",
		slot_r_hand_str = "cultwelding",
		)

/obj/item/clothing/head/welding/knight
	name = "knightly welding helmet"
	desc = "A welding helmet painted to resemble a medieval knight."
	icon_state = "knightwelding"
	item_state_slots = list(
		slot_l_hand_str = "knightwelding",
		slot_r_hand_str = "knightwelding",
		)

/obj/item/clothing/head/welding/fancy
	name = "fancy welding helmet"
	desc = "A welding helmet painted in fancy black and gold colors."
	icon_state = "fancywelding"
	item_state_slots = list(
		slot_l_hand_str = "fancywelding",
		slot_r_hand_str = "fancywelding",
		)

/obj/item/clothing/head/welding/technomancer
	name = "technomancer welding helmet"
	desc = "A welding helmet painted in artificer guild colors."
	icon_state = "engiewelding"
	item_state_slots = list(
		slot_l_hand_str = "engiewelding",
		slot_r_hand_str = "engiewelding",
		)

/obj/item/clothing/head/welding/flame
	name = "flame welding helmet"
	desc = "A welding helmet painted with vivid flames and fire."
	icon_state = "alice_mccrea_1"
	item_state_slots = list(
		slot_l_hand_str = "alice_mccrea_1",
		slot_r_hand_str = "alice_mccrea_1",
		)

/obj/item/clothing/head/welding/ghetto
	name = "ghetto welding helmet"
	desc = "A welding helmet painted white with a graffiti tag."
	icon_state = "yuki_matsuda_1"
	item_state_slots = list(
		slot_l_hand_str = "yuki_matsuda_1",
		slot_r_hand_str = "yuki_matsuda_1",
		)

<<<<<<< HEAD
/*
 * Ushanka
 */
/obj/item/clothing/head/ushanka
	name = "ushanka"
	desc = "Perfect for winter in Siberia, da?"
	icon_state = "ushankadown"
	flags_inv = HIDEEARS
	rarity_value = 16.66

/obj/item/clothing/head/ushanka/attack_self(mob/user)
	if(src.icon_state == "ushankadown")
		src.icon_state = "ushankaup"
		to_chat(user, "You raise the ear flaps on the ushanka.")
	else
		src.icon_state = "ushankadown"
		to_chat(user, "You lower the ear flaps on the ushanka.")

/*
 * Pumpkin head
 */
/obj/item/clothing/head/pumpkinhead
	name = "carved pumpkin"
	desc = "A jack o' lantern! Believed to ward off evil spirits."
	icon_state = "hardhat0_pumpkin"//Could stand to be renamed
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES
	brightness_on = 2
	light_overlay = "helmet_light"
	w_class = ITEM_SIZE_NORMAL

/*
 * Kitty ears
 */
/obj/item/clothing/head/kitty
	name = "kitty ears"
	desc = "A pair of kitty ears. Meow!"
	icon_state = "kitty"
	body_parts_covered = 0
	siemens_coefficient = 1.5
	item_icons = list()
	rarity_value = 50

/obj/item/clothing/head/kitty/equipped(mob/user, slot)
	if(slot == slot_head)
		update_icon(user)
	..()

/obj/item/clothing/head/kitty/on_update_icon(var/mob/living/carbon/human/user)
	if(!istype(user))
		return
	var/icon/ears = new/icon('icons/inventory/head/mob.dmi', "kitty")
	ears.Blend(rgb(user.r_hair, user.g_hair, user.b_hair), ICON_ADD)

	var/icon/earbit = new/icon('icons/inventory/head/mob.dmi', "kittyinner")
	ears.Blend(earbit, ICON_OVERLAY)

/obj/item/clothing/head/richard
	name = "chicken mask"
	desc = "You can hear the distant sounds of rhythmic electronica."
	icon_state = "richard"
	body_parts_covered = HEAD|FACE
	flags_inv = BLOCKHAIR
=======
/obj/item/clothing/head/welding/aquatic
	name = "aquatic welding helmet"
	desc = "A welding helmet painting in an underwater blue theme."
	icon_state = "norah_briggs_1"
	item_state_slots = list(
		slot_l_hand_str = "norah_briggs_1",
		slot_r_hand_str = "norah_briggs1",
		)

/obj/item/clothing/head/matriarch_cape
	name = "Matriarch Cape"
	desc = "A cape made from the hide of a xenomorph queen. The skill and experience required to hunt such a beast shows that the individual wearing this \
			is none other than the Matriarch of the Hunting Lodge."
	icon_state = "matriarch_cape"
	item_state = "matriarch_cape"
	armor_list = list(melee = 45, bullet = 25, energy = 25, bomb = 25, bio = 20, rad = 15)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
