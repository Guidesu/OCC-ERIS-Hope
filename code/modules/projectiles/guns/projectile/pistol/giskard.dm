/obj/item/gun/projectile/giskard
<<<<<<< HEAD
	name = "FS HG .35 Auto \"Giskard\""
	desc = "A popular \"Frozen Star\" brand pocket pistol chambered for the ubiquitous .35 auto round. Uses standard capacity magazines."
	icon = 'icons/obj/guns/projectile/giskard.dmi'
	icon_state = "giskard"
	item_state = "pistol"
	fire_sound = 'sound/weapons/guns/fire/pistol_fire.ogg'
	gun_tags = list(GUN_SILENCABLE)
	caliber = CAL_PISTOL
	w_class = ITEM_SIZE_SMALL
	can_dual = 1
	fire_delay = 0.6
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 3)
	caliber = CAL_PISTOL
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_WOOD = 4)
	price_tag = 600
	damage_multiplier = 1.3
	penetration_multiplier = 0.8
	recoil_buildup = 2
	spawn_tags = SPAWN_TAG_FS_PROJECTILE

/obj/item/gun/projectile/giskard/on_update_icon()
=======
	name = "\"Giskard\" pistol"
	desc = "That's the most popular handgun produced by Holland & Sullivan. Can even fit into a pocket! Uses 9mm."
	icon = 'icons/obj/guns/projectile/giskard.dmi'
	icon_state = "giskard"
	item_state = "pistol"
	fire_sound = 'sound/weapons/guns/fire/9mm_pistol.ogg'
	gun_tags = list(GUN_PROJECTILE, GUN_SILENCABLE, GUN_CALIBRE_9MM, GUN_MAGWELL)
	caliber = CAL_PISTOL
	w_class = ITEM_SIZE_SMALL
	can_dual = TRUE
	fire_delay = 0.6
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 3)
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_PISTOL | MAG_WELL_H_PISTOL
	matter = list(MATERIAL_PLASTEEL = 10, MATERIAL_WOOD = 4)
	price_tag = 300
	damage_multiplier = 1
	penetration_multiplier = 0.8
	init_recoil = HANDGUN_RECOIL(1)
	serial_type = "H&S"

	wield_delay = 0 SECOND
	gun_parts = list(/obj/item/part/gun/frame/giskard = 1, /obj/item/part/gun/grip/wood = 1, /obj/item/part/gun/mechanism/pistol = 1, /obj/item/part/gun/barrel/pistol = 1)

/obj/item/part/gun/frame/giskard
	name = "Giskard frame"
	desc = "A Giskard pistol frame. A ubiquitous pocket deterrent."
	icon_state = "frame_giskard"
	result = /obj/item/gun/projectile/giskard
	resultvars = list(/obj/item/gun/projectile/giskard)
	gripvars = list(/obj/item/part/gun/grip/wood)
	mechanismvar = /obj/item/part/gun/mechanism/pistol
	barrelvars = list(/obj/item/part/gun/barrel/pistol)

/obj/item/gun/projectile/giskard/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "_mag"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	if (silenced)
		iconstring += "_s"
		itemstring += "_s"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/giskard/Initialize()
	. = ..()
	update_icon()
