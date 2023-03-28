/obj/item/gun/projectile/automatic/drozd
<<<<<<< HEAD
	name = "Excelsior SMG .40 Magnum \"Drozd\""
	desc = "An excellent fully automatic Heavy SMG. Rifled to take a larger caliber than a typical submachine gun, but unlike \
			other heavy SMGs makes use of increased caliber to achieve excellent armor penetration capabilities. \
			Suffers a bit less from poor recoil control and has worse than average fire rate. Uses .40 Magnum rounds."
	icon = 'icons/obj/guns/projectile/drozd.dmi'
	icon_state = "drozd"
	item_state = "drozd"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 2)
	caliber = CAL_MAGNUM
	load_method = MAGAZINE
	mag_well = MAG_WELL_SMG
	magazine_type = /obj/item/ammo_magazine/msmg
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 4)
	price_tag = 2200
	damage_multiplier = 0.8 	 //25,6 lethal, 28 HV //damage
	penetration_multiplier = 1.5 //22.5 lethal, 30 HV //AP
	recoil_buildup = 6

	twohanded = FALSE
	one_hand_penalty = 5 //smg level
	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_300,
		SEMI_AUTO_NODELAY
		)

/obj/item/gun/projectile/automatic/drozd/on_update_icon()
	cut_overlays()
	icon_state = "[initial(icon_state)][silenced ? "_s" : ""]"
	if(ammo_magazine)
		add_overlays("mag[silenced ? "_s" : ""][ammo_magazine.ammo_color]")
	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		add_overlays("slide[silenced ? "_s" : ""]")

/obj/item/gun/projectile/automatic/drozd/Initialize()
	. = ..()
	update_icon()
=======
	name = "Excelsior \"Drozd\" SMG"
	desc = "\"The supremacy of the proletariat will cause them to vanish still faster.\"\nAn excellent, fully automatic compact submachinegun. \
			Famous for its perfomance in close quarters, and used by communist cells such as Excelsior. \
			Chambered in 10mm, it takes both pistol and SMG magazines."
	icon = 'icons/obj/guns/projectile/drozd.dmi'
	icon_state = "drozd"
	item_state = "drozd"
	excelsior = TRUE
	w_class = ITEM_SIZE_NORMAL
	can_dual = TRUE
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_SMG
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 3)
	price_tag = 800
	damage_multiplier = 0.95
	init_recoil = SMG_RECOIL(0.4)
	twohanded = FALSE
	gun_tags = list(GUN_PROJECTILE, GUN_CALIBRE_9MM, GUN_MAGWELL)
	init_firemodes = list(
		FULL_AUTO_300_NOLOSS,
		SEMI_AUTO_NODELAY
		)
	serial_type = "EXC"

	wield_delay = 0.5 SECOND
	wield_delay_factor = 0.1 // 10 vig
	gun_parts = list(/obj/item/part/gun/frame/drozd = 1, /obj/item/part/gun/grip/excel = 1, /obj/item/part/gun/mechanism/smg = 1, /obj/item/part/gun/barrel/magnum = 1)

/obj/item/gun/projectile/automatic/drozd/NM_colony
	name = "\"Kompleks\" SMG"
	desc = "An excellent, fully automatic compact submachinegun. Famous for its perfomance in close quarters. Uses 10mm rounds and can take a variety of pistol and SMG magazines.\nThis model of the \"Drozd\" SMG has been reclaimed and repurposed by Nadezhda Marshals, making it free of Excelsior taint."
	icon = 'icons/obj/guns/projectile/drozd_bs.dmi'
	icon_state = "drozd-bs"
	item_state = "drozd-bs"
	excelsior = FALSE
	origin_tech = list(TECH_COMBAT = 4)
	serial_type = "NM"
	gun_parts = list(/obj/item/part/gun/frame/drozd = 1, /obj/item/part/gun/grip/rubber = 1, /obj/item/part/gun/mechanism/smg = 1, /obj/item/part/gun/barrel/magnum = 1)

/obj/item/gun/projectile/automatic/drozd/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	if (silenced)
		iconstring += "_s"
		itemstring += "_s"

	icon_state = iconstring
	item_state = itemstring

/obj/item/part/gun/frame/drozd
	name = "Drozd frame"
	desc = "A Drozd SMG frame. Workhorse of the Excelsior force."
	icon_state = "frame_excelsmg"
	result = /obj/item/gun/projectile/automatic/drozd
	gripvars = list(/obj/item/part/gun/grip/excel, /obj/item/part/gun/grip/rubber)
	mechanismvar = /obj/item/part/gun/mechanism/smg
	barrelvars = list(/obj/item/part/gun/barrel/magnum)
	resultvars = list(/obj/item/gun/projectile/automatic/drozd, /obj/item/gun/projectile/automatic/drozd/NM_colony)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
