/obj/item/gun/projectile/revolver/handmade
	name = "handmade revolver"
<<<<<<< HEAD
	desc = "Handmade revolver, made from gun parts. and some duct tap, will it even hold up?"
	icon = 'icons/obj/guns/projectile/handmade_revolver.dmi'
	icon_state = "handmade_revolver"
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	max_shells = 5
	matter = list(MATERIAL_PLASTIC = 10, MATERIAL_STEEL = 15)
	price_tag = 250 //one of the cheapest revolvers here
	damage_multiplier = 1.3
	recoil_buildup = 7
	spawn_blacklisted = TRUE

/obj/item/gun/projectile/revolver/handmade/attackby(obj/item/W, mob/user)
	if(QUALITY_SCREW_DRIVING in W.tool_qualities)
		to_chat(user, SPAN_NOTICE("You begin to rechamber \the [src]."))
		if(loaded.len == 0 && W.use_tool(user, src, WORKTIME_NORMAL, QUALITY_SCREW_DRIVING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
			if(caliber == CAL_MAGNUM)
				caliber = CAL_PISTOL
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .35 Caliber."))
			else if(caliber == CAL_PISTOL)
				caliber = CAL_CLRIFLE
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .25 Caseless."))
			else if(caliber == CAL_CLRIFLE)
				caliber = CAL_MAGNUM
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .40 Magnum."))
		else
			to_chat(user, SPAN_WARNING("You cannot rechamber a loaded firearm!"))
			return
	..()
=======
	desc = "Handmade revolver, made from spare parts and some duct tape, will it even hold up?"
	icon = 'icons/obj/guns/projectile/handmade_revolver.dmi'
	icon_state = "handmade_revolver"//evan, temp icon
	caliber = CAL_MAGNUM
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_REVOLVER)
	max_shells = 6
	matter = list(MATERIAL_WOOD = 10, MATERIAL_STEEL = 15)
	price_tag = 100 //one of the cheapest revolvers here
	damage_multiplier = 1
	init_recoil = HANDGUN_RECOIL(0.8)
	serial_type = "INDEX"
	serial_shown = FALSE

	wield_delay = 0 SECOND
	gun_parts = list(/obj/item/part/gun/frame/revolver_handmade = 1, /obj/item/part/gun/grip/wood = 1, /obj/item/part/gun/mechanism/revolver/steel = 1, /obj/item/part/gun/barrel/magnum/steel = 1)

/obj/item/part/gun/frame/revolver_handmade
	name = "Handmade revolver frame"
	desc = "A handmade revolver. The second most ancient gun design, made with scrap and spit."
	icon_state = "frame_revolver_hm"
	matter = list(MATERIAL_STEEL = 5)
	resultvars = list(/obj/item/gun/projectile/revolver/handmade)
	gripvars = list(/obj/item/part/gun/grip/wood)
	mechanismvar = /obj/item/part/gun/mechanism/revolver/steel
	barrelvars = list(/obj/item/part/gun/barrel/pistol/steel, /obj/item/part/gun/barrel/magnum/steel, /obj/item/part/gun/barrel/kurtz/steel)	//9mm, 10mm, or 12mm
	nra = FALSE		//This controls if the weapon checks for barrels or not. If you want a gun to have MULTIPLE calibers that it can be chambered in, put FALSE.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
