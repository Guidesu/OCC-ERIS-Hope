/obj/item/gun/projectile/automatic/ak47
<<<<<<< HEAD
	name = "Excelsior .30 AKMS"
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
		 This is a copy of an ancient semi-automatic rifle chambered for .30 Rifle. If it won't fire, percussive maintenance should get it working again. \
		 It is known for its easy maintenance, and low price. This gun is not in active military service anymore, but has become ubiquitous among criminals and insurgents. \
		 This is a high-quality copy, which has an automatic fire mode."
	icon = 'icons/obj/guns/projectile/ak/excel.dmi'
	icon_state = "AK"
	item_state = "AK"
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_LRIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_COVERT = 4)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	magazine_type = /obj/item/ammo_magazine/lrifle
=======
	name = "Excelsior \"Kalashnikov\" rifle"
	desc = "\"We stand for organised terror - this should be frankly admitted. Terror is an absolute necessity during times of revolution.\"\
		 A copy of the Kalashnikov pattern, shortened into a mid-length rifle and chambered in 7.62mm. This is an abysmal, printed copy."
	icon = 'icons/obj/guns/projectile/ak.dmi'
	icon_state = "AK"
	item_state = "AK"
	item_suffix = ""
	excelsior = TRUE
	w_class = ITEM_SIZE_BULKY
	force = WEAPON_FORCE_PAINFUL
	caliber = CAL_RIFLE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 4)
	slot_flags = SLOT_BACK
	load_method = SINGLE_CASING|MAGAZINE
	mag_well = MAG_WELL_RIFLE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 1000
	fire_sound = 'sound/weapons/guns/fire/ak.ogg'
	unload_sound 	= 'sound/weapons/guns/interact/ltrifle_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/ltrifle_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/ltrifle_cock.ogg'
<<<<<<< HEAD
	recoil_buildup = 10
	one_hand_penalty = 15 //automatic rifle level
	spawn_blacklisted = TRUE
	gun_parts = list(/obj/item/part/gun = 3 ,/obj/item/stack/material/plasteel = 7)

	init_firemodes = list(
		FULL_AUTO_400,
		SEMI_AUTO_NODELAY,
		BURST_5_ROUND
=======
	damage_multiplier = 1.2 //the uncheap
	init_recoil = RIFLE_RECOIL(0.8)
	gun_tags = list(GUN_PROJECTILE, GUN_SCOPE, GUN_MAGWELL)

	gun_parts = list(/obj/item/part/gun/frame/ak47 = 1, /obj/item/part/gun/grip/excel = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/lrifle = 1)

	init_firemodes = list(
		FULL_AUTO_300,
		SEMI_AUTO_NODELAY
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		)
	serial_type = "EXC"

<<<<<<< HEAD
	var/folded = FALSE

/obj/item/gun/projectile/automatic/ak47/on_update_icon()
	..()

=======
//AK-47 base-frame
/obj/item/part/gun/frame/ak47
	name = "AK frame"
	desc = "An AK rifle frame. The eternal firearm."
	icon_state = "frame_ak"
	matter = list(MATERIAL_PLASTEEL = 8)
	result = /obj/item/gun/projectile/automatic/ak47/sa
	gripvars = list(/obj/item/part/gun/grip/excel, /obj/item/part/gun/grip/serb, /obj/item/part/gun/grip/black, /obj/item/part/gun/grip/rubber)
	resultvars = list(/obj/item/gun/projectile/automatic/ak47, /obj/item/gun/projectile/automatic/ak47/sa, /obj/item/gun/projectile/automatic/ak47/NM_colony, /obj/item/gun/projectile/automatic/ak47/sa/tac)
	mechanismvar = /obj/item/part/gun/mechanism/autorifle
	barrelvars = list(/obj/item/part/gun/barrel/lrifle)

/obj/item/gun/projectile/automatic/ak47/NM_colony
	name = "polymer \"Kalashnikov\" rifle"
	desc = " A copy of the Kalashnikov pattern, shortened into a mid-length rifle and chambered in 7.62mm. \nThis abysmal, printed copy of a Kalashnikov has been reclaimed and repurposed by Nadezhda Marshals, making it free of Excelsior taint."
	excelsior = FALSE
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1)
	price_tag = 800
	serial_type = "NM"
	gun_parts = list(/obj/item/part/gun/frame/ak47 = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/lrifle = 1)

/obj/item/gun/projectile/automatic/ak47/update_icon()
	..()

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "[ammo_magazine? "_mag[ammo_magazine.max_ammo]": ""]"
		itemstring += "_full"

	if(wielded)
		itemstring += "_doble"

<<<<<<< HEAD
	if(folded)
		iconstring += "_f"
		itemstring += "_f"

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/gun/projectile/automatic/ak47/Initialize()
	. = ..()
	update_icon()

<<<<<<< HEAD
//////////////////////////////////////////SA//////////////////////////////////////////

/obj/item/gun/projectile/automatic/ak47/sa
	name = "SA Car .30 \"Krinkov\""					// US nickname for AKSu
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
			This is a copy of an ancient semi-automatic rifle chambered for .30 Rifle. If it won't fire, percussive maintenance should get it working again. \
			It is known for its easy maintenance, and low price. This gun is not in active military service anymore, but has become ubiquitous among criminals and insurgents. \
			This shortened rifle was made specifically for boarding actions with a folding stock and short barrel."
	icon = 'icons/obj/guns/projectile/ak/krinkov.dmi'
	w_class = ITEM_SIZE_BULKY	//small rifle, also because it's basically an smg now
	recoil_buildup = 1.5
	damage_multiplier = 0.9 //Better control, worse damage
	penetration_multiplier = 1.2

	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)

	price_tag = 3500

/obj/item/gun/projectile/automatic/ak47/sa/CtrlShiftClick()
	. = ..()

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return

	fold()


/obj/item/gun/projectile/automatic/ak47/sa/verb/quick_fold()
	set name = "Fold or Unfold Stock"
	set category = "Object"
	set src in view(1)

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return
	fold()

/obj/item/gun/projectile/automatic/ak47/sa/proc/fold()

	if(folded)
		to_chat(usr, SPAN_NOTICE("You unfold the stock on the [src]."))
		recoil_buildup = 1.5
		w_class = ITEM_SIZE_BULKY
		folded = FALSE
	else
		to_chat(usr, SPAN_NOTICE("You fold the stock on the [src]."))
		recoil_buildup = 1.8
		w_class = ITEM_SIZE_NORMAL
		folded = TRUE

	playsound(src.loc, 'sound/weapons/guns/interact/selector.ogg', 100, 1)
	update_icon()

//////////////////////////////////////////FS//////////////////////////////////////////

/obj/item/gun/projectile/automatic/ak47/fs
	name = "FS AR .30 \"Vipr\""						// Vipr like a play on Viper and Vepr
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
			This is a copy of an ancient semi-automatic rifle chambered for .30 Rifle. If it won't fire, percussive maintenance should get it working again. \
			It is known for its easy maintenance, and low price. This gun is not in active military service anymore, but has become ubiquitous among criminals and insurgents. \
			This cheap copy has been made to look as least militaristic as possible to be sold to as many civilian populations as possible."
	icon = 'icons/obj/guns/projectile/ak/vipr.dmi'
	w_class = ITEM_SIZE_HUGE
	recoil_buildup = 1.5	//Heavy, semi-auto and burst only
	damage_multiplier = 1.1	//Long barrels help you get more out of a round.

	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 3000
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	init_firemodes = list(
	SEMI_AUTO_NODELAY,
	BURST_3_ROUND,
	BURST_5_ROUND
	)

	price_tag = 2000
	spawn_tags = SPAWN_TAG_FS_PROJECTILE
	spawn_blacklisted = FALSE



//////////////////////////////////////////IH//////////////////////////////////////////

/obj/item/gun/projectile/automatic/ak47/fs/ih
	name = "FS AR .30 \"Venger\""						// From a song
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
			This is a copy of an ancient semi-automatic rifle chambered for .30 Rifle. If it won't fire, percussive maintenance should get it working again. \
			It is known for its easy maintenance, and low price. This gun is not in active military service anymore, but has become ubiquitous among criminals and insurgents. \
			This rifle is from the Frozen Star's Planetary Defence line. Painted in IH blue and black, with a folding stock so it can be stored compactly for years without use."
	icon = 'icons/obj/guns/projectile/ak/venger.dmi'
	spawn_blacklisted = TRUE
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)

/obj/item/gun/projectile/automatic/ak47/fs/ih/CtrlShiftClick()
	. = ..()

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return

	fold()

/obj/item/gun/projectile/automatic/ak47/fs/ih/verb/quick_fold()	//Easier to redo the proc than redo everything else
	set name = "Fold or Unfold Stock"
	set category = "Object"
	set src in view(1)

	if((!ishuman(usr) && (src.loc != usr)) || usr.stat || usr.restrained())
		return
	fold()

/obj/item/gun/projectile/automatic/ak47/fs/ih/proc/fold()

	if(folded)
		to_chat(usr, SPAN_NOTICE("You unfold the stock on the [src]."))
		recoil_buildup = 1.5
		w_class = ITEM_SIZE_HUGE
		folded = FALSE
	else
		to_chat(usr, SPAN_NOTICE("You fold the stock on the [src]."))
		recoil_buildup = 1.8
		w_class = ITEM_SIZE_BULKY
		folded = TRUE

	playsound(src.loc, 'sound/weapons/guns/interact/selector.ogg', 100, 1)
	update_icon()

//////////////////////////////////////////Makeshift//////////////////////////////////////////

/obj/item/gun/projectile/automatic/ak47/makeshift
	name = "Makeshift AR .30 \"Kalash\""
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
			This is a copy of an ancient semi-automatic rifle chambered for .30 Rifle. If it won't fire, percussive maintenance should get it working again. \
			It is known for its easy maintenance, and low price. This gun is not in active military service anymore, but has become ubiquitous among criminals and insurgents. \
			This crude copy shows just how forgiving the design can be."
	icon = 'icons/obj/guns/projectile/ak/kalash.dmi'
	w_class = ITEM_SIZE_HUGE
	recoil_buildup = 1.6	//Full size, but cheap

	origin_tech = list(TECH_COMBAT = 2)	//bad copies don't give good science
	matter = list(MATERIAL_STEEL = 20, MATERIAL_WOOD = 10)

	init_firemodes = list(
		SEMI_AUTO_NODELAY	//too poorly made for burst or automatic
	)

	price_tag = 500

/obj/item/gun/projectile/automatic/ak47/makeshift/attackby(obj/item/W, mob/user)
	if(QUALITY_SCREW_DRIVING in W.tool_qualities)
		to_chat(user, SPAN_NOTICE("You begin to rechamber \the [src]."))
		if(!ammo_magazine && W.use_tool(user, src, WORKTIME_NORMAL, QUALITY_SCREW_DRIVING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
			if(caliber == CAL_LRIFLE)
				caliber = CAL_SRIFLE
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .20 Caliber."))
			else if(caliber == CAL_SRIFLE)
				caliber = CAL_CLRIFLE
				mag_well = MAG_WELL_IH
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .25 Caseless."))
			else if(caliber == CAL_CLRIFLE)
				caliber = CAL_LRIFLE
				mag_well = MAG_WELL_RIFLE
				to_chat(user, SPAN_WARNING("You successfully rechamber \the [src] to .30 Caliber."))
		else
			to_chat(user, SPAN_WARNING("You cannot rechamber a loaded firearm!"))
			return
	..()
=======
/obj/item/gun/projectile/automatic/ak47/saiga
	name = "Excelsior \"Saiga 12\" shotgun"
	desc = "\"Let the ruling classes tremble at a Communistic revolution. The proletarians have nothing to lose but their chains. They have a world to win...\"\nA bulked up and modified version of the Kalashnikov made to fire 20mm shotgun shells, taking magazines similar to the Sol Federation SBAW design."
	icon = 'icons/obj/guns/projectile/saiga12.dmi'
	icon_state = "saiga"
	item_state = "saiga"
	fire_sound = 'sound/weapons/guns/fire/shotgun.ogg'
	excelsior = TRUE
	caliber = CAL_SHOTGUN
	origin_tech = list(TECH_COMBAT = 9, TECH_MATERIAL = 1, TECH_ILLEGAL = 4)
	mag_well = MAG_WELL_RIFLE|MAG_WELL_DRUM // Saigas do have drum mags
	init_recoil = RIFLE_RECOIL(1.3)
	serial_type = "EXC"
	gun_parts = list(/obj/item/part/gun/frame/saiga = 1, /obj/item/part/gun/grip/excel = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/shotgun = 1)

/obj/item/gun/projectile/automatic/ak47/saiga/NM_colony
	name = "\"Saigini 12\" shotgun"
	desc = "A bulked up and modified version of the Kalashnikov made to fire 20mm shotgun shells, taking magazines similar to the Sol Federation SBAW design. \nThis model of the \"Saiga\" shotgun has been reclaimed and repurposed by Nadezhda Marshals, making it free of Excelsior taint."
	icon_state = "saiga-bs"
	item_state = "saiga-bs"
	penetration_multiplier = 0.9 //Non-Excelsior varient, it's powerful as is. Pug on crack.
	excelsior = FALSE
	origin_tech = list(TECH_COMBAT = 9, TECH_MATERIAL = 1)
	price_tag = 800
	serial_type = "NM"
	gun_parts = list(/obj/item/part/gun/frame/saiga = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/shotgun = 1)

//AK-47 base-frame
/obj/item/part/gun/frame/saiga
	name = "Saiga frame"
	desc = "A Saiga shotgun frame. Based off the timeless AK design."
	icon_state = "frame_ak"
	matter = list(MATERIAL_PLASTEEL = 8)
	result = /obj/item/gun/projectile/automatic/ak47/saiga
	gripvars = list(/obj/item/part/gun/grip/excel, /obj/item/part/gun/grip/black)
	resultvars = list(/obj/item/gun/projectile/automatic/ak47/saiga, /obj/item/gun/projectile/automatic/ak47/saiga/NM_colony)
	mechanismvar = /obj/item/part/gun/mechanism/autorifle
	barrelvars = list(/obj/item/part/gun/barrel/shotgun)

/obj/item/gun/projectile/automatic/ak47/sa
	name = "\"Kalashnikov\" rifle"
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
		 A copy of the AKM pattern, shortened into a mid-length rifle and chambered in 7.62mm. The left arm of the unfree world."
	icon = 'icons/obj/guns/projectile/ak_wood.dmi'
	icon_state = "AK"
	item_state = "AK"
	excelsior = FALSE
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_WOOD = 10)
	price_tag = 900
	init_recoil = RIFLE_RECOIL(0.9)
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	saw_off = TRUE
	sawn = /obj/item/gun/projectile/automatic/ak47/sa/sawn
	serial_type = "SA"
	gun_parts = list(/obj/item/part/gun/frame/ak47 = 1, /obj/item/part/gun/grip/serb = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/lrifle = 1)

/obj/item/gun/projectile/automatic/ak47/sa/sawn
	name = "sawn-off \"Kalashnikov\" rifle"
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
	A copy of the AKM pattern chambered in 7.62mm and crudely sawed down to a shadow of its former self. Rifle was fine. Was."
	icon = 'icons/obj/guns/projectile/sawnoff/ak.dmi'
	icon_state = "AK"
	item_state = "AK"
	excelsior = FALSE
	w_class = ITEM_SIZE_NORMAL
	force = WEAPON_FORCE_NORMAL
	matter = list(MATERIAL_PLASTEEL = 15, MATERIAL_WOOD = 5)
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	price_tag = 800
	init_recoil = RIFLE_RECOIL(1)
	damage_multiplier = 1
	saw_off = FALSE
	serial_type = "SA"
	wield_delay = 0.8 SECOND
	wield_delay_factor = 0.2 // 20 vig for insta wield

/obj/item/gun/projectile/automatic/ak47/sa/tac
	name = "Breacher \"Kalashnikov\" rifle"
	desc = "The breacher, or the 'tactical' variant of the AKM pattern Kalash is rather similar to its basic counterparts. \
	Sporting a polymer frame, this Kalash also comes kitted with an internally loaded shotgun attachment to its underbarrel. \
	Comfortable to shoot, versatile, and able to clear a room with ease."
	icon = 'icons/obj/guns/projectile/ak_tact.dmi'
	icon_state = "AK"
	item_state = "AK"
	price_tag = 1250
	init_recoil = RIFLE_RECOIL(0.8)
	saw_off = FALSE
	serial_type = "SA"
	gun_parts = list(/obj/item/part/gun/frame/ak47 = 1, /obj/item/part/gun/grip/rubber = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/lrifle = 1)

	var/obj/item/gun/projectile/automatic/underslung/shotgun_3/shotgun
	init_firemodes = list(
		FULL_AUTO_300,
		SEMI_AUTO_NODELAY,
		list(mode_name="fire shotgun", mode_desc="Shoot the underbarrel shotgun",  burst=null, fire_delay=null, move_delay=null,  icon="grenade", use_launcher=1)
		)
	gun_parts = list(/obj/item/part/gun/frame/ak47 = 1, /obj/item/part/gun/grip/rubber = 1, /obj/item/part/gun/mechanism/autorifle = 1, /obj/item/part/gun/barrel/lrifle = 1)

/obj/item/gun/projectile/automatic/ak47/sa/tac/Initialize()
	. = ..()
	shotgun = new(src)

/obj/item/gun/projectile/automatic/ak47/sa/tac/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	var/datum/firemode/cur_mode = firemodes[sel_mode]

	if(cur_mode.settings["use_launcher"])
		//We trigger like this three times, and then if nothing is inside the pistol swap back to are normal shotgun mode
		shotgun.Fire(target, user, params, pointblank, reflex)
		if(!shotgun.contents)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/gun/projectile/automatic/ak47/sa/tac/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/ammo_casing/shotgun)))
		shotgun.load_ammo(I, user)
	else
		..()

/obj/item/gun/projectile/automatic/underslung/shotgun_3
	name = "built in shotgun"
	desc = "Not much more than a tube and a firing mechanism, this shotgun is designed to be fitted to another gun."
	fire_sound = 'sound/weapons/guns/fire/shotgun.ogg'
	bulletinsert_sound = 'sound/weapons/guns/interact/shotgun_insert.ogg'
	w_class = ITEM_SIZE_NORMAL
	matter = null
	force = 5
	max_shells = 3
	init_recoil = RIFLE_RECOIL(1.2)
	safety = FALSE
	twohanded = FALSE
	load_method = SINGLE_CASING
	ammo_type = /obj/item/ammo_casing/shotgun
	caliber = CAL_SHOTGUN
	handle_casings = EJECT_CASINGS
	serial_type = "SA"
	init_firemodes = list(
		list(mode_name = "semiauto",  mode_desc = "Fire as fast as you can pull the trigger", burst=1, fire_delay=2.5, move_delay=null, icon="semi"),
		)

/obj/item/gun/projectile/automatic/ak47/makeshift
	name = "Homemade \"Kalashnikov\" rifle"
	desc = "Weapon of the oppressed, oppressors, and extremists of all flavours. \
			This is a copy of an ancient semi-automatic rifle chambered for 7.62mm. If it won't fire, percussive maintenance should get it working again. \
			It is known for its easy maintenance, and low price. This gun is not in active military service anymore, but has become ubiquitous among criminals and insurgents. \
			This crude copy shows just how forgiving the design can be."
	icon = 'icons/obj/guns/projectile/ak_homemade.dmi'
	w_class = ITEM_SIZE_HUGE
	init_recoil = RIFLE_RECOIL(0.7)
	mag_well = MAG_WELL_RIFLE
	excelsior = FALSE
	gun_parts = list(/obj/item/part/gun = 3 ,/obj/item/stack/material/plasteel = 7)

	origin_tech = list(TECH_COMBAT = 2)	//bad copies don't give good science
	matter = list(MATERIAL_STEEL = 20, MATERIAL_WOOD = 10)
	damage_multiplier = 1.1
	penetration_multiplier = 0.8

	init_firemodes = list(
		SEMI_AUTO_NODELAY	//too poorly made for burst or automatic
	)
	matter = list(MATERIAL_STEEL = 22, MATERIAL_PLASTEEL = 18, MATERIAL_PLASTIC = 5, MATERIAL_WOOD = 12)
	price_tag = 500
	serial_type = "INDEX"
	serial_shown = FALSE
	gun_parts = list(/obj/item/part/gun/frame/kalash = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/autorifle/steel = 1, /obj/item/part/gun/barrel/lrifle/steel = 1)

/obj/item/gun/projectile/automatic/ak47/makeshift/update_icon()
	..()

	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if(ammo_magazine)
		add_overlay("_mag[ammo_magazine.max_ammo]")
	else
		cut_overlays()
		return

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

/obj/item/part/gun/frame/kalash
	name = "Homemade Kalash frame"
	desc = "A homemade Kalash rifle frame. Cobbled together, but as good as new. Sort of."
	icon_state = "frame_kalash"
	matter = list(MATERIAL_STEEL = 10)
	resultvars = list(/obj/item/gun/projectile/automatic/ak47/makeshift)
	gripvars = list(/obj/item/part/gun/grip/black)
	mechanismvar = /obj/item/part/gun/mechanism/autorifle/steel
	barrelvars = list(/obj/item/part/gun/barrel/lrifle/steel, /obj/item/part/gun/barrel/srifle/steel)	//6.5mm or 7.62mm.
	nra = FALSE		//This controls if the weapon checks for barrels or not. If you want a gun to have MULTIPLE calibers that it can be chambered in, put FALSE.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
