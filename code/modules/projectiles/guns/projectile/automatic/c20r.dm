/obj/item/gun/projectile/automatic/c20r
<<<<<<< HEAD
	name = "C-20r"
	desc = "The C-20r is a lightweight and robust bullpup SMG of ancient design, for when you REALLY need someone dead. \
			Famous as most used SMG by criminal organizations of various sorts. Was recently reverse-engineered by NanoTrasen \
			almost completely from the scratch, introducing gun to the broad masses of customers. \
			Has a '\"Scarborough Arms\" - Per falcis, per pravitas' buttstock stamp. Uses .35 Auto rounds."
=======
	name = "bullpup SMG"
	desc = "The C-20r is a lightweight and rapid-firing SMG, for when you REALLY need someone dead. Uses 9mm. Has a 'Scarborough Arms - Per falcis, per pravitas' buttstock stamp."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/guns/projectile/cr20.dmi'
	icon_state = "c20r"
	item_state = "c20r"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_PISTOL
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_SMG
<<<<<<< HEAD
	magazine_type = /obj/item/ammo_magazine/smg
	auto_eject = TRUE
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 6)
	price_tag = 1800
=======
	auto_eject = TRUE
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 12)
	price_tag = 2000
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	unload_sound 	= 'sound/weapons/guns/interact/sfrifle_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/sfrifle_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/sfrifle_cock.ogg'
<<<<<<< HEAD
	damage_multiplier = 1
	penetration_multiplier = 1.5 //7.5 with regular lethal ammo, 15 with HV, seems legit
	zoom_factor = 0.4
	recoil_buildup = 3
	one_hand_penalty = 5 //smg level
	rarity_value = 19.2

	gun_tags = list(GUN_SILENCABLE)

	init_firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		)

/obj/item/gun/projectile/automatic/c20r/on_update_icon()
	cut_overlays()
	icon_state = "[initial(icon_state)][silenced ? "_s" : ""]"
	if(ammo_magazine)
		add_overlays("mag[silenced ? "_s" : ""][ammo_magazine.ammo_color]")
	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		add_overlays("slide[silenced ? "_s" : ""]")
=======
	damage_multiplier = 1.2
	penetration_multiplier = 1.5
	zoom_factors = list(0.4)
	init_recoil = SMG_RECOIL(0.9)
	serial_type = "SA"

	gun_tags = list(GUN_PROJECTILE, GUN_SILENCABLE, GUN_CALIBRE_9MM, GUN_SCOPE, GUN_MAGWELL)
	gun_parts = list(/obj/item/part/gun/frame/c20r = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/smg = 1, /obj/item/part/gun/barrel/pistol = 1)

	init_firemodes = list(
		FULL_AUTO_200_NOLOSS,
		SEMI_AUTO_NODELAY,
		BURST_3_ROUND_NOLOSS
		)

	wield_delay = 0.5 SECOND
	wield_delay_factor = 0.1 // 10 vig

/obj/item/part/gun/frame/c20r
	name = "C20r frame"
	desc = "A C20r SMG frame. The syndicate's bread and butter."
	icon_state = "frame_syndi"
	result = /obj/item/gun/projectile/automatic/c20r
	resultvars = list(/obj/item/gun/projectile/automatic/c20r)
	gripvars = list(/obj/item/part/gun/grip/black)
	mechanismvar = /obj/item/part/gun/mechanism/smg
	barrelvars = list(/obj/item/part/gun/barrel/pistol)

/obj/item/gun/projectile/automatic/c20r/update_icon()
	cut_overlays()
	icon_state = "[initial(icon_state)][silenced ? "_s" : ""]"
	if(ammo_magazine)
		add_overlay("mag[silenced ? "_s" : ""][ammo_magazine.ammo_color]")
	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		add_overlay("slide[silenced ? "_s" : ""]")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/gun/projectile/automatic/c20r/Initialize()
	. = ..()
	update_icon()

<<<<<<< HEAD
/obj/item/gun/projectile/automatic/c20r/moebius
	name = "C-20M"
	desc = "The C-20M is a Moebius copy of the famous C-20r, a lightweight and robust bullpup SMG of ancient design. \
			Famous as most used SMG by criminal organizations of various sorts. Uses .35 Auto rounds."
	icon = 'icons/obj/guns/projectile/c20m.dmi'
	icon_state = "c20r"
	item_state = "c20r"
	damage_multiplier = 0.9	//Not quite as good as real syndi
	penetration_multiplier = 1.2 //6 with lethal, 12 with HV
=======
/obj/item/gun/projectile/automatic/c20r/sci
	name = "Soteria \"Bullpip\" SMG"
	desc = "A Soteria copy of the Scarborough Arms C-20r, not quite as good at punching through armor nor as deadly, but still reliable and versatile none the less as its often nicknamed the bullpip. Uses 9mm."
	icon = 'icons/obj/guns/projectile/si_cr20.dmi'
	damage_multiplier = 1
	penetration_multiplier = 1
	price_tag = 500
	serial_type = "SI"

/obj/item/gun/projectile/automatic/c20r/sci/preloaded

/obj/item/gun/projectile/automatic/c20r/sci/preloaded/New()
	. = ..()
	ammo_magazine = new /obj/item/ammo_magazine/smg_35/hv(src)

/obj/item/part/gun/frame/c20r/sci
	name = "C-20M frame"
	desc = "A C-20M SMG frame. The syndicate's bread and butter, reverse-engineered."
	icon_state = "frame_sci"
	result = /obj/item/gun/projectile/automatic/c20r/sci
	resultvars = list(/obj/item/gun/projectile/automatic/c20r/sci)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
