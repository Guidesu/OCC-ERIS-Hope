/obj/item/gun/projectile/revolver
<<<<<<< HEAD
	name = "FS REV .40 Magnum \"Miller\""
	desc = "The \"Frozen Star\" \"Miller\" is a revolver of choice when you absolutely, positively need to make a hole in someone. Uses .40 Magnum ammo."
=======
	name = "\"Minotaur\" magnum revolver"
	desc = "The \"H&S\" \"Minotaur\" is a revolver of choice when you absolutely, positively need to make a fist-sized hole in someone, but can't afford to do it in style. Uses 10mm Magnum bullets... always wanting more."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/guns/projectile/revolver.dmi'
	icon_state = "revolver"
	item_state = "revolver"
	caliber = CAL_MAGNUM
	force = WEAPON_FORCE_NORMAL
	can_dual = TRUE
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	handle_casings = CYCLE_CASINGS
<<<<<<< HEAD
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/magnum
	magazine_type = /obj/item/ammo_magazine/slmagnum
	unload_sound = 'sound/weapons/guns/interact/rev_magout.ogg'
	reload_sound = 'sound/weapons/guns/interact/rev_magin.ogg'
	cocked_sound = 'sound/weapons/guns/interact/rev_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/revolver_fire.ogg'
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 8)
	price_tag = 2000 //avasarala of revolver world
	fire_delay = 3 //all revolvers can fire faster, but have huge recoil
	damage_multiplier = 1.75
	armor_penetration = 0.65 // Insanely powerful handcannon, but worthless against heavy armor
	rarity_value = 9.6
	recoil_buildup = 8
=======
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/magnum_40
	unload_sound 	= 'sound/weapons/guns/interact/rev_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/rev_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/rev_cock.ogg'
	fire_sound = 'sound/weapons/guns/fire/revolver_fire.ogg'
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_PLASTIC = 8)
	price_tag = 650
	fire_delay = 3 //all revolvers can fire faster, but have huge recoil
	damage_multiplier = 1.2
	armor_penetration = 0.65 // Insanely powerful handcannon, but worthless against heavy armor
	init_recoil = HANDGUN_RECOIL(1.3)
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_REVOLVER)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/drawChargeMeter = TRUE
	var/chamber_offset = 0 //how many empty chambers in the cylinder until you hit a round
	fire_animatio = TRUE
	allow_racking = FALSE
	serial_type = "H&S"

<<<<<<< HEAD
/obj/item/gun/projectile/revolver/verb/spin_cylinder()
	set name = "Spin cylinder"
=======
	wield_delay = 0.4 SECOND
	wield_delay_factor = 0.4 // 40 vig

	gun_parts = list(/obj/item/part/gun/frame/minotaur = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/revolver = 1, /obj/item/part/gun/barrel/magnum = 1)

/obj/item/part/gun/frame/minotaur
	name = "Minotaur frame"
	desc = "A Minotaur revolver frame. The officer's choice."
	icon_state = "frame_revolver"
	result = /obj/item/gun/projectile/revolver
	resultvars = list(/obj/item/gun/projectile/revolver)
	gripvars = list(/obj/item/part/gun/grip/black)
	mechanismvar = /obj/item/part/gun/mechanism/revolver
	barrelvars = list(/obj/item/part/gun/barrel/magnum)

/obj/item/gun/projectile/revolver/verb/spin_cylinder()
	set name = "Spin revolver"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	set desc = "Fun when you're bored out of your skull."
	set category = "Object"

	chamber_offset = 0
	visible_message(SPAN_WARNING("\The [usr] spins \the [src]!"), \
	SPAN_NOTICE("You hear something metallic spin and click."))
	playsound(src.loc, 'sound/weapons/revolver_spin.ogg', 100, 1)
	loaded = shuffle(loaded)
	if(rand(1,max_shells) > loaded.len)
		chamber_offset = rand(0,max_shells - loaded.len)
	icon_state = "[icon_state]_spin"
	spawn(10)
		icon_state = "[initial(icon_state)]"

/obj/item/gun/projectile/revolver/consume_next_projectile()
	if(chamber_offset)
		chamber_offset--
		return
	return ..()

<<<<<<< HEAD
/obj/item/gun/projectile/revolver/load_ammo(obj/item/A, mob/user)
=======
/obj/item/gun/projectile/revolver/load_ammo(var/obj/item/A, mob/user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	chamber_offset = 0
	return ..()

/obj/item/gun/projectile/revolver/proc/update_charge()
	if(!drawChargeMeter)
		return
	cut_overlays()
	if(loaded.len==0)
<<<<<<< HEAD
		add_overlays("[icon_state]_off")
	else
		add_overlays("[icon_state]_on")


/obj/item/gun/projectile/revolver/on_update_icon()
=======
		add_overlay("[icon_state]_off")
	else
		add_overlay("[icon_state]_on")


/obj/item/gun/projectile/revolver/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	update_charge()

/obj/item/gun/projectile/revolver/generate_guntags()
	..()
	gun_tags |= GUN_REVOLVER

