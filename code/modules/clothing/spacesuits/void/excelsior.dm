/obj/item/clothing/head/space/void/excelsior
	name = "Excelsior helmet"
	desc = "A deceptively well armored space helmet. Ancient design, but advanced manufacturing."
	icon_state = "cosmo"
	item_state = "cosmo"

	//The excelsior armors cost small amounts of rare materials that they can teleport in.
	//This means they can either build up materials over time, or make it go faster by scavenging rare mats
	matter = list(
		MATERIAL_PLASTIC = 20,
		MATERIAL_GLASS = 10,
		MATERIAL_PLASTEEL = 3
	)

<<<<<<< HEAD
	armor = list(
		melee = 35,
		bullet = 40,
		energy = 30,
		bomb = 25,
		bio = 100,
		rad = 75
=======
	armor_list = list(
		melee = 60,
		bullet = 60,
		energy = 60,
		bomb = 75,
		bio = 100,
		rad = 90
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	)
	siemens_coefficient = 0
	species_restricted = list("Human")
	//camera_networks = list(NETWORK_EXCELSIOR) //Todo future: Excelsior camera network and monitoring console
	light_overlay = "helmet_light_green"

/obj/item/clothing/suit/space/void/excelsior
	name = "Excelsior armor"
	desc = "An ancient space suit design, remade with advanced materials. Provides good protection, especially against energy discharges."
	icon_state = "soviet_skaf"
	item_state = "soviet_skaf"
	slowdown = 0.2
	w_class = ITEM_SIZE_NORMAL
<<<<<<< HEAD
	armor = list(
		melee = 35,
		bullet = 40,
		energy = 30,
		bomb = 25,
		bio = 100,
		rad = 75
	)
	siemens_coefficient = 0 //Shockproof!
	breach_threshold = 6
	resilience = 0.08
=======
	//Decent all around, but less ballistic resistance
	stiffness = LIGHT_STIFFNESS
	armor_list = list(
		melee = 60,
		bullet = 60,
		energy = 60,
		bomb = 75,
		bio = 100,
		rad = 90
	)
	siemens_coefficient = 0 //Shockproof!
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	matter = list(
		MATERIAL_PLASTIC = 30,
		MATERIAL_STEEL = 10,
		MATERIAL_PLASTEEL = 5
	)
<<<<<<< HEAD
	helmet = /obj/item/clothing/head/space/void/excelsior
	spawn_blacklisted = TRUE
=======
	helmet = /obj/item/clothing/head/helmet/space/void/excelsior
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
