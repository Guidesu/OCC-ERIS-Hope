/obj/item/gun/projectile/boltgun
<<<<<<< HEAD
	name = "Excelsior BR .30 \"Kardashev-Mosin\""
	desc = "Weapon for hunting, or endless trench warfare. \
			If you’re on a budget, it’s a darn good rifle for just about everything."
=======
	name = "\"Kardashev-Mosin\" boltgun"
	desc = "Weapon for hunting or endless trench warfare. \
			If you're on a budget, it's a darn good rifle for just about everything."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/guns/projectile/boltgun.dmi'
	icon_state = "boltgun"
	item_state = "boltgun"
	w_class = ITEM_SIZE_HUGE
	force = WEAPON_FORCE_ROBUST
<<<<<<< HEAD
	armor_penetration = ARMOR_PEN_DEEP
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	caliber = CAL_LRIFLE
	fire_delay = 12 // double the standart
	damage_multiplier = 1.4
	penetration_multiplier  = 1.5
	recoil_buildup = 40 //same as AMR
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 10
	ammo_type = /obj/item/ammo_magazine/lrifle
	fire_sound = 'sound/weapons/guns/fire/sniper_fire.ogg'
	reload_sound = 'sound/weapons/guns/interact/rifle_load.ogg'
	matter = list(MATERIAL_STEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 1600
	one_hand_penalty = 20 //full sized rifle with bayonet is hard to keep on target
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut") // Considering attached bayonet
	sharp = TRUE
	gun_parts = list(/obj/item/stack/material/steel = 16)
	saw_off = TRUE
	sawn = /obj/item/gun/projectile/boltgun/obrez
	var/bolt_open = 0
	var/item_suffix = ""

/obj/item/gun/projectile/boltgun/on_update_icon()
=======
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	caliber = CAL_RIFLE
	fire_delay = 2
	damage_multiplier = 1.1
	penetration_multiplier  = 1.5
	init_recoil = HMG_RECOIL(0.6)
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 10
	fire_sound = 'sound/weapons/guns/fire/mosin.ogg'
	reload_sound = 'sound/weapons/guns/interact/rifle_load.ogg'
	fire_sound_silenced = 'sound/weapons/guns/fire/silenced_rifle.ogg' // More cohesive sound, still loud for its caliber
	matter = list(MATERIAL_STEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 500
	var/bolt_open = 0
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut") // Considering attached bayonet
	sharp = TRUE //We have a knife!
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_BAYONET, GUN_SCOPE, GUN_SILENCABLE)
	saw_off = TRUE
	sawn = /obj/item/gun/projectile/boltgun/sawn/true
	var/bolt_training = TRUE
	eject_animatio = TRUE //we infact have bullet animations
	allow_racking = FALSE
	serial_type = "Hunter Inc"

	wield_delay = 0.3 SECOND
	wield_delay_factor = 0.2 // 20 vig
	gun_parts = list(/obj/item/part/gun/frame/boltgun = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/boltgun = 1, /obj/item/part/gun/barrel/lrifle = 1)

/obj/item/gun/projectile/boltgun/sawn //subtype for code
	name = "\"obrez\" mosin boltgun"
	desc = "A crudly mangled and sawn-down 7.62mm bolt action rifle. The rifle was fine."
	icon = 'icons/obj/guns/projectile/sawnoff/boltgun.dmi'
	icon_state = "obrez"
	item_state = "obrez"
	force = WEAPON_FORCE_NORMAL
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	price_tag = 75
	sharp = 0
	init_recoil = HMG_RECOIL(0.8)
	penetration_multiplier = 0.5
	damage_multiplier = 0.9
	fire_delay = 4
	gun_tags = list(GUN_PROJECTILE, GUN_INTERNAL_MAG, GUN_SILENCABLE)
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 4)
	saw_off = FALSE
	bolt_training = FALSE //Training didnt cover obrez
	gun_parts = list(/obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/boltgun = 1, /obj/item/part/gun/barrel/lrifle = 1)

/obj/item/gun/projectile/boltgun/sawn/true //used for the Kardashev-Mosin, so we dont cheat crafting menus

/obj/item/gun/projectile/boltgun/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (item_suffix)
		itemstring += "[item_suffix]"

	if (bolt_open)
		iconstring += "_open"
	else
		iconstring += "_closed"

<<<<<<< HEAD
=======
	if (silenced)
		iconstring += "_s"
		itemstring += "_s"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/boltgun/Initialize()
	. = ..()
	update_icon()

/obj/item/gun/projectile/boltgun/attack_self(mob/user) //Someone overrode attackself for this class, soooo.
	if(zoom)
		toggle_scope(user)
		return
	bolt_act(user)

<<<<<<< HEAD
=======
/obj/item/gun/projectile/boltgun/handle_post_fire(mob/user)
	..()
	if(bolt_training && user.stats.getPerk(PERK_BOLT_REFLECT) && loaded.len>0)
		to_chat(user, SPAN_NOTICE("Your hands move instinctively to chamber a new round!"))
		bolt_act(user)
		bolt_act(user)
		return
	if(bolt_training && user.stats.getPerk(PERK_BOLT_REFLECT) && loaded.len==0)
		to_chat(user, SPAN_NOTICE("You stop your hands from instinctively chambering a new round."))
		bolt_act(user)
		return

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/gun/projectile/boltgun/proc/bolt_act(mob/living/user)
	playsound(src.loc, 'sound/weapons/guns/interact/rifle_boltback.ogg', 75, 1)
	bolt_open = !bolt_open
	if(bolt_open)
<<<<<<< HEAD
		if(contents.len)
			if(chambered)
				to_chat(user, SPAN_NOTICE("You work the bolt open, ejecting [chambered]!"))
				chambered.forceMove(get_turf(src))
				loaded -= chambered
				chambered = null
			else
				var/obj/item/ammo_casing/B = loaded[loaded.len]
				to_chat(user, SPAN_NOTICE("You work the bolt open, ejecting [B]!"))
				B.forceMove(get_turf(src))
				loaded -= B
		else
			to_chat(user, SPAN_NOTICE("You work the bolt open."))
=======
		var/print_string = "You work the bolt open."
		if(loaded.len)
			if(chambered)
				if(eject_animatio && loaded.len) // Our bullet animation check
					if(silenced)
						flick("bullet_eject_s", src)
					else
						flick("bullet_eject", src)
					print_string = "You work the bolt open, ejecting [chambered]!"
					chambered.forceMove(get_turf(src))
					loaded -= chambered
					chambered = null
			else
				if(eject_animatio && loaded.len) // Our bullet animation check
					if(silenced)
						flick("bullet_eject_s", src)
					else
						flick("bullet_eject", src)
				if(LAZYLEN(loaded))
					var/obj/item/ammo_casing/B = loaded[loaded.len]
					print_string = "You work the bolt open, ejecting [B]!"
					B.forceMove(get_turf(src))
					loaded -= B

		to_chat(user, SPAN_NOTICE(print_string))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	else
		to_chat(user, SPAN_NOTICE("You work the bolt closed."))
		playsound(src.loc, 'sound/weapons/guns/interact/rifle_boltforward.ogg', 75, 1)
		bolt_open = 0
<<<<<<< HEAD
	add_fingerprint(user)
	update_icon()

=======
	if(user)
		add_fingerprint(user)
	update_icon()

/obj/item/gun/projectile/boltgun/process_chambered()
	..()
	if(LAZYLEN(loaded))
		var/obj/item/ammo_casing/B = loaded[1]
		if(B.is_caseless && !B.BB)
			loaded -= B
			QDEL_NULL(B)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/gun/projectile/boltgun/special_check(mob/user)
	if(bolt_open)
		to_chat(user, SPAN_WARNING("You can't fire [src] while the bolt is open!"))
		return 0
	return ..()

/obj/item/gun/projectile/boltgun/load_ammo(var/obj/item/A, mob/user)
<<<<<<< HEAD
	if(!bolt_open)
		return
=======
	if(istype(A, /obj/item/ammo_casing)) // Should prevent the following message while sawing down the gun or adding a mod. - Seb
		if(!bolt_open)
			to_chat(user, SPAN_WARNING("You cannot add in ammo to \the [src] while the bolt is closed!"))
			return
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()

/obj/item/gun/projectile/boltgun/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
<<<<<<< HEAD
		return
	..()

/obj/item/gun/projectile/boltgun/serbian
	name = "SA BR .30 \"Novakovic\""
	desc = "Weapon for hunting, or endless trench warfare. \
			If you’re on a budget, it’s a darn good rifle for just about everything. \
			This copy, in fact, is a reverse-engineered poor-quality copy of a more perfect copy of an ancient rifle"
	icon_state = "boltgun_wood"
	item_suffix  = "_wood"
	force = 23
	recoil_buildup = 0.4 // Double the excel variant
	matter = list(MATERIAL_STEEL = 20, MATERIAL_WOOD = 10)
	wielded_item_state = "_doble_wood"
	spawn_blacklisted = FALSE
	gun_parts = list(/obj/item/stack/material/steel = 16)
	sawn = /obj/item/gun/projectile/boltgun/obrez/serbian

/obj/item/gun/projectile/boltgun/handmade
	name = "handmade bolt action rifle"
	desc = "A handmade bolt action rifle, made from junk. and some spare parts."
	icon_state = "boltgun_hand"
	item_suffix = "_hand"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 5)
	wielded_item_state = "_doble_hand"
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BACK
	fire_delay = 17 // abit more than the serbian one
	damage_multiplier = 1
	penetration_multiplier = 1
	recoil_buildup = 40 //same as AMR
	max_shells = 5
	fire_sound = 'sound/weapons/guns/fire/sniper_fire.ogg'
	reload_sound = 'sound/weapons/guns/interact/rifle_load.ogg'
	price_tag = 800
	one_hand_penalty = 30 //don't you dare to one hand this
	sharp = FALSE //no bayonet here
	spawn_blacklisted = TRUE
	saw_off = FALSE

/obj/item/gun/projectile/boltgun/handmade/attackby(obj/item/W, mob/user)
	if(QUALITY_SCREW_DRIVING in W.tool_qualities)
		to_chat(user, SPAN_NOTICE("You begin to rechamber \the [src]."))
		if(loaded.len == 0 && W.use_tool(user, src, WORKTIME_NORMAL, QUALITY_SCREW_DRIVING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
			if(caliber == CAL_LRIFLE)
				caliber = CAL_SRIFLE
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .20 Caliber."))
			else if(caliber == CAL_SRIFLE)
				caliber = CAL_CLRIFLE
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .25 Caseless."))
			else if(caliber == CAL_CLRIFLE)
				caliber = CAL_LRIFLE
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .30 Caliber."))
		else
			to_chat(user, SPAN_WARNING("You cannot rechamber a loaded firearm!"))
			return
	..()



//// OBREZ ////

/obj/item/gun/projectile/boltgun/obrez
	name = "sawn-off Excelsior BR .30 \"Kardashev-Mosin\""
	desc = "Weapon for hunting, or endless trench warfare. \
	     This one has been sawed down into an \"Obrez\" style."
	icon = 'icons/obj/guns/projectile/obrez_bolt.dmi'
	icon_state = "obrez"
	item_state = "obrez"
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_PAINFUL
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	damage_multiplier = 0.7
	penetration_multiplier = 0.8
	recoil_buildup = 1.8
	matter = list(MATERIAL_STEEL = 10, MATERIAL_PLASTIC = 5)
	price_tag = 600
	attack_verb = list("struck","hit","bashed")
	one_hand_penalty = 15 //not a full rifle, but not easy either
	can_dual = TRUE
	sharp = FALSE
	spawn_blacklisted = TRUE
	saw_off = FALSE

/obj/item/gun/projectile/boltgun/obrez/serbian
	name = "sawn-off SA BR .30 \"Novakovic\""
	icon = 'icons/obj/guns/projectile/obrez_bolt.dmi'
	icon_state = "obrez_wood"
	item_suffix  = "_wood"
	recoil_buildup = 1.9
	wielded_item_state = "_doble_wood"
	matter = list(MATERIAL_STEEL = 10, MATERIAL_WOOD = 5)
=======
		to_chat(user, SPAN_WARNING("You can't take ammo out of \the [src] while the bolt is closed!"))
		return
	..()

/obj/item/part/gun/frame/boltgun
	name = "bolt-action rifle frame"
	desc = "A bolt-action rifle frame. For hunting or endless trench warfare."
	icon_state = "frame_serbrifle"
	result = /obj/item/gun/projectile/boltgun
	gripvars = list(/obj/item/part/gun/grip/black, /obj/item/part/gun/grip/wood)
	resultvars = list(/obj/item/gun/projectile/boltgun, /obj/item/gun/projectile/boltgun/sa)
	mechanismvar = /obj/item/part/gun/mechanism/boltgun
	barrelvars = list(/obj/item/part/gun/barrel/lrifle, /obj/item/part/gun/barrel/lrifle/steel) // Novakovic is cheap, Mosin is good barrel
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
