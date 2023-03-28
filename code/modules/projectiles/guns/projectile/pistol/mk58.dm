/obj/item/gun/projectile/mk58
<<<<<<< HEAD
	name = "NT HG .35 Auto \"Mk58\""
	desc = "The NT Mk58 is a cheap, ubiquitous sidearm, that was produced by a NanoTrasen subsidiary. Uses standard .35 and high capacity magazines."
	icon = 'icons/obj/guns/projectile/mk58.dmi'
	icon_state = "mk58"
	item_state = "pistol"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_PLASTIC = 6)
	price_tag = 1400
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	can_dual = 1
	caliber = CAL_PISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	damage_multiplier = 1.3
	penetration_multiplier = 1.3
	recoil_buildup = 3
	rarity_value = 9.6


/obj/item/gun/projectile/mk58/on_update_icon()
=======
	name = "\"Thorn\" pistol"
	desc = "The first firearm produced by the Church of the Absolute, predating even the Testament, the OT Thorn is a cheap, ubiquitous sidearm and one of the few Church-branded ballistic weapons. Fires 9mm rounds and bears a suspicious resemblance to the Mk-58 Mod 0."
	icon = 'icons/obj/guns/projectile/mk58.dmi'
	icon_state = "mk58"
	item_state = "mk58"
	caliber = CAL_PISTOL
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_PLASTIC = 6)
	price_tag = 450
	fire_sound = 'sound/weapons/guns/fire/9mm_pistol.ogg'
	can_dual = TRUE
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_H_PISTOL|MAG_WELL_PISTOL
	damage_multiplier = 1.1
	penetration_multiplier = 0.9
	init_recoil = HANDGUN_RECOIL(0.9)
	gun_tags = list(GUN_PROJECTILE, GUN_CALIBRE_9MM, GUN_SILENCABLE, GUN_MAGWELL)
	serial_type = "Absolute"

	wield_delay = 0.2 SECOND
	wield_delay_factor = 0.2 // 20 vig
	gun_parts = list(/obj/item/part/gun/frame/mk58 = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/pistol = 1, /obj/item/part/gun/barrel/pistol = 1)

/obj/item/part/gun/frame/mk58
	name = "Absolute Pistol frame"
	desc = "A standardized pistol frame from the Absolute. The frame needed to make either the Thorn or the Rose."
	icon_state = "frame_mk58"
	result = /obj/item/gun/projectile/mk58
	resultvars = list(/obj/item/gun/projectile/mk58, /obj/item/gun/projectile/mk58/wood)
	gripvars = list(/obj/item/part/gun/grip/black, /obj/item/part/gun/grip/wood)
	mechanismvar = /obj/item/part/gun/mechanism/pistol
	barrelvars = list(/obj/item/part/gun/barrel/pistol, /obj/item/part/gun/barrel/magnum)


/obj/item/gun/projectile/mk58/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_empty"
	else
		iconstring = initial(icon_state) + "_full"

	if (silenced)
		iconstring += "_s"
		itemstring += "_s"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/mk58/wood
<<<<<<< HEAD
	name = "NT HG .35 Auto \"Mk58-C\""
	desc = "The NT Mk58 is a cheap, ubiquitous sidearm, produced by a NanoTrasen subsidiary. This one has a sweet wooden grip. Uses standard .35 Auto mags."
	icon_state = "mk58_wood"
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 1500
	rarity_value = 24
=======
	name = "\"Rose\" magnum pistol"
	desc = "The OT Rose was the first firearm produced by the Testament and one of the final Church ballistic inventions. Essentially a \"Thorn\" rechambered in 10mm with a fine wood finish to commemorate the Testament's founding."
	icon = 'icons/obj/guns/projectile/mk58_wood.dmi'
	icon_state = "mk58"
	item_state = "mk58"
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_WOOD = 6)
	price_tag = 550
	mag_well = MAG_WELL_PISTOL
	caliber = CAL_MAGNUM
	damage_multiplier = 0.9
	init_recoil = HANDGUN_RECOIL(0.8)
	gun_tags = list(GUN_PROJECTILE, GUN_SILENCABLE, GUN_MAGWELL)
	gun_parts = list(/obj/item/part/gun/frame/mk58 = 1, /obj/item/part/gun/grip/wood = 1, /obj/item/part/gun/mechanism/pistol = 1, /obj/item/part/gun/barrel/magnum = 1)


/obj/item/gun/projectile/mk58/wood/update_icon()
	..()
	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_empty"
	else
		iconstring = initial(icon_state) + "_full"

	if (silenced)
		iconstring += "_s"
		itemstring += "_s"

	icon_state = iconstring
	set_item_state(itemstring)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
