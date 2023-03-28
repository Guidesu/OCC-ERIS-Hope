/obj/item/gun/projectile/gyropistol
<<<<<<< HEAD
	name = "NT GP \"Zeus\""
	desc = "A bulky pistol designed to fire self-propelled rounds."
	icon = 'icons/obj/guns/projectile/gyropistol.dmi'
	icon_state = "gyropistol"
	item_state = "pistol"
	fire_sound = 'sound/weapons/guns/fire/hpistol_fire.ogg'
	can_dual = 1
	origin_tech = list(TECH_COMBAT = 3)
=======
	name = "SA GP \"Novichok\""
	desc = "A bulky pistol designed to fire 19mm self-propelled explosive rockets. Commonly referred to as the 'man-opener' by Void Wolves."
	icon = 'icons/obj/guns/projectile/gyropistol.dmi'
	icon_state = "gyropistol"
	item_state = "pistol"
	caliber = CAL_70
	fire_sound = 'sound/weapons/guns/fire/ubgl.ogg'
	can_dual = TRUE
	origin_tech = list(TECH_COMBAT = 6)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	matter = list(MATERIAL_PLASTEEL = 12, MATERIAL_PLASTIC = 6)
	price_tag = 1500
	ammo_type = "/obj/item/ammo_casing/a75"
<<<<<<< HEAD
	caliber = CAL_70
	load_method = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/a75
	auto_eject = 1
	recoil_buildup = 0.1 //self-propelled rounds, basically almost no recoil
=======
	load_method = SINGLE_CASING|MAGAZINE //Nothing bad will happen
	mag_well = MAG_WELL_PISTOL
	magazine_type = /obj/item/ammo_magazine/a75
	auto_eject = 1
	init_recoil = HANDGUN_RECOIL(0.1)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	unload_sound 	= 'sound/weapons/guns/interact/hpistol_magout.ogg'
	reload_sound 	= 'sound/weapons/guns/interact/hpistol_magin.ogg'
	cocked_sound 	= 'sound/weapons/guns/interact/hpistol_cock.ogg'
	serial_type = "SA"

<<<<<<< HEAD
/obj/item/gun/projectile/gyropistol/on_update_icon()
=======
	wield_delay = 1 SECOND
	wield_delay_factor = 0.6 // 60 vig

/obj/item/gun/projectile/gyropistol/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	var/iconstring = initial(icon_state)
	var/itemstring = ""

	if (ammo_magazine)
		iconstring += "_mag"

	if (!ammo_magazine || !length(ammo_magazine.stored_ammo))
		iconstring += "_slide"

	icon_state = iconstring
	set_item_state(itemstring)

