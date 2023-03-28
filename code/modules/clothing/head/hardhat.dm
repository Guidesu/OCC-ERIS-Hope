/obj/item/clothing/head/hardhat
	name = "hard hat"
<<<<<<< HEAD
	desc = "A piece of headgear used in dangerous working conditions to protect the head. Comes with a built-in flashlight."
	icon_state = "hardhat_yellow"
	action_button_name = "Toggle Headlamp"
	brightness_on = 4 //luminosity when on
	light_overlay = "hardhat_light"
	armor = list(
=======
	desc = "Headgear for dangerous working conditions. This one is an Artificer's standard yellow design with a built-in light."
	icon_state = "hardhat-y"
	item_state = "hardhat-y"
	action_button_name = "Toggle Headlamp"
	brightness_on = 4 //luminosity when on
	light_overlay = "hardhat_light"
	armor_list = list(
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 10,
		bio = 10,
		rad = 25
	)
	siemens_coefficient = 0.8
	w_class = ITEM_SIZE_NORMAL
	price_tag = 30
<<<<<<< HEAD
	style = STYLE_NEG_LOW

/obj/item/clothing/head/hardhat/visor
	name = "visored hard hat"
	desc = "A piece of headgear used in dangerous working conditions to protect the head. Comes with a built-in flashlight and visor, which may protect eyes."
	icon_state = "hardhat_yellow_visor"
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEEYES
	rarity_value = 40

/obj/item/clothing/head/hardhat/blue
	icon_state = "hardhat_blue"

/obj/item/clothing/head/hardhat/orange
	icon_state = "hardhat_orange"

/obj/item/clothing/head/hardhat/red
	name = "firefighter helmet"
	icon_state = "hardhat_red"
=======
	item_flags = STOPPRESSUREDAMAGE
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/head/hardhat/yellow
	name = "yellow hardhat"
	desc = "Headgear for dangerous working conditions with a built-in light. This one comes in standard Artificer's yellow."
	icon_state = "hardhat-y"
	item_state = "hardhat-y"

/obj/item/clothing/head/hardhat/orange
	name = "orange hardhat"
	desc = "Headgear for dangerous working conditions with a built-in light. This one comes in orange."
	icon_state = "hardhat-o"
	item_state = "hardhat-o"

/obj/item/clothing/head/hardhat/red
	name = "red hardhat"
	desc = "Headgear for dangerous working conditions with a built-in light. This one comes in red."
	icon_state = "hardhat-r"
	item_state = "hardhat-r"

/obj/item/clothing/head/hardhat/blue
	name = "blue hardhat"
	desc = "Headgear for dangerous working conditions with a built-in light. This one comes in blue."
	icon_state = "hardhat-b"
	item_state = "hardhat-b"

/obj/item/clothing/head/firefighter/chief
	name = "guild master helmet"
	desc = "A pure white fire resistant hard hat with a powerful headlight and built in nuclear cell. The best utility helmet the guild has."
	icon_state = "hardhat_white"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	item_flags = STOPPRESSUREDAMAGE
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	action_button_name = "Toggle Headlamp"
	brightness_on = 6 //luminosity when on
	light_overlay = "hardhat_light"
	armor_list = list(
		melee = 30,
		bullet = 20,
		energy = 20,
		bomb = 35,
		bio = 10,
		rad = 25
	)
	siemens_coefficient = 0.8
	w_class = ITEM_SIZE_NORMAL
	price_tag = 100

<<<<<<< HEAD
/obj/item/clothing/head/hardhat/white
	icon_state = "hardhat_white"
	item_flags = STOPPRESSUREDAMAGE
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
=======
/obj/item/clothing/head/firefighter/guild_emergency
	name = "emergency guild helmet"
	desc = "A heavy plated and radiation protected hard helmet meant for emergency guild repairs in the most dangerous areas."
	icon_state = "advanced_hardhat"
	item_flags = STOPPRESSUREDAMAGE
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	action_button_name = "Toggle Headlamp"
	brightness_on = 8 //luminosity when on
	light_overlay = "hardhat_light"
	armor_list = list(
		melee = 40,
		bullet = 60,
		energy = 50,
		bomb = 75,
		bio = 80,
		rad = 100
	)
	siemens_coefficient = 0.8
	w_class = ITEM_SIZE_NORMAL
	price_tag = 100
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
