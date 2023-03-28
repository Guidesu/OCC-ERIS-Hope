/*
 * Bomb protection
 */
<<<<<<< HEAD
/obj/item/clothing/head/space/bomb
	name = "bomb helmet"
	desc = "Use in case of bomb."
	icon_state = "bombsuit"
	armor = list(
		melee = 30,
		bullet = 30,
=======
/obj/item/clothing/head/helmet/space/bomb
	name = "bomb helmet"
	desc = "A protective helmet designed for safety when handling explosives, biological problems, and radiation."
	icon_state = "bombsuit"
	armor_list = list(
		melee = 20,
		bullet = 20,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		energy = 30,
		bomb = 100,
		bio = 100,
		rad = 90
	)
<<<<<<< HEAD
	siemens_coefficient = 0
	tint = TINT_HEAVY
=======
	max_upgrades = 3
	siemens_coefficient = 0
	tint = TINT_LOW
	obscuration = HEAVY_OBSCURATION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	price_tag = 100

/obj/item/clothing/suit/space/bomb
	name = "bomb suit"
<<<<<<< HEAD
	desc = "A space suit designed for safety when handling explosives."
	icon_state = "bombsuit"
	item_state = "bombsuit"
	rarity_value = 35
	spawn_tags = SPAWN_TAG_HAZMATSUIT
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	slowdown = 2
	armor = list(
		melee = 30,
		bullet = 30,
=======
	desc = "A protective suit designed for safety when handling explosives, biological problems, and radiation."
	icon_state = "bombsuit"
	item_state = "bombsuit"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	slowdown = 1
	armor_list = list(
		melee = 20,
		bullet = 20,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		energy = 30,
		bomb = 100,
		bio = 100,
		rad = 90
	)
<<<<<<< HEAD
=======
	tool_qualities = list(QUALITY_ARMOR = 100)
	max_upgrades = 3
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0
	equip_delay = 10 SECONDS
	price_tag = 300

<<<<<<< HEAD
/obj/item/clothing/head/space/bomb/security
	icon_state = "bombsuitsec"

/obj/item/clothing/suit/space/bomb/security
	icon_state = "bombsuitsec"
	spawn_blacklisted = TRUE
=======
/obj/item/clothing/head/helmet/space/bomb/security
	name = "juggernaut bomb helmet"
	desc = "For use when bombs, bullets, toxic enviroments, lasers, and melee are all a concern but speed is not."
	equip_delay = 16 SECONDS
	slowdown = 1.25 //so with full suit is 3.5 or 4.5
	armor_list = list(
		melee = 60,
		bullet = 60,
		energy = 60,
		bomb = 100,
		bio = 100,
		rad = 90
	)
	icon_state = "bombsuitsec"

/obj/item/clothing/suit/space/bomb/security
	name = "juggernaut bomb suit"
	desc = "For use when bombs, bullets, toxic enviroments, lasers, and melee are all a concern but speed is not."
	slowdown = 2.25
	equip_delay = 16 SECONDS
	armor_list = list(
		melee = 60,
		bullet = 60,
		energy = 60,
		bomb = 100,
		bio = 100,
		rad = 90
	)
	icon_state = "bombsuitsec"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
