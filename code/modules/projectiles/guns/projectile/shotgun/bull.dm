/obj/item/gun/projectile/shotgun/bull
<<<<<<< HEAD
	name = "FS SG \"Bull\""
	desc = "A \"Frozen Star\" double-barreled pump-action shotgun. Marvel of engineering, this gun is often used by Aegis tactical units. \
			Due to shorter than usual barrels, damage are somewhat lower and recoil kicks slightly harder, but possibility to fire two barrels at once overshadows all bad design flaws."
	icon = 'icons/obj/guns/projectile/bull.dmi'
	icon_state = "bull"
	item_state = "bull"
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = HOLD_CASINGS
	max_shells = 7
	w_class = ITEM_SIZE_HUGE
=======
	name = "\"Bull\" shotgun"
	desc = "A \"Holland & Sullivan\" double-barreled pump-action shotgun. A nightmare of engineering, this gun is often regarded as one of the worst firearms ever produced. \
			Due to shorter than usual barrels, damages are somewhat lower and recoil suffers as a result. The ability to fire both barrels at once seems more of a gimmick than a feature. \
			A number of scratches marr the finish by the ejection ports."
	icon = 'icons/obj/guns/projectile/PeaceWalker.dmi'
	icon_state = "PeaceWalker"
	item_state = "PW"
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = HOLD_CASINGS
	max_shells = 7
	w_class = ITEM_SIZE_BULKY
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	force = WEAPON_FORCE_PAINFUL
	flags = CONDUCT
	slot_flags = SLOT_BACK
	caliber = CAL_SHOTGUN
	var/reload = 1
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 4)
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 6)
<<<<<<< HEAD
	damage_multiplier = 0.75
	penetration_multiplier = 0.75
	one_hand_penalty = 10 //compact shotgun level
=======
	price_tag = 1000
	damage_multiplier = 0.75
	penetration_multiplier = 0.75
	init_recoil = RIFLE_RECOIL(1.8)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	burst_delay = null
	fire_delay = null
	bulletinsert_sound = 'sound/weapons/guns/interact/shotgun_insert.ogg'
	fire_sound = 'sound/weapons/guns/fire/max_sawn_off.ogg' // It's a double barrel, gets a double barrel sound
	move_delay = null
	init_firemodes = list(
<<<<<<< HEAD
		list(mode_name="fire one barrel at a time", burst=1, icon="semi"),
		list(mode_name="fire both barrels at once", burst=2, icon="burst"),
=======
		list(mode_name="Single barrel", mode_desc="Shoots one barrel", burst=1, icon="semi"),
		list(mode_name="Double barrel", mode_desc="Shoots both barrels at once", burst=2, icon="burst"),
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		)
	serial_type = "H&S"

<<<<<<< HEAD
	spawn_tags = SPANW_TAG_FS_SHOTGUN
	price_tag = 2000 //gives tactical advantage with beanbags, but consumes more ammo and hits less harder with lethal ammo, so Gladstone or Regulator would be better for lethal takedowns in general
=======
	wield_delay = 0.9 SECOND
	wield_delay_factor = 0.2 // 40 vig
	gun_parts = list(/obj/item/part/gun/frame/bull = 1, /obj/item/part/gun/grip/rubber = 1, /obj/item/part/gun/mechanism/shotgun = 1, /obj/item/part/gun/barrel/shotgun = 1)

/obj/item/part/gun/frame/bull
	name = "Bull frame"
	desc = "A Bull shotgun frame. Double-barrel and pump action, through a miracle of engineering."
	icon_state = "frame_bull"
	result = /obj/item/gun/projectile/shotgun/bull
	resultvars = list(/obj/item/gun/projectile/shotgun/bull)
	gripvars = list(/obj/item/part/gun/grip/rubber)
	mechanismvar = /obj/item/part/gun/mechanism/shotgun
	barrelvars = list(/obj/item/part/gun/barrel/shotgun)

/obj/item/gun/projectile/shotgun/bull/bison
	name = "\"Bison\" shotgun"
	desc = "A \"Holland & Sullivan\" double-barreled pump-action shotgun. A nightmare of engineering turned sleek room-clearer by the Artificers guild. Its snub barrel reinforced and lengthened, \
			 a proper stock affixed and even the poorly machined lower given a bit of TLC. A work of true artifice."
	icon = 'icons/obj/guns/projectile/bigpeacewalker.dmi'
	icon_state = "bigpeacewalker"
	item_state = "PW"
	w_class = ITEM_SIZE_HUGE
	max_shells = 8
	matter = list(MATERIAL_PLASTEEL = 25, MATERIAL_PLASTIC = 10)
	price_tag = 1500
	damage_multiplier = 0.9
	penetration_multiplier = 0.9
	init_recoil = RIFLE_RECOIL(1.6)
	serial_type = "AG"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/gun/projectile/shotgun/bull/proc/pump(mob/M as mob)
	var/turf/newloc = get_turf(src)
	playsound(M, 'sound/weapons/shotgunpump.ogg', 60, 1)
	if(chambered)
		if(!chambered.BB)
			chambered.forceMove(newloc) //Eject casing
			chambered = null
	if(!chambered)
		if(loaded.len)
			var/obj/item/ammo_casing/AC = loaded[1] //load next casing.
			loaded -= AC //Remove casing from loaded list.
			chambered = AC
			if(chambered.BB != null)
				reload = 0
	update_icon()

/obj/item/gun/projectile/shotgun/bull/consume_next_projectile()
	if (chambered)
		return chambered.BB
	return null

/obj/item/gun/projectile/shotgun/bull/handle_post_fire()
	..()
	var/turf/newloc = get_turf(src)
	if(chambered)
		chambered.forceMove(newloc) //Eject casing
		chambered = null
		if(!reload)
			if(loaded.len)
				var/obj/item/ammo_casing/AC = loaded[1] //load next casing.
				loaded -= AC //Remove casing from loaded list.
				chambered = AC
	reload = 1

/obj/item/gun/projectile/shotgun/bull/unload_ammo(user, allow_dump)
	var/turf/newloc = get_turf(src)
	if(chambered)
		chambered.forceMove(newloc) //Eject casing
		chambered = null
		reload = 1
	..(user, allow_dump=1)

/obj/item/gun/projectile/shotgun/bull/attack_self(mob/user as mob)
	if(reload)
		if(wielded)
			pump(user)
		else if (world.time >= recentpumpmsg + 5)
			to_chat(user, SPAN_WARNING("You need to wield this gun to pump it!"))
			recentpumpmsg = world.time
	else
		if(firemodes.len > 1)
			..()
		else
			unload_ammo(user)

<<<<<<< HEAD
/obj/item/gun/projectile/shotgun/bull/proc/update_charge()
	var/ratio = get_ammo() / (max_shells + 1)//1 in the chamber
	ratio = round(ratio, 0.25) * 100
	add_overlays("[ratio]_PW")
=======
/obj/item/gun/projectile/shotgun/bull/bison/attack_self(mob/user as mob)
	if(reload)
		if(world.time >= recentpumpmsg + 10)
			pump(user)
			recentpumpmsg = world.time

	else
		if(firemodes.len > 1)
			..()
		else
			unload_ammo(user)


/obj/item/gun/projectile/shotgun/bull/proc/update_charge()
	var/ratio = get_ammo() / (max_shells + 1)//1 in the chamber
	ratio = round(ratio, 0.25) * 100
	add_overlay("[ratio]_PW")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/gun/projectile/shotgun/bull/on_update_icon()
	..()

<<<<<<< HEAD
	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if(wielded)
		itemstring += "_doble"

	icon_state = iconstring
	set_item_state(itemstring)
=======
/obj/item/gun/projectile/shotgun/bull/update_icon()
	..()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	cut_overlays()
	update_charge()
	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if(wielded)
		itemstring += "_doble"

	icon_state = iconstring
	set_item_state(itemstring)
