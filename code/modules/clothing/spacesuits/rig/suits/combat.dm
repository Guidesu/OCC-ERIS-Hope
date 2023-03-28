/obj/item/clothing/head/space/rig/combat
	light_overlay = "helmet_light_dual_green"
	spawn_tags = null

/obj/item/rig/combat
	name = "combat hardsuit control module"
	desc = "A sleek and dangerous hardsuit for active combat."
	icon_state = "security_rig"
	suit_type = "combat hardsuit"
<<<<<<< HEAD
	armor = list(
		melee = 45,
		bullet = 50,
		energy = 45,
=======
	armor_list = list(
		melee = 50,
		bullet = 45,
		energy = 30,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		bomb = 50,
		bio = 100,
		rad = 50
	)
<<<<<<< HEAD
	slowdown = 1
	drain = 4
	offline_slowdown = 3
	offline_vision_restriction = 1
	rarity_value = 20
	helm_type = /obj/item/clothing/head/space/rig/combat

/obj/item/rig/combat/equipped
	rarity_value = 40
=======
	slowdown = 0.3
	drain = 4
	offline_slowdown = 3
	offline_vision_restriction = 1
	stiffness = 0
	obscuration = 0
	max_upgrades = 1
	helm_type = /obj/item/clothing/head/helmet/space/rig/combat


/obj/item/rig/combat/equipped
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	initial_modules = list(
		/obj/item/rig_module/mounted,
		/obj/item/rig_module/vision/thermal,
		/obj/item/rig_module/grenade_launcher,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/modular_injector/combat
		)


//Ironhammer rig suit
<<<<<<< HEAD
/obj/item/clothing/head/space/rig/combat/ironhammer
	light_overlay = "sec_light"

/obj/item/rig/combat/ironhammer
	name = "aegis hardsuit control module"
	desc = "Standard operative suit issued to Aegis Cobalt mercenaries. Provides balanced overall protection against various threats and widely used on planets surface, space stations or in open space."
	icon_state = "ihs_rig"
	helm_type = /obj/item/clothing/head/space/rig/combat/ironhammer
	suit_type = "ironhammer hardsuit"
	spawn_blacklisted = TRUE//antag_item_targets
=======
/obj/item/clothing/head/helmet/space/rig/combat/ironhammer
	light_overlay = "sec_light"

/obj/item/rig/combat/ironhammer
	name = "security hardsuit control module"
	desc = "Standard operative suit issued to blackshield and marshal operatives alike. Provides balanced overall protection against various threats and widely used on planets surface, space stations or in open space."
	icon_state = "ihs_rig"
	helm_type = /obj/item/clothing/head/helmet/space/rig/combat/ironhammer
	suit_type = "ironhammer hardsuit"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/rig/combat/ironhammer/equipped
	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/storage
		)
<<<<<<< HEAD

//Hazard Suit
/obj/item/clothing/head/space/rig/hazard
	light_overlay = "helmet_light_dual"
	camera_networks = list(NETWORK_SECURITY)
	rarity_value = 20

/obj/item/rig/hazard
	name = "hazard hardsuit control module"
	suit_type = "hazard hardsuit"
	desc = "A Security hardsuit designed for prolonged EVA in dangerous environments."
	icon_state = "hazard_rig"
	armor = list(
		melee = 35,
		bullet = 40,
		energy = 35,
		bomb = 90,
		bio = 100,
		rad = 100
	)
	slowdown = 1
	drain = 4
	offline_slowdown = 3
	offline_vision_restriction = 1

	helm_type = /obj/item/clothing/head/space/rig/hazard

	req_access = list()
	req_one_access = list()

/obj/item/rig/hazard/equipped
	rarity_value = 40
	initial_modules = list(
		/obj/item/rig_module/vision/sechud,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/grenade_launcher,
		/obj/item/rig_module/mounted/taser
		)
=======
//blacksheild
/obj/item/rig/combat/blackshield
	name = "Blackshield Ops control module"
	desc = "A Blackshield RIG module that has been tailored for CQC. Due to its plating, it's slightly bulkier than normal standard security hardsuits."
	icon_state = "blackshield_rig"
	suit_type = "light suit"
	armor_list = list(
		melee = 60,
		bullet = 55,
		energy = 40,
		bomb = 50,
		bio = 100,
		rad = 50
	)
	slowdown = 0.5 //So we have a reason to not use it
	drain = 25
	offline_slowdown = 3
	offline_vision_restriction = 1
	max_upgrades = 0 //60 armor no plating
	chest_type = /obj/item/clothing/suit/space/rig/combat/blackshield
	helm_type =  /obj/item/clothing/head/helmet/space/rig/combat/blackshield
	boot_type =  /obj/item/clothing/shoes/magboots/rig/combat/blackshield
	glove_type = /obj/item/clothing/gloves/rig/combat/blackshield

/obj/item/rig/combat/blackshield/equipped
	initial_modules = list(
		/obj/item/rig_module/mounted,
		/obj/item/rig_module/storage,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/mounted/egun,
		/obj/item/rig_module/vision/sechud
		)

/obj/item/clothing/suit/space/rig/combat/blackshield
	name = "blackshield hazard suit"

/obj/item/clothing/gloves/rig/combat/blackshield
	name = "blackshield hazard gloves"

/obj/item/clothing/shoes/magboots/rig/combat/blackshield
	name = "blackshield hazard shoes"

/obj/item/clothing/head/helmet/space/rig/combat/blackshield
	name = "blackshield hazard hood"
	desc = "A hazard hood modded to help against CQC combat."
	armor_list = list(
		melee = 65,
		bullet = 55,
		energy = 40,
		bomb = 50,
		bio = 100,
		rad = 50
	)

/obj/item/rig/combat/knight
	name = "hussar hardsuit control module"
	desc = "A RIG module for a \"Hussar\" model hardsuit, jointly manufactured by Divisors and Numericals of the New Testament. \
	The Tau Cross shining brightly upon its shoulder, it offers moderate combat protection against many a type of threat to the Absolute."
	icon_state = "hussar_rig" //Rig modula by Gundam Tanaka#9565
	suit_type = "hussar rig"
	armor_list = list(
		melee = 50,
		bullet = 45,
		energy = 30,
		bomb = 50,
		bio = 100,
		rad = 50
	)
	slowdown = 0.3
	drain = 4
	offline_slowdown = 3
	offline_vision_restriction = 1
	max_upgrades = 1
	chest_type = /obj/item/clothing/suit/space/rig/combat/knight
	helm_type =  /obj/item/clothing/head/helmet/space/rig/combat/knight
	boot_type =  /obj/item/clothing/shoes/magboots/rig/combat/knight
	glove_type = /obj/item/clothing/gloves/rig/combat/knight

/obj/item/rig/combat/knight/equipped
	initial_modules = list(
		/obj/item/rig_module/storage,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/held/shield
		)

/obj/item/clothing/suit/space/rig/combat/knight //Suit by Polyushko#0323
	name = "hussar hardsuit breastplate"

/obj/item/clothing/gloves/rig/combat/knight //Gloves by Gundam Tanaka#9565
	name = "hussar hardsuit gauntlets"

/obj/item/clothing/shoes/magboots/rig/combat/knight //Boots by Gundam Tanaka#9565
	name = "hussar hardsuit greaves"

/obj/item/clothing/head/helmet/space/rig/combat/knight //Helm by Polyushko#0323
	name = "hussar hardsuit full helm"
	desc = "One's spirit is generally the greatest shield."
	light_overlay = "helmet_light_dual"
	armor_list = list(
		melee = 50,
		bullet = 40,
		energy = 30,
		bomb = 50,
		bio = 100,
		rad = 50
	)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
