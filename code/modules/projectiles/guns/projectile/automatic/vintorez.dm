/obj/item/gun/projectile/automatic/vintorez
<<<<<<< HEAD
	name = "Excelsior .20 \"Vintorez\""
	desc = "This gun is a copy of a design from a country that no longer exists. It is still highly prized for its armor piercing capabilities."
	icon = 'icons/obj/guns/projectile/vintorez.dmi'
	icon_state = "vintorez"
	item_state = "vintorez"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_SRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_COVERT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BACK
	ammo_type = "/obj/item/ammo_casing/srifle"
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/srifle
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 5)
	price_tag = 4000
	zoom_factor = 0.8 // double as IH_heavy
	penetration_multiplier = 1.2
	damage_multiplier = 1.2
	recoil_buildup = 8
	one_hand_penalty = 15 //automatic rifle level
	silenced = TRUE
	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		FULL_AUTO_400
		)


/obj/item/gun/projectile/automatic/vintorez/on_update_icon()
	var/iconstring = initial(icon_state)
	var/itemstring = initial(item_state)

	if (ammo_magazine)
		iconstring += "_mag"
		itemstring += "_mag"
=======
	name = "Excelsior \"Vintorez\" silenced rifle"
	desc = "\"We have no compassion and we ask no compassion from you. When our turn comes, we shall not make excuses for the terror.\"\
	A powerful armor-piercing marksman rifle with an integrated silencer. Utilises a defunct design, but remains a popular armament. Uses 7.62mm Rifle rounds."
	icon = 'icons/obj/guns/projectile/vintorez.dmi'
	icon_state = "vintorez"
	item_state = "vintorez"
	excelsior = TRUE
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_RIFLE //needs a new caliber type?
	origin_tech = list(TECH_COMBAT = 6, TECH_ILLEGAL = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BACK
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_RIFLE //need a new magwell type?
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 5)
	price_tag = 1125
	zoom_factors = list(0.8) // double as IH_heavy
	penetration_multiplier = 1.2
	damage_multiplier = 1.2
	extra_damage_mult_scoped = 0.3
	init_recoil = RIFLE_RECOIL(1.2)
	silenced = TRUE
	fire_sound_silenced = 'sound/weapons/guns/fire/vintorez.ogg' // Snowflake!
	gun_tags = list(GUN_PROJECTILE, GUN_MAGWELL)

	init_firemodes = list(
		SEMI_AUTO_NODELAY,
		FULL_AUTO_300
		)
	serial_type = "EXC"

	wield_delay = 1.4 SECOND
	wield_delay_factor = 0.4 // 40 vig to insta wield , heavy class assault rifle. Why is this 7.62 instead of 9mm? I'll never know.
	gun_parts = list(/obj/item/part/gun/frame/vintorez = 1, /obj/item/part/gun/grip/excel = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/lrifle = 1)

/obj/item/gun/projectile/automatic/vintorez/NM_colony
	name = "\"Val\" silenced rifle"
	desc = "A powerful armor-piercing marksman rifle with an integrated silencer. Utilises a defunct design, but remains a popular armament. Uses 7.62mm Rifle rounds.\nThis model of the \"Vintorez\" rifle has been reclaimed and repurposed by Nadezhda Marshals, making it free of Excelsior taint."
	icon = 'icons/obj/guns/projectile/vintorez_bs.dmi'
	icon_state = "vintorez_bs"
	item_state = "vintorez_bs"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 2)
	damage_multiplier = 1.0 //The gun is made to be Excelsior, thus its higher stats. Nerfed since this variant is not supposed to be an antag-weapon. Plus - extra damage when scoped.
	price_tag = 800
	serial_type = "NM"
	excelsior = FALSE
	gun_parts = list(/obj/item/part/gun/frame/vintorez = 1, /obj/item/part/gun/grip/rubber = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/lrifle = 1)

/obj/item/gun/projectile/automatic/vintorez/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
<<<<<<< HEAD
	item_state = itemstring
=======
	set_item_state(itemstring)

/obj/item/gun/projectile/automatic/vintorez/Initialize()
	. = ..()
	update_icon()

/obj/item/part/gun/frame/vintorez
	name = "Vintorez frame"
	desc = "A Vintorez rifle frame. Accurate and damaging."
	icon_state = "frame_vintorez"
	result = /obj/item/gun/projectile/automatic/vintorez
	resultvars = list(/obj/item/gun/projectile/automatic/vintorez, /obj/item/gun/projectile/automatic/vintorez/NM_colony)
	gripvars = list(/obj/item/part/gun/grip/excel, /obj/item/part/gun/grip/rubber)
	mechanismvar = /obj/item/part/gun/mechanism/autorifle
	barrelvars = list(/obj/item/part/gun/barrel/lrifle)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
