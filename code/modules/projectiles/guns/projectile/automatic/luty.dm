/obj/item/gun/projectile/automatic/luty
<<<<<<< HEAD
    name = "handmade SMG .35 Auto \"Luty\""
    desc = "A dead simple open-bolt automatic firearm, easily made and easily concealed.\
            A gun that has gone by many names, from the Grease gun to the Carlo to the Swedish K. \
            Some designs are too good to change."
    icon = 'icons/obj/guns/projectile/luty.dmi'
    icon_state = "luty"
    item_state = "luty"

    w_class = ITEM_SIZE_NORMAL
    can_dual = TRUE
    caliber = CAL_PISTOL
    slot_flags = SLOT_BELT|SLOT_HOLSTER
    ammo_type = /obj/item/ammo_casing/pistol
    load_method = MAGAZINE
    mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL|MAG_WELL_SMG
    magazine_type = /obj/item/ammo_magazine/smg

    init_firemodes = list(
        FULL_AUTO_400,
        SEMI_AUTO_NODELAY,
        )

    can_dual = 1
    damage_multiplier = 0.7
    penetration_multiplier = 0.9
    recoil_buildup = 1
    one_hand_penalty = 5 //SMG level.
    spawn_blacklisted = TRUE

    origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
    matter = list(MATERIAL_STEEL = 15, MATERIAL_WOOD = 10)
    gun_parts = list(/obj/item/part/gun = 2 ,/obj/item/stack/material/steel = 15)

/obj/item/gun/projectile/automatic/luty/on_update_icon()
    cut_overlays()
    icon_state = "[initial(icon_state)][safety ? "_safe" : ""]"
    if(ammo_magazine)
        add_overlays("mag[ammo_magazine.ammo_color]")
=======
	name = "Homemade \"Luty\" SMG"
	desc = "A dead simple open-bolt automatic firearm, easily made and easily concealed.\
			A gun that has gone by many names, from the STEN gun to the Carlo to the Swedish K. \
			Some designs are too good to change."
	icon = 'icons/obj/guns/projectile/luty.dmi'
	icon_state = "luty"
	item_state = "luty"
	w_class = ITEM_SIZE_NORMAL
	can_dual = TRUE
	caliber = CAL_PISTOL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/pistol_35
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL|MAG_WELL_H_PISTOL|MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 5, MATERIAL_WOOD = 12)
	init_firemodes = list(
		FULL_AUTO_300,
		SEMI_AUTO_NODELAY,
		)
	can_dual = 1
	damage_multiplier = 0.8
	penetration_multiplier = 0.6
	init_recoil = SMG_RECOIL(0.6)
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	serial_type = "INDEX"
	serial_shown = FALSE
	gun_tags = list(GUN_PROJECTILE, GUN_SILENCABLE, GUN_CALIBRE_9MM, GUN_MAGWELL)
	gun_parts = list(/obj/item/part/gun/frame/luty = 1, /obj/item/part/gun/grip/wood = 1, /obj/item/part/gun/mechanism/smg/steel = 1, /obj/item/part/gun/barrel/pistol/steel = 1)

	wield_delay = 0 // No delay for this , its litteraly a junk gun

/obj/item/part/gun/frame/luty
	name = "Luty frame"
	desc = "A Luty SMG. It rattles a bit, but it's okay. Just don't shake it too hard."
	icon_state = "frame_luty"
	matter = list(MATERIAL_STEEL = 5)
	resultvars = list(/obj/item/gun/projectile/automatic/luty)
	gripvars = list(/obj/item/part/gun/grip/wood)
	mechanismvar = /obj/item/part/gun/mechanism/smg/steel
	barrelvars = list(/obj/item/part/gun/barrel/pistol/steel, /obj/item/part/gun/barrel/magnum/steel)	//9mm or 10mm.
	nra = FALSE		//This controls if the weapon checks for barrels or not. If you want a gun to have MULTIPLE calibers that it can be chambered in, put FALSE.

/obj/item/gun/projectile/automatic/luty/update_icon()
	..()
	cut_overlays()

	var/iconstring = initial(icon_state)

	iconstring = "[initial(icon_state)][safety ? "_safe" : ""]"

	if (ammo_magazine)
		iconstring += "-full"

	if (silenced)
		iconstring += "_s"

	icon_state = iconstring
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/gun/projectile/automatic/luty/Initialize()
	. = ..()
	update_icon()

/obj/item/gun/projectile/automatic/luty/toggle_safety()
<<<<<<< HEAD
    . = ..()
    update_icon()

/obj/item/gun/projectile/automatic/luty/attackby(obj/item/W, mob/user)
	if(QUALITY_SCREW_DRIVING in W.tool_qualities)
		to_chat(user, SPAN_NOTICE("You begin to rechamber \the [src]."))
		if(!ammo_magazine && W.use_tool(user, src, WORKTIME_NORMAL, QUALITY_SCREW_DRIVING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
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
	. = ..()
	update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
