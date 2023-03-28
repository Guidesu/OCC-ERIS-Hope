/obj/item/gun/projectile/rpg
<<<<<<< HEAD
	name = "RPG-17"
	desc = "A modified ancient rocket-propelled grenade launcher, this design is centuries old, but well preserved. \
			Modification altered gun mechanism to take much more compact, but sligtly less devastating in close quaters rockets and remove backfire. \
			Their priming and proplusion was altered too for more robust speed, so it has strong recoil."
=======
	name = "RPG"
	desc = "A simple, reloadable launcher with roots back to the beginings of anti-armor warfare. \
			This particular variant is sligtly less devastating, however that's a small price to pay for negligible back-blast."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/guns/projectile/rocket.dmi'
	icon_state = "launcher" //placeholder, needs new sprites
	item_state = "launcher" //placeholder, needs new sprites
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	caliber = CAL_ROCKET
<<<<<<< HEAD
	fire_sound = 'sound/effects/bang.ogg' //placeholder, needs new sound
=======
	fire_sound = 'sound/weapons/guns/fire/rpg.ogg' // Actual RPG sound
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
	matter = list(MATERIAL_PLASTEEL = 30, MATERIAL_PLASTIC = 5, MATERIAL_SILVER = 5)
	price_tag = 4000
	ammo_type = "/obj/item/ammo_casing/rocket"
	load_method = SINGLE_CASING
	handle_casings = EJECT_CASINGS
	max_shells = 1
<<<<<<< HEAD
	one_hand_penalty = 1
	recoil_buildup = 0.2 //with new system it gives slight chance to miss but not really
	fire_sound = 'sound/effects/bang.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/batrifle_magin.ogg' //placeholder, needs new sound
	twohanded = TRUE
	spawn_blacklisted = TRUE

/obj/item/gun/projectile/rpg/on_update_icon()
	. = ..()
	cut_overlays()

	var/iconstring = initial(icon_state)

	if (loaded.len)
		iconstring += "_he"

	add_overlays(iconstring)

	update_wear_icon()

=======
	init_recoil = HANDGUN_RECOIL(3)
	bulletinsert_sound = 'sound/weapons/guns/interact/china_lake_reload.ogg'
	twohanded = TRUE
	gun_tags = list(GUN_SCOPE)
	allow_racking = FALSE
	auto_rack = TRUE //so if we get loaded were good
	serial_type = "SA"

	wield_delay = 2 SECOND
	wield_delay_factor = 0.6 // 60 vig , heavy stuff

/obj/item/gun/projectile/rpg/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (loaded.len)
		iconstring += "-he"
//		itemstring += "-he"         disabled until mag fix
	icon_state = iconstring
	set_item_state(itemstring)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/gun/projectile/rpg/Initialize()
	. = ..()
	update_icon()
