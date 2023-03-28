<<<<<<< HEAD
/////////////Standard/////////////
/obj/item/ammo_magazine/pistol
	name = "standard magazine (.35 Auto)"
	icon_state = "pistol_l"
=======
/obj/item/ammo_magazine/
	name = "not a magazine"
	icon_state = "10l"

/obj/item/ammo_magazine/pickup(mob/user)
	..()
	playsound(src,'sound/weapons/guns/interact/pistol_magout.ogg',20,3)

/obj/item/ammo_magazine/dropped(mob/user)
	..()
	playsound(src,'sound/weapons/guns/interact/hpistol_magout.ogg',20,3)

/////////////Standard/////////////
/obj/item/ammo_magazine/pistol_35
	name = "standard magazine (9mm)"
	desc = "a 10 round magazine marked for 9mm."
	icon_state = "pistol"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_PISTOL
<<<<<<< HEAD
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol/empty
	icon_state = "pistol"
	initial_ammo = 0

/obj/item/ammo_magazine/pistol/practice
	name = "standard magazine (.35 Auto practice)"
	icon_state = "pistol_p"
	ammo_type = /obj/item/ammo_casing/pistol/practice
	rarity_value = 5

/obj/item/ammo_magazine/pistol/highvelocity
	name = "standard magazine (.35 Auto high-velocity)"
	icon_state = "pistol_hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv
	rarity_value = 80

/obj/item/ammo_magazine/pistol/rubber
	name = "standard magazine (.35 Auto rubber)"
	icon_state = "pistol_r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	rarity_value = 5

/obj/item/ammo_magazine/pistol/scrap
	name = "standard magazine (old .35 Auto)"
	icon_state = "pistol_s"
	ammo_type = /obj/item/ammo_casing/pistol/scrap
	rarity_value = 5
	spawn_tags = SPAWN_AMMO_COMMON

/////////////HighCap/////////////
/obj/item/ammo_magazine/hpistol
	name = "highcap magazine (.35 Auto)"
	icon_state = "hpistol_l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_H_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 16
	multiple_sprites = 1
	rarity_value = 20

/obj/item/ammo_magazine/hpistol/empty
	icon_state = "hpistol"
	initial_ammo = 0

/obj/item/ammo_magazine/hpistol/practice
	name = "highcap magazine (.35 Auto practice)"
	icon_state = "hpistol_p"
	ammo_type = /obj/item/ammo_casing/pistol/practice
	rarity_value = 10

/obj/item/ammo_magazine/hpistol/highvelocity
	name = "highcap magazine (.35 Auto high-velocity)"
	icon_state = "hpistol_hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv
	rarity_value = 80

/obj/item/ammo_magazine/hpistol/rubber
	name = "highcap magazine (.35 Auto rubber)"
	icon_state = "hpistol_r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	rarity_value = 10

/////////////.35 SMG/////////////

/obj/item/ammo_magazine/smg
	name = "smg magazine (.35 Auto)"
	icon_state = "smg_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 35
	multiple_sprites = 1

/obj/item/ammo_magazine/smg/empty
	icon_state = "smg"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/smg/practice
	name = "smg magazine (.35 Auto practice)"
	icon_state = "smg_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol/practice

/obj/item/ammo_magazine/smg/hv
	name = "smg magazine (.35 Auto high-velocity)"
	icon_state = "smg_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv

/obj/item/ammo_magazine/smg/rubber
	name = "smg magazine (.35 Auto rubber)"
	icon_state = "smg_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/smg/scrap
	name = "smg magazine (old .35 Auto)"
	icon_state = "smg_s"
	ammo_type = /obj/item/ammo_casing/pistol/scrap
	spawn_tags = SPAWN_AMMO_COMMON

/////////////.40 SMG/////////////

/obj/item/ammo_magazine/msmg
	name = "smg magazine (.40 Magnum)"
	icon_state = "msmg_l"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 5)
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	max_ammo = 25
	multiple_sprites = 1

/obj/item/ammo_magazine/msmg/empty
	icon_state = "smg"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/msmg/practice
	name = "smg magazine (.40 Magnum practice)"
	icon_state = "msmg_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/magnum/practice

/obj/item/ammo_magazine/msmg/hv
	name = "smg magazine (.40 Magnum high-velocity)"
	icon_state = "msmg_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/magnum/hv

/obj/item/ammo_magazine/msmg/rubber
	name = "smg magazine (.40 Magnum rubber)"
	icon_state = "msmg_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/magnum/rubber

/obj/item/ammo_magazine/msmg/scrap
	name = "smg magazine (old .40 Magnum)"
	icon_state = "msmg_s"
	ammo_type = /obj/item/ammo_casing/magnum/scrap
	spawn_tags = SPAWN_AMMO_COMMON

///////////// .40 pistol ///////////

/obj/item/ammo_magazine/magnum
	name = "magazine (.40 Magnum)"
	icon_state = "magnum_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	ammo_mag = "mag_cl40m"
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_MAGNUM
	max_ammo = 10
	multiple_sprites = 1
	rarity_value = 5
	spawn_tags = SPAWN_TAG_AMMO_IH

/obj/item/ammo_magazine/magnum/empty
	icon_state = "magnum"
	initial_ammo = 0

/obj/item/ammo_magazine/magnum/practice
	name = "magazine (.40 Magnum practice)"
	icon_state = "magnum_p"
	ammo_type = /obj/item/ammo_casing/magnum/practice
	spawn_tags = null

/obj/item/ammo_magazine/magnum/hv
	name = "magazine (.40 Magnum high-velocity)"
	icon_state = "magnum_hv"
	ammo_type = /obj/item/ammo_casing/magnum/hv
	spawn_tags = null

/obj/item/ammo_magazine/magnum/rubber
	name = "magazine (.40 Magnum rubber)"
	icon_state = "magnum_r"
	ammo_type = /obj/item/ammo_casing/magnum/rubber
	rarity_value = 3

/obj/item/ammo_magazine/magnum/scrap
	name = "magazine (old .40 Magnum)"
	icon_state = "magnum_s"
	ammo_type = /obj/item/ammo_casing/magnum/scrap
	rarity_value = 3
	spawn_tags = SPAWN_AMMO_COMMON

///////////// .20 RIFLE /////////////

/obj/item/ammo_magazine/srifle
	name = "magazine (.20 Rifle)"
	icon_state = "srifle_l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_SRIFLE
	matter = list(MATERIAL_STEEL = 6)
	ammo_type = /obj/item/ammo_casing/srifle
	max_ammo = 25
	multiple_sprites = 1

/obj/item/ammo_magazine/srifle/empty
	icon_state = "srifle"
	matter = list(MATERIAL_STEEL = 3)
	initial_ammo = 0

/obj/item/ammo_magazine/srifle/practice
	name = "magazine (.20 Rifle practice)"
	icon_state = "srifle_p"
	ammo_type = /obj/item/ammo_casing/srifle/practice

/obj/item/ammo_magazine/srifle/hv
	name = "magazine (.20 Rifle high-velocity)"
	icon_state = "srifle_hv"
	ammo_type = /obj/item/ammo_casing/srifle/hv

/obj/item/ammo_magazine/srifle/rubber
	name = "magazine (.20 Rifle rubber)"
	icon_state = "srifle_r"
	ammo_type = /obj/item/ammo_casing/srifle/rubber

/obj/item/ammo_magazine/srifle/scrap
	name = "magazine (old .20 Rifle)"
	icon_state = "srifle_s"
	ammo_type = /obj/item/ammo_casing/srifle/scrap
	spawn_tags = SPAWN_AMMO_COMMON

////////// .25 RIFLE ///////////

/obj/item/ammo_magazine/c10x24
	name = "box magazine (.25 caseless)"
	icon_state = "10x24"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_CLRIFLE
	matter = list(MATERIAL_STEEL = 8, MATERIAL_PLASTIC = 1)
	ammo_type = /obj/item/ammo_casing/clrifle
	max_ammo = 99
	multiple_sprites = 1

/obj/item/ammo_magazine/ihclrifle
	name = "magazine (.25 Caseless Rifle)"
	icon_state = "ihclrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_IH
	ammo_type = /obj/item/ammo_casing/clrifle
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_CLRIFLE
	max_ammo = 30
	multiple_sprites = 1
	spawn_tags = SPAWN_TAG_AMMO_IH
	rarity_value = 5

/obj/item/ammo_magazine/ihclrifle/empty
	icon_state = "ihclrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/ihclrifle/practice
	name = "magazine (.25 Caseless Rifle practice)"
	icon_state = "ihclrifle_p"
	ammo_type = /obj/item/ammo_casing/clrifle/practice
	spawn_frequency = 5

/obj/item/ammo_magazine/ihclrifle/hv
	name = "magazine (.25 Caseless Rifle high-velocity)"
	icon_state = "ihclrifle_hv"
	ammo_type = /obj/item/ammo_casing/clrifle/hv
	spawn_tags = null

/obj/item/ammo_magazine/ihclrifle/rubber
	name = "magazine (.25 Caseless Rifle rubber)"
	icon_state = "ihclrifle_r"
	ammo_type = /obj/item/ammo_casing/clrifle/rubber

/obj/item/ammo_magazine/ihclrifle/scrap
	name = "magazine (old .25 Caseless Rifle)"
	icon_state = "ihclrifle_s"
	ammo_type = /obj/item/ammo_casing/clrifle/scrap
	spawn_tags = SPAWN_AMMO_COMMON

////////// .25 PISTOL //////////

/obj/item/ammo_magazine/cspistol
	name = "pistol magazine (.25 Caseless Rifle)"
	icon_state = "cspistol_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	ammo_type = /obj/item/ammo_casing/clrifle
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_CLRIFLE
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/cspistol/empty
	icon_state = "cspistol"
	initial_ammo = 0

/obj/item/ammo_magazine/cspistol/practice
	name = "pistol magazine (.25 Caseless Rifle practice)"
	icon_state = "cspistol_p"
	ammo_type = /obj/item/ammo_casing/clrifle/practice

/obj/item/ammo_magazine/cspistol/hv
	name = "pistol magazine (.25 Caseless Rifle high-velocity)"
	icon_state = "cspistol_hv"
	ammo_type = /obj/item/ammo_casing/clrifle/hv

/obj/item/ammo_magazine/cspistol/rubber
	name = "pistol magazine (.25 Caseless Rifle rubber)"
	icon_state = "cspistol_r"
	ammo_type = /obj/item/ammo_casing/clrifle/rubber

///////// .30 RIFLE ///////////

/obj/item/ammo_magazine/lrifle
	name = "magazine box (.30 Rifle)"
	icon_state = "lrifle_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/lrifle/empty
	initial_ammo = 0

/obj/item/ammo_magazine/lrifle/pk
	name = "LMG munitions box (.30 Rifle)"
	icon_state = "pk_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_BOX
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 8)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 80
=======
	ammo_type = /obj/item/ammo_casing/pistol_35
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/pistol_35/empty
	icon_state = "pistol"
	initial_ammo = 0

/obj/item/ammo_magazine/pistol_35/practice
	name = "standard magazine (9mm practice)"
	icon_state = "pistol_p"
	ammo_type = /obj/item/ammo_casing/pistol_35/practice

/obj/item/ammo_magazine/pistol_35/highvelocity
	name = "standard magazine (9mm high-velocity)"
	icon_state = "pistol_hv"
	ammo_type = /obj/item/ammo_casing/pistol_35/hv

/obj/item/ammo_magazine/pistol_35/rubber
	name = "standard magazine (9mm rubber)"
	icon_state = "pistol_r"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber

/obj/item/ammo_magazine/pistol_35/rubber/pepperball
	name = "standard magazine (9mm pepperball)"
	icon_state = "pistol_l"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber/pepperball

/obj/item/ammo_magazine/pistol_35/lethal
	name = "standard magazine (9mm hollow-point)"
	icon_state = "pistol_l"
	ammo_type = /obj/item/ammo_casing/pistol_35/lethal

/obj/item/ammo_magazine/pistol_35/scrap
	name = "old standard magazine (9mm)"
	icon_state = "pistol_s"
	ammo_type = /obj/item/ammo_casing/pistol_35/scrap

/obj/item/ammo_magazine/pistol_35/scrap/empty
	initial_ammo = 0

/obj/item/ammo_magazine/highcap_pistol_35/drum
	name = "standard auto drum magazine"
	icon_state = "ldrum"
	desc = "A 71 round drum magazine marked for 9mm."
	origin_tech = list(TECH_COMBAT = 2)
	w_class = ITEM_SIZE_NORMAL
	mag_type = MAGAZINE
	mag_well = MAG_WELL_DRUM
	caliber = CAL_PISTOL
	matter = list(MATERIAL_STEEL = 4)
	ammo_type = /obj/item/ammo_casing/pistol_35
	max_ammo = 71
	multiple_sprites = FALSE //I guess?

/obj/item/ammo_magazine/highcap_pistol_35/drum/update_icon()
	..()
	//small about of snowflake code for drums
	if(contents.len)
		icon_state = "[initial(icon_state)]-72"
	else
		icon_state = "[initial(icon_state)]"

/obj/item/ammo_magazine/highcap_pistol_35/drum/rubber
	name = "standard auto drum (rubber)"
	icon_state = "ldrum_r"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber

/obj/item/ammo_magazine/highcap_pistol_35/drum/rubber/pepperball
	name = "standard auto drum (pepperball)"
	icon_state = "ldrum_l"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber/pepperball

/obj/item/ammo_magazine/highcap_pistol_35/drum/soporific_cbo
	name = "standard auto drum (sleeper)"
	icon_state = "ldrum_r"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber/soporific_cbo

/obj/item/ammo_magazine/highcap_pistol_35/drum/lethal
	name = "standard auto drum (hollow-point)"
	ammo_type = /obj/item/ammo_casing/pistol_35/lethal
	icon_state = "ldru_l"

/obj/item/ammo_magazine/highcap_pistol_35/drum/hv
	name = "standard auto drum (high-velocity)"
	ammo_type = /obj/item/ammo_casing/pistol_35/hv
	icon_state = "ldrum_hv"

/obj/item/ammo_magazine/highcap_pistol_35/drum/empty
	name = "standard drum magazine"
	icon_state = "ldrum"
	initial_ammo = 0


/////////////HighCap/////////////
/obj/item/ammo_magazine/highcap_pistol_35
	name = "highcap pistol magazine"
	desc = "A 16 round magazine marked for 9mm."
	icon_state = "hpistol"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_H_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol_35
	max_ammo = 16
	multiple_sprites = 1

/obj/item/ammo_magazine/highcap_pistol_35/empty
	icon_state = "hpistol"
	initial_ammo = 0

/obj/item/ammo_magazine/highcap_pistol_35/practice
	name = "highcap magazine (9mm practice)"
	icon_state = "hpistol_p"
	ammo_type = /obj/item/ammo_casing/pistol_35/practice

/obj/item/ammo_magazine/highcap_pistol_35/highvelocity
	name = "highcap magazine (9mm high-velocity)"
	icon_state = "hpistol_hv"
	ammo_type = /obj/item/ammo_casing/pistol_35/hv

/obj/item/ammo_magazine/highcap_pistol_35/rubber
	name = "highcap magazine (9mm rubber)"
	icon_state = "hpistol_r"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber

/obj/item/ammo_magazine/highcap_pistol_35/rubber/pepperball
	name = "highcap magazine (9mm pepperball)"
	icon_state = "hpistol_l"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber/pepperball

/obj/item/ammo_magazine/highcap_pistol_35/lethal
	name = "highcap magazine (9mm hollow-point)"
	icon_state = "hpistol_l"
	ammo_type = /obj/item/ammo_casing/pistol_35/lethal

/////////////SMG/////////////

/obj/item/ammo_magazine/smg_35
	name = "smg magazine"
	desc = "A 32 round magazine marked for 9mm."
	icon_state = "smg"
	ammo_color = "-l"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_PISTOL
	ammo_type = /obj/item/ammo_casing/pistol_35
	max_ammo = 32
	multiple_sprites = 1

/obj/item/ammo_magazine/smg_35/empty
	icon_state = "smg"
	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/smg_35/practice
	name = "smg magazine (9mm practice)"
	icon_state = "smg_p"
	ammo_color = "-p"
	ammo_type = /obj/item/ammo_casing/pistol_35/practice

/obj/item/ammo_magazine/smg_35/hv
	name = "smg magazine (9mm high-velocity)"
	icon_state = "smg_hv"
	ammo_color = "-hv"
	ammo_type = /obj/item/ammo_casing/pistol_35/hv

/obj/item/ammo_magazine/smg_35/hv/empty

	ammo_color = ""
	initial_ammo = 0

/obj/item/ammo_magazine/smg_35/rubber
	name = "smg magazine (9mm rubber)"
	icon_state = "smg_r"
	ammo_color = "-r"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber

/obj/item/ammo_magazine/smg_35/rubber/pepperball
	name = "smg magazine (9mm pepperball)"
	icon_state = "smg_l"
	ammo_color = "-l"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber/pepperball

/obj/item/ammo_magazine/smg_35/lethal
	name = "smg magazine (9mm hollow-point)"
	icon_state = "smg_l"
	ammo_color = "-l"
	ammo_type = /obj/item/ammo_casing/pistol_35/lethal

///////////// 10mm pistol ///////////

/obj/item/ammo_magazine/magnum_40
	name = "magnum pistol magazine"
	desc = "A 10 round magazine marked for 10mm Magnum."
	icon_state = "magnum"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	ammo_type = /obj/item/ammo_casing/magnum_40
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_MAGNUM
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/magnum_40/empty
	icon_state = "magnum"
	initial_ammo = 0

/obj/item/ammo_magazine/magnum_40/practice
	name = "magazine (10mm Magnum practice)"
	icon_state = "magnum_p"
	ammo_type = /obj/item/ammo_casing/magnum_40/practice

/obj/item/ammo_magazine/magnum_40/hv
	name = "magazine (10mm Magnum high-velocity)"
	icon_state = "magnum_hv"
	ammo_type = /obj/item/ammo_casing/magnum_40/hv

/obj/item/ammo_magazine/magnum_40/rubber
	name = "magazine (10mm Magnum rubber)"
	icon_state = "magnum_r"
	ammo_type = /obj/item/ammo_casing/magnum_40/rubber

/obj/item/ammo_magazine/magnum_40/rubber/pepperball
	name = "magazine(10mm Magnum pepperball)"
	icon_state = "magnum_l"
	ammo_type = /obj/item/ammo_casing/magnum_40/rubber/pepperball

/obj/item/ammo_magazine/magnum_40/lethal
	name = "magazine (10mm Magnum hollow-point)"
	icon_state = "magnum_l"
	ammo_type = /obj/item/ammo_casing/magnum_40/lethal

/obj/item/ammo_magazine/magnum_40/old
	name = "old magazine (10mm Magnum)"
	icon_state = "magnum_s"
	ammo_type = /obj/item/ammo_casing/magnum_40/scrap

////10mm SMG////

/obj/item/ammo_magazine/smg_magnum_40
	name = "smg magnum magazine (10mm Magnum)"
	desc = "A 30 round magazine marked for 10mm Magnum."
	icon_state = "smg_magnum"
	origin_tech = list(TECH_COMBAT = 3)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_SMG
	matter = list(MATERIAL_STEEL = 4)
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum_40
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/smg_magnum_40/empty
	icon_state = "smg_magnum"
	initial_ammo = 0

/obj/item/ammo_magazine/smg_magnum_40/practice
	name = "smg magazine (10mm Magnum practice)"
	icon_state = "smg_magnum_p"
	ammo_type = /obj/item/ammo_casing/magnum_40/practice

/obj/item/ammo_magazine/smg_magnum_40/hv
	name = "smg magazine (10mm Magnum high-velocity)"
	icon_state = "smg_magnum_hv"
	ammo_type = /obj/item/ammo_casing/magnum_40/hv

/obj/item/ammo_magazine/smg_magnum_40/rubber
	name = "smg magazine (10mm Magnum rubber)"
	icon_state = "smg_magnum_r"
	ammo_type = /obj/item/ammo_casing/magnum_40/rubber

/obj/item/ammo_magazine/smg_magnum_40/rubber/pepperball
	name = "smg magazine (10mm Magnum pepperball)"
	icon_state = "smg_magnum_l"
	ammo_type = /obj/item/ammo_casing/magnum_40/rubber/pepperball

/obj/item/ammo_magazine/smg_magnum_40/lethal
	name = "smg magazine (10mm Magnum hollow-point)"
	icon_state = "smg_magnum_l"
	ammo_type = /obj/item/ammo_casing/magnum_40/lethal

/obj/item/ammo_magazine/smg_magnum_40/old
	name = "old smg magazine (10mm Magnum)"
	icon_state = "smg_magnum_s"
	ammo_type = /obj/item/ammo_casing/magnum_40/scrap

////6.5 Carbine////

/obj/item/ammo_magazine/light_rifle_257
	name = "carbine magazine"
	desc = "A 30 round magazine marked for 6.5mm Carbine."
	icon_state = "lrifle_long"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = "lrifle"
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/light_rifle_257
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/light_rifle_257/empty
	icon_state = "lrifle_long"
	initial_ammo = 0

/obj/item/ammo_magazine/light_rifle_257/practice
	name = "carbine magazine (practice)"
	icon_state = "lrifle_long_p"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/practice

/obj/item/ammo_magazine/light_rifle_257/highvelocity
	name = "carbine magazine (high-velocity)"
	icon_state = "lrifle_long_hv"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/hv

/obj/item/ammo_magazine/light_rifle_257/rubber
	name = "carbine magazine (rubber)"
	icon_state = "lrifle_long_r"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/rubber

/obj/item/ammo_magazine/light_rifle_257/rubber/pepperball
	name = "carbine magazine (pepperball)"
	icon_state = "lrifle_long_l"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/rubber/pepperball

/obj/item/ammo_magazine/light_rifle_257/lethal
	name = "carbine magazine (hollow-point)"
	icon_state = "lrifle_long_l"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/lethal

/obj/item/ammo_magazine/light_rifle_257/scrap
	name = "old carbine magazine (ball)"
	icon_state = "srifle_long_s"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/scrap

/obj/item/ammo_magazine/light_rifle_257/scrap/empty
	initial_ammo = 0

////short////

/obj/item/ammo_magazine/light_rifle_257_short
	name = "short carbine magazine"
	desc = "A 20 round magazine marked for 6.5mm Carbine."
	icon_state = "lrifle_short"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = "lrifle"
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/light_rifle_257
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/light_rifle_257_short/empty
	icon_state = "lrifle_short"
	initial_ammo = 0

/obj/item/ammo_magazine/light_rifle_257_short/practice
	name = "short carbine magazine (practice)"
	icon_state = "lrifle_short_p"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/practice

/obj/item/ammo_magazine/light_rifle_257_short/highvelocity
	name = "short carbine magazine (high-velocity)"
	icon_state = "lrifle_short_hv"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/hv

/obj/item/ammo_magazine/light_rifle_257_short/rubber
	name = "short carbine magazine (rubber)"
	icon_state = "lrifle_short_r"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/rubber

/obj/item/ammo_magazine/light_rifle_257_short/rubber/pepperball
	name = "short carbine magazine (pepperball)"
	icon_state = "lrifle_short_l"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/rubber/pepperball

/obj/item/ammo_magazine/light_rifle_257_short/lethal
	name = "short carbine magazine (hollow-point)"
	icon_state = "lrifle_short_l"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/lethal

////6.5 Drum ////

/obj/item/ammo_magazine/light_rifle_257_drum
	name = "carbine drum magazine"
	desc = "A 50 round drum magazine marked for 6.5mm Carbine."
	icon_state = "lrifle_drum"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	w_class = ITEM_SIZE_NORMAL
	caliber = "lrifle"
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 12)
	ammo_type = /obj/item/ammo_casing/light_rifle_257
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/light_rifle_257_drum/empty
	icon_state = "lrifle_drum"
	initial_ammo = 0

/obj/item/ammo_magazine/light_rifle_257_drum/practice
	name = "carbine drum magazine (practice)"
	icon_state = "lrifle_drum_p"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/practice

/obj/item/ammo_magazine/light_rifle_257_drum/highvelocity
	name = "carbine drum magazine (high-velocity)"
	icon_state = "lrifle_drum_hv"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/hv

/obj/item/ammo_magazine/light_rifle_257_drum/rubber
	name = "carbine drum magazine (rubber)"
	icon_state = "lrifle_drum_r"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/rubber

/obj/item/ammo_magazine/light_rifle_257_drum/rubber/pepperball
	name = "carbine drum magazine (pepperball)"
	icon_state = "lrifle_drum_pep"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/rubber/pepperball

/obj/item/ammo_magazine/light_rifle_257_drum/lethal
	name = "carbine drum magazine (hollow-point)"
	icon_state = "lrifle_drum_l"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/lethal

///////// 7.62 RIFLE /////////

/obj/item/ammo_magazine/rifle_75
	name = "rifle magazine"
	desc = "A 20 round magazine marked for 7.62mm Rifle."
	icon_state = "rifle"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = "rifle"
	caliber = CAL_RIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/rifle_75
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_75/empty
	icon_state = "rifle"
	initial_ammo = 0

/obj/item/ammo_magazine/rifle_75/practice
	name = "rifle magazine (practice)"
	icon_state = "rifle_p"
	ammo_type = /obj/item/ammo_casing/rifle_75/practice

/obj/item/ammo_magazine/rifle_75/highvelocity
	name = "rifle magazine (high-velocity)"
	icon_state = "rifle_hv"
	ammo_type = /obj/item/ammo_casing/rifle_75/hv

/obj/item/ammo_magazine/rifle_75/rubber
	name = "rifle magazine (rubber)"
	icon_state = "rifle_r"
	ammo_type = /obj/item/ammo_casing/rifle_75/rubber

/obj/item/ammo_magazine/rifle_75/lethal
	name = "rifle magazine (hollow-point)"
	icon_state = "rifle_l"
	ammo_type = /obj/item/ammo_casing/rifle_75/lethal

/obj/item/ammo_magazine/rifle_75/scrap
	name = "old rifle magazine (ball)"
	icon_state = "rifle_s"
	ammo_type = /obj/item/ammo_casing/rifle_75/scrap

/obj/item/ammo_magazine/rifle_75_short/scrap/empty
	initial_ammo = 0

////short////

/obj/item/ammo_magazine/rifle_75_short
	name = "short rifle magazine"
	desc = "A 10 round magazine marked for 7.62mm Rifle."
	icon_state = "rifle_short"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = "rifle"
	caliber = CAL_RIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/rifle_75
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_75_short/empty
	icon_state = "rifle_short"
	initial_ammo = 0

/obj/item/ammo_magazine/rifle_75_short/practice
	name = "short rifle magazine (practice)"
	icon_state = "rifle_short_p"
	ammo_type = /obj/item/ammo_casing/rifle_75/practice

/obj/item/ammo_magazine/rifle_75_short/highvelocity
	name = "short rifle magazine (high-velocity)"
	icon_state = "rifle_short_hv"
	ammo_type = /obj/item/ammo_casing/rifle_75/hv

/obj/item/ammo_magazine/rifle_75_short/rubber
	name = "short rifle magazine (rubber)"
	icon_state = "rifle_short_r"
	ammo_type = /obj/item/ammo_casing/rifle_75/rubber

/obj/item/ammo_magazine/rifle_75_short/lethal
	name = "short rifle magazine (hollow-point)"
	icon_state = "rifle_short_l"
	ammo_type = /obj/item/ammo_casing/rifle_75/lethal

//// Drum 7.62mm ////

/obj/item/ammo_magazine/rifle_75_drum
	name = "rifle drum magazine"
	desc = "A 40 round drum magazine marked for 7.62mm Rifle."
	icon_state = "rifle_drum"
	w_class = ITEM_SIZE_NORMAL
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = "rifle"
	caliber = CAL_RIFLE
	matter = list(MATERIAL_STEEL = 12)
	ammo_type = /obj/item/ammo_casing/rifle_75
	max_ammo = 40
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_75_drum/empty
	icon_state = "rifle_drum"
	initial_ammo = 0

/obj/item/ammo_magazine/rifle_75_drum/practice
	name = "rifle drum magazine (practice)"
	icon_state = "rifle_drum_p"
	ammo_type = /obj/item/ammo_casing/rifle_75/practice

/obj/item/ammo_magazine/rifle_75_drum/highvelocity
	name = "rifle drum magazine (high-velocity)"
	icon_state = "rifle_drum_hv"
	ammo_type = /obj/item/ammo_casing/rifle_75/hv

/obj/item/ammo_magazine/rifle_75_drum/rubber
	name = "rifle drum magazine (rubber)"
	icon_state = "rifle_drum_r"
	ammo_type = /obj/item/ammo_casing/rifle_75/rubber

/obj/item/ammo_magazine/rifle_75_drum/lethal
	name = "rifle drum magazine (hollow-point)"
	icon_state = "rifle_drum_l"
	ammo_type = /obj/item/ammo_casing/rifle_75/lethal

//Linked 7.62mm

/obj/item/ammo_magazine/rifle_75_linked_box
	name = "linked ammunition box (7.62mm Rifle)"
	desc = "A 100 round linked box marked for 7.62mm Rifle."
	icon_state = "pk_box"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_LINKED_BOX
	caliber = CAL_RIFLE
	matter = list(MATERIAL_STEEL = 2)
	ammo_type = /obj/item/ammo_casing/rifle_75
	max_ammo = 100
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	multiple_sprites = 1
	w_class = ITEM_SIZE_BULKY //Balance change, these things are the size a box due to being legit 5 mags worth of ammo. Wacky that it was normal-sized before.
	extra_bulk = -2

<<<<<<< HEAD
//Magazine type for the mech PK, you shouldn't see this

/obj/item/ammo_magazine/lrifle/pk/mech
	name = "LMG munitions box (.30 Rifle, Exosuit)"
	icon_state = "pk_box"
	matter = list()
	spawn_blacklisted = TRUE
	bad_type = /obj/item/ammo_magazine/lrifle/pk/mech

//

/obj/item/ammo_magazine/ammobox/lrifle/pk/on_update_icon()
=======
/obj/item/ammo_magazine/rifle_75_linked_box/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (!stored_ammo.len)
		icon_state = "pk_box-0"
		return
	if (stored_ammo.len == max_ammo)
		icon_state = "pk_box"
		return
	var/number = 0
	if (stored_ammo.len && max_ammo)
		var/percent = (stored_ammo.len / max_ammo) * 100
		number = round(percent, 25)
	icon_state = "pk_box-[number]"

<<<<<<< HEAD
/obj/item/ammo_magazine/lrifle/pk/empty
	initial_ammo = 0

/obj/item/ammo_magazine/lrifle
	name = "long magazine (.30 Rifle)"
	icon_state = "lrifle_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 5)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/lrifle/empty
	icon_state = "lrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/lrifle/practice
	name = "long magazine (.30 Rifle practice)"
	icon_state = "lrifle_p"
	ammo_type = /obj/item/ammo_casing/lrifle/practice

/obj/item/ammo_magazine/lrifle/highvelocity
	name = "long magazine (.30 Rifle high-velocity)"
	icon_state = "lrifle_hv"
	ammo_type = /obj/item/ammo_casing/lrifle/hv

/obj/item/ammo_magazine/lrifle/rubber
	name = "long magazine (.30 Rifle rubber)"
	icon_state = "lrifle_r"
	ammo_type = /obj/item/ammo_casing/lrifle/rubber

/obj/item/ammo_magazine/lrifle/scrap
	name = "long magazine (old .30 Rifle)"
	icon_state = "lrifle_s"
	ammo_type = /obj/item/ammo_casing/lrifle/scrap
	spawn_tags = SPAWN_AMMO_COMMON
/* Occulus Yeet
/obj/item/ammo_magazine/maxim
	name = "pan magazine (.30 Rifle)"
	icon_state = "maxim_l"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PAN
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 10)
	ammo_type = /obj/item/ammo_casing/lrifle
=======
/obj/item/ammo_magazine/rifle_75_linked_box/highvelocity
	name = "linked ammunition box (7.62mm Rifle highvelocity)"
	ammo_type = /obj/item/ammo_casing/rifle_75/hv

/obj/item/ammo_magazine/rifle_75_linked_box/rubber
	name = "linked ammunition box (7.62mm Rifle rubber)"
	ammo_type = /obj/item/ammo_casing/rifle_75/rubber

/obj/item/ammo_magazine/rifle_75_linked_box/lethal
	name = "linked ammunition box (7.62mm Rifle hollowpoint)"
	ammo_type = /obj/item/ammo_casing/rifle_75/lethal

/obj/item/ammo_magazine/rifle_75_linked_box/empty
	initial_ammo = 0

///easiest to make it a child
/obj/item/ammo_magazine/rifle_75_linked_box/light_rifle_257
	name = "linked ammunition box (6.5mm Carbine)"
	desc = "A 100 round linked box marked for 6.5mm Carbine."
	icon_state = "pkl_box"
	caliber = CAL_LRIFLE
	ammo_type = /obj/item/ammo_casing/light_rifle_257
	matter = list(MATERIAL_STEEL = 2)
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_75_linked_box/light_rifle_257/highvelocity
	name = "linked ammunition box (6.5mm Carbine highvelocity)"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/hv

/obj/item/ammo_magazine/rifle_75_linked_box/light_rifle_257/rubber
	name = "linked ammunition box (6.5mm Carbine rubber)"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/rubber

/obj/item/ammo_magazine/rifle_75_linked_box/light_rifle_257/lethal
	name = "linked ammunition box (6.5mm Carbine hollowpoint)"
	ammo_type = /obj/item/ammo_casing/light_rifle_257/lethal

/obj/item/ammo_magazine/rifle_75_linked_box/light_rifle_257/empty
	initial_ammo = 0

/obj/item/ammo_magazine/rifle_75_linked_box/heavy_rifle_408
	name = "linked ammunition box (8.6mm Heavy Rifle)"
	desc = "A 64 round linked box marked for 8.6x70mm Heavy Rifle."
	max_ammo = 64
	icon_state = "pkh_box"
	caliber = CAL_HRIFLE
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408
	matter = list(MATERIAL_STEEL = 2)
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_75_linked_box/heavy_rifle_408/highvelocity
	name = "linked ammunition box (8.6mm Heavy Rifle highvelocity)"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/hv

/obj/item/ammo_magazine/rifle_75_linked_box/heavy_rifle_408/rubber
	name = "linked ammunition box (8.6mm Heavy Rifle rubber)"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/rubber

/obj/item/ammo_magazine/rifle_75_linked_box/heavy_rifle_408/lethal
	name = "linked ammunition box (8.6mm Heavy Rifle hollowpoint)"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/lethal

/obj/item/ammo_magazine/rifle_75_linked_box/heavy_rifle_408/empty
	initial_ammo = 0

//Pan 7.62mm

/obj/item/ammo_magazine/maxim_75
	name = "pan magazine (7.62mm Rifle)"
	desc = "A 96 round pan magazine marked for 7.62mm Rifle."
	icon_state = "maxim"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PAN
	caliber = CAL_RIFLE
	matter = list(MATERIAL_STEEL = 2)
	ammo_type = /obj/item/ammo_casing/rifle_75
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	max_ammo = 96
	multiple_sprites = 1
	ammo_color = "-l"

<<<<<<< HEAD
/obj/item/ammo_magazine/maxim/rubber
	name = "pan magazine (.30 Rifle rubber)"
	icon_state = "maxim_r"
	ammo_type = /obj/item/ammo_casing/lrifle/rubber
	ammo_color = "-r"
*/
///////// SPEEDLOADERS ///////////

//////// .35 SPEEDLOADERS //////////
/obj/item/ammo_magazine/slpistol
	name = "speed loader (.35 Auto)"
	icon_state = "slpistol_l"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 6
	multiple_sprites = 1
	rarity_value = 6.66

/obj/item/ammo_magazine/slpistol/empty
	icon_state = "speedloader_empty"	//Occulus Edit
	initial_ammo = 0

/obj/item/ammo_magazine/slpistol/practice
	name = "speed loader (.35 Auto practice)"
	icon_state = "slpistol_p"
	ammo_type = /obj/item/ammo_casing/pistol/practice

/obj/item/ammo_magazine/slpistol/hv
	name = "speed loader (.35 Auto high-velocity)"
	icon_state = "slpistol_hv"
	ammo_type = /obj/item/ammo_casing/pistol/hv
	rarity_value = 80

/obj/item/ammo_magazine/slpistol/rubber
	name = "speed loader (.35 Auto rubber)"
	icon_state = "slpistol_r"
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	rarity_value = 5

/obj/item/ammo_magazine/slpistol/scrap
	name = "speed loader (old .35 Auto)"
	icon_state = "slpistol_s"
	ammo_type = /obj/item/ammo_casing/pistol/scrap
	rarity_value = 5
	spawn_tags = SPAWN_AMMO_COMMON

//////// .40 SPEEDLOADERS //////////

/obj/item/ammo_magazine/slmagnum
	name = "speed loader (.40 Magnum)"
	icon_state = "slmagnum_l"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_STEEL = 3)
	max_ammo = 6
	multiple_sprites = 1
	spawn_tags = SPAWN_TAG_AMMO_IH
	rarity_value = 5

/obj/item/ammo_magazine/slmagnum/empty
	icon_state = "speedloader_empty"	//Occulus Edit
	initial_ammo = 0

/obj/item/ammo_magazine/slmagnum/practice
	name = "speed loader (.40 Magnum practice)"
	icon_state = "slmagnum_p"
	ammo_type = /obj/item/ammo_casing/magnum/practice
	spawn_tags = null

/obj/item/ammo_magazine/slmagnum/highvelocity
	name = "speed loader (.40 Magnum high-velocity)"
	icon_state = "slmagnum_hv"
	ammo_type = /obj/item/ammo_casing/magnum/hv
	spawn_tags = null

/obj/item/ammo_magazine/slmagnum/rubber
	name = "speed loader (.40 Magnum rubber)"
	icon_state = "slmagnum_r"
	ammo_type = /obj/item/ammo_casing/magnum/rubber

/obj/item/ammo_magazine/slmagnum/scrap
	name = "speed loader (old .40 Magnum)"
	icon_state = "slmagnum_s"
	ammo_type = /obj/item/ammo_casing/magnum/scrap
	spawn_tags = SPAWN_AMMO_COMMON

//////// .30 RIFLE SPEEDLOADERS ////////
/obj/item/ammo_magazine/sllrifle
	name = "ammo strip (.30 Rifle)"
	icon_state = "lrifle"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 3)
	ammo_type = /obj/item/ammo_casing/lrifle
	max_ammo = 5
=======
/obj/item/ammo_magazine/maxim_75/empty
	initial_ammo = 0

////8.6mm heavy rifle////

/obj/item/ammo_magazine/heavy_rifle_408
	name = "heavy rifle magazine"
	icon_state = "hrifle"
	desc = "A 14 round magazine marked for 8.6x70mm Heavy Rifle."
	origin_tech = list(TECH_COMBAT = 2)
	w_class = ITEM_SIZE_NORMAL
	mag_type = MAGAZINE
	mag_well = MAG_WELL_HRIFLE
	caliber = CAL_HRIFLE
	matter = list(MATERIAL_STEEL = 4)
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408
	max_ammo = 14
	multiple_sprites = 1

/obj/item/ammo_magazine/heavy_rifle_408/empty
	icon_state = "hrifle"
	initial_ammo = 0

/obj/item/ammo_magazine/heavy_rifle_408/rubber
	name = "heavy rifle magazine (rubber)"
	icon_state = "hrifle_r"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/rubber

/obj/item/ammo_magazine/heavy_rifle_408/practice
	name = "heavy rifle magazine (practice)"
	icon_state = "hrifle_p"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/practice

/obj/item/ammo_magazine/heavy_rifle_408/hv
	name = "heavy rifle magazine (SLAP)"
	icon_state = "hrifle_hv"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/hv

/obj/item/ammo_magazine/heavy_rifle_408/lethal
	name = "heavy rifle magazine (HP)"
	icon_state = "hrifle_l"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/lethal

/obj/item/ammo_magazine/heavy_rifle_408/scrap
	name = "old heavy rifle magazine (ball)"
	icon_state = "hrifle_s"
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408/scrap

/obj/item/ammo_magazine/heavy_rifle_408/scrap/empty
	initial_ammo = 0

/obj/item/ammo_magazine/heavy_rifle_408_drum
	name = "heavy rifle drum magazine"
	icon_state = "hdrum"
	desc = "A 36 round drum magazine marked for 8.6x70mm Heavy Rifle."
	origin_tech = list(TECH_COMBAT = 2)
	w_class = ITEM_SIZE_NORMAL
	mag_type = MAGAZINE
	mag_well = MAG_WELL_DRUM
	caliber = CAL_HRIFLE
	matter = list(MATERIAL_STEEL = 12)
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408
	max_ammo = 36
	multiple_sprites = 1

/obj/item/ammo_magazine/heavy_rifle_408_drum/empty
	name = "heavy rifle magazine"
	icon_state = "hdrum"
	matter = list(MATERIAL_STEEL = 12)
	initial_ammo = 0

////10mm caseless////

/obj/item/ammo_magazine/c10x24
	name = "caseless magazine"
	desc = "An unsual magazine, marked for 10x24mm caseless."
	icon_state = "10x24"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PULSE
	caliber = "10x24"
	matter = list(MATERIAL_STEEL = 8, MATERIAL_PLASTIC = 1)
	ammo_type = /obj/item/ammo_casing/c10x24
	max_ammo = 99
	multiple_sprites = 1

/obj/item/ammo_magazine/c10x24/empty
	icon_state = "10x24"
	initial_ammo = 0

/obj/item/ammo_magazine/smg_10x24 // Refactors as it's not intended for a rifle but rather the Spec Ops.
	name = "high-capacity box magazine"
	desc = "A 40 round magazine marked for 10x24mm rounds."
	icon_state = "rifle"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	matter = list(MATERIAL_STEEL = 8)
	caliber = "10x24"
	ammo_type = /obj/item/ammo_casing/c10x24
	max_ammo = 40
	multiple_sprites = 1

//// 12mm Heavy Pistol ////

/obj/item/ammo_magazine/kurtz_50
	name = "heavy pistol magazine"
	desc = "A 10 round magazine marked for 12mm."
	icon_state = "kurtz"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	caliber = CAL_50
	matter = list(MATERIAL_STEEL = 4)
	ammo_type = /obj/item/ammo_casing/kurtz_50
	max_ammo = 10
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	multiple_sprites = 1
	w_class = ITEM_SIZE_TINY

<<<<<<< HEAD
/// OTHER ///

/obj/item/ammo_magazine/caps
	name = "speed loader (caps)"
	icon_state = "slpistol_r"
=======
/obj/item/ammo_magazine/kurtz_50/empty
	icon_state = "kurtz"
	initial_ammo = 0

/obj/item/ammo_magazine/kurtz_50/rubber
	name = "heavy pistol magazine (rubber)"
	icon_state = "kurtz_r"
	ammo_type = /obj/item/ammo_casing/kurtz_50/rubber

/obj/item/ammo_magazine/kurtz_50/rubber/pepperball
	name = "heavy pistol magazine (pepperball)"
	icon_state = "kurtz_l"
	ammo_type = /obj/item/ammo_casing/kurtz_50/rubber/pepperball

/obj/item/ammo_magazine/kurtz_50/practice
	name = "heavy pistol magazine (practice)"
	icon_state = "kurtz_r"
	ammo_type = /obj/item/ammo_casing/kurtz_50/practice

/obj/item/ammo_magazine/kurtz_50/hv
	name = "heavy pistol magazine (high-velocity)"
	icon_state = "kurtz_hv"
	ammo_type = /obj/item/ammo_casing/kurtz_50/hv

/obj/item/ammo_magazine/kurtz_50/lethal
	name = "heavy pistol magazine (hollow-point)"
	icon_state = "kurtz_l"
	ammo_type = /obj/item/ammo_casing/kurtz_50/lethal

///////// SPEEDLOADERS ///////////

//////// 9mm SPEEDLOADERS //////////

/obj/item/ammo_magazine/speed_loader_pistol_35
	name = "speed loader (9mm Special)"
	desc = "A 6 round speed loader marked for (9mm."
	icon_state = "slpistol_base"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_PISTOL
	matter = list(MATERIAL_STEEL = 3)
	ammo_type = /obj/item/ammo_casing/pistol_35
	max_ammo = 6

/obj/item/ammo_magazine/speed_loader_pistol_35/update_icon()
	cut_overlays()
	var/count = 0
	for(var/obj/item/ammo_casing/AC in stored_ammo)
		count++
		add_overlay("slpistol_[AC.shell_color]-[count]")

/obj/item/ammo_magazine/speed_loader_pistol_35/practice
	name = "speed loader (9mm Special practice)"
	ammo_type = /obj/item/ammo_casing/pistol_35/practice

/obj/item/ammo_magazine/speed_loader_pistol_35/hv
	name = "speed loader (9mm Special high-velocity)"
	ammo_type = /obj/item/ammo_casing/pistol_35/hv

/obj/item/ammo_magazine/speed_loader_pistol_35/rubber
	name = "speed loader (9mm Special rubber)"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber

/obj/item/ammo_magazine/speed_loader_pistol_35/rubber/pepperball
	name = "speed loader (9mm Special pepperball)"
	ammo_type = /obj/item/ammo_casing/pistol_35/rubber/pepperball

/obj/item/ammo_magazine/speed_loader_pistol_35/lethal
	name = "speed loader (9mm Special hollow point)"
	ammo_type = /obj/item/ammo_casing/pistol_35/lethal

/obj/item/ammo_magazine/speed_loader_pistol_35/scrap
	name = "old speed loader (9mm Special)"
	ammo_type = /obj/item/ammo_casing/pistol_35/scrap

//////// 10mm SPEEDLOADERS //////////

/obj/item/ammo_magazine/speed_loader_magnum_40
	name = "speed loader (10mm Magnum)"
	desc = "A 6 round speed loader marked for 10mm Magnum."
	icon_state = "slmagnum_base"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum_40
	matter = list(MATERIAL_STEEL = 3)
	max_ammo = 6

/obj/item/ammo_magazine/speed_loader_magnum_40/update_icon()
	cut_overlays()
	var/count = 0
	for(var/obj/item/ammo_casing/AC in stored_ammo)
		count++
		add_overlay("slmagnum_[AC.shell_color]-[count]")

/obj/item/ammo_magazine/speed_loader_magnum_40/Initialize()
	. = ..()
	update_icon()

/obj/item/ammo_magazine/speed_loader_magnum_40/practice
	name = "speed loader (10mm Magnum practice)"
	ammo_type = /obj/item/ammo_casing/magnum_40/practice

/obj/item/ammo_magazine/speed_loader_magnum_40/highvelocity
	name = "speed loader (10mm Magnum high-velocity)"
	ammo_type = /obj/item/ammo_casing/magnum_40/hv

/obj/item/ammo_magazine/speed_loader_magnum_40/rubber
	name = "speed loader (10mm Magnum rubber)"
	ammo_type = /obj/item/ammo_casing/magnum_40/rubber

/obj/item/ammo_magazine/speed_loader_magnum_40/rubber/pepperball
	name = "speed loader (10mm Magnum pepperball)"
	ammo_type = /obj/item/ammo_casing/magnum_40/rubber/pepperball

/obj/item/ammo_magazine/speed_loader_magnum_40/lethal
	name = "speed loader (10mm Magnum hollow-point)"
	ammo_type = /obj/item/ammo_casing/magnum_40/lethal

/obj/item/ammo_magazine/speed_loader_magnum_40/scrap
	name = "old speed loader (10mm Magnum)"
	ammo_type = /obj/item/ammo_casing/magnum_40/scrap

/obj/item/ammo_magazine/speed_loader_magnum_40/biomatter
	name = "speed loader (10mm Magnum Caustic)"
	ammo_type = /obj/item/ammo_casing/magnum_40/biomatter

//// 12mm speed loader ////

/obj/item/ammo_magazine/speed_loader_kurtz_50
	name = "speed loader (12mm Special)"
	desc = "A 6 round speed loader marked for 12mm."
	icon_state = "slmagnum_base"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_50
	ammo_type = /obj/item/ammo_casing/kurtz_50
	matter = list(MATERIAL_STEEL = 3)
	max_ammo = 6

/obj/item/ammo_magazine/speed_loader_kurtz_50/update_icon()
	cut_overlays()
	var/count = 0
	for(var/obj/item/ammo_casing/AC in stored_ammo)
		count++
		add_overlay("slmagnum_[AC.shell_color]-[count]")

/obj/item/ammo_magazine/speed_loader_kurtz_50/practice
	name = "speed loader (12mm practice)"
	ammo_type = /obj/item/ammo_casing/kurtz_50/practice

/obj/item/ammo_magazine/speed_loader_kurtz_50/rubber
	name = "speed loader (12mm rubber)"
	ammo_type = /obj/item/ammo_casing/kurtz_50/rubber

/obj/item/ammo_magazine/speed_loader_kurtz_50/rubber/pepperball
	name = "speed loader (12mm pepperball)"
	ammo_type = /obj/item/ammo_casing/kurtz_50/rubber/pepperball

/obj/item/ammo_magazine/speed_loader_kurtz_50/lethal
	name = "speed loader (12mm hollow-point)"
	ammo_type = /obj/item/ammo_casing/kurtz_50/lethal

/obj/item/ammo_magazine/speed_loader_kurtz_50/highvelocity
	name = "speed loader (12mm high-velocity)"
	ammo_type = /obj/item/ammo_casing/kurtz_50/hv

//////// RIFLE SPEEDLOADERS ////////

/obj/item/ammo_magazine/speed_loader_rifle_75
	name = "ammo strip (7.62mm Rifle)"
	desc = "A 10 round ammo strip for 7.62mm Rifle."
	icon_state = "stripper_base"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_RIFLE
	matter = list(MATERIAL_STEEL = 1)
	ammo_type = /obj/item/ammo_casing/rifle_75
	max_ammo = 10

/obj/item/ammo_magazine/speed_loader_rifle_75/update_icon()
	cut_overlays()
	var/count = 0
	for(var/obj/item/ammo_casing/AC in stored_ammo)
		count++
		add_overlay("stripper_[AC.shell_color]-[count]")

/obj/item/ammo_magazine/speed_loader_rifle_75/Initialize()
	. = ..()
	update_icon()

/obj/item/ammo_magazine/speed_loader_rifle_75/empty
	initial_ammo = 0
	icon_state = "stripper_base"

/obj/item/ammo_magazine/speed_loader_light_rifle_257
	name = "ammo strip (6.5mm Carbine)"
	desc = "A 10 round ammo strip for 6.5mm Carbine."
	icon_state = "stripper_base"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_LRIFLE
	matter = list(MATERIAL_STEEL = 1)
	ammo_type = /obj/item/ammo_casing/light_rifle_257
	max_ammo = 10

/obj/item/ammo_magazine/speed_loader_light_rifle_257/update_icon()
	cut_overlays()
	var/count = 0
	for(var/obj/item/ammo_casing/AC in stored_ammo)
		count++
		add_overlay("stripper_[AC.shell_color]-[count]")

/obj/item/ammo_magazine/speed_loader_light_rifle_257/Initialize()
	. = ..()
	update_icon()

/obj/item/ammo_magazine/speed_loader_light_rifle_257/empty
	initial_ammo = 0
	icon_state = "stripper_base"

/obj/item/ammo_magazine/speed_loader_heavy_rifle_408
	name = "ammo strip (8.6mm Heavy Rifle)"
	desc = "A 10 round ammo strip for 8.6x70mm Heavy Rifle."
	icon_state = "stripper_base"
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_HRIFLE
	matter = list(MATERIAL_STEEL = 1)
	ammo_type = /obj/item/ammo_casing/heavy_rifle_408
	max_ammo = 10

/obj/item/ammo_magazine/speed_loader_heavy_rifle_408/update_icon()
	cut_overlays()
	var/count = 0
	for(var/obj/item/ammo_casing/AC in stored_ammo)
		count++
		add_overlay("stripper_[AC.shell_color]-[count]")

/obj/item/ammo_magazine/speed_loader_heavy_rifle_408/Initialize()
	. = ..()
	update_icon()

/obj/item/ammo_magazine/speed_loader_heavy_rifle_408/empty
	icon_state = "stripper_base"
	initial_ammo = 0

//////// SHOTGUN SPEEDLOADERS ////////
/obj/item/ammo_magazine/speed_loader_shotgun
	name = "20mm loader tube (sabot slug)"
	desc = "A 6 round speed loader marked for 20mm Shells."
	icon = 'icons/obj/ammo_speed.dmi'
	icon_state = "shot_tube_s"
	caliber = CAL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 4)
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/speed_loader_shotgun/empty
	name = "20mm loader tube (shells)"
	initial_ammo = 0
	icon_state = "shot_tube"

/obj/item/ammo_magazine/speed_loader_shotgun/pellet
	name = "20mm loader tube (buckshot)"
	icon_state = "shot_tube_l"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet

/obj/item/ammo_magazine/speed_loader_shotgun/beanbag
	name = "20mm loader tube (beanbag)"
	icon_state = "shot_tube_r"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

/obj/item/ammo_magazine/speed_loader_shotgun/beanbag/pepperball
	name = "20mm loader tube (beanbag)"
	icon_state = "shot_tube_l"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag/pepperball

////other////

/obj/item/ammo_magazine/caps
	name = "speed loader (caps)"
	desc = "A 8 round speed loader for cap guns."
	icon_state = "slpistol_l"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/ammo_speed.dmi'
	caliber = CAL_CAP
	color = "#FF0000"
	ammo_type = /obj/item/ammo_casing/cap
	matter = list(MATERIAL_STEEL = 2)
	max_ammo = 8
	multiple_sprites = 1

/obj/item/ammo_magazine/a75
<<<<<<< HEAD
	name = "ammo magazine (.70 Gyro)"
	icon_state = "75"
=======
	name = "ammo magazine (19mm gyro)"
	desc = "A 4 magazine in 19mm gyro."
	icon_state = "gyropistol"
	icon = 'icons/obj/ammo_mags.dmi'
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	mag_type = MAGAZINE
	mag_well = MAG_WELL_PISTOL
	caliber = CAL_70
	ammo_type = /obj/item/ammo_casing/a75
	multiple_sprites = 1
	max_ammo = 4

/obj/item/ammo_magazine/a75/empty
	initial_ammo = 0
<<<<<<< HEAD
=======
	icon_state = "gyropistol-0"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

////////////Shotguns!////////////

/obj/item/ammo_magazine/m12
<<<<<<< HEAD
	name = "ammo drum (.50 slug)"
	icon_state = "m12_hv"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 6)
	max_ammo = 8
	ammo_color = "-hv"

/obj/item/ammo_magazine/m12/on_update_icon()
=======
	name = "20mm ammo drum (sabot slug)"
	desc = "A 20mm ammo drum for automatic and semiautomatic shotguns, holds 20 shells"
	icon_state = "m12_hv"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_DRUM
	caliber = CAL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 2)
	max_ammo = 20 // 5 times a Grizzly's capacity (or four if you cock a round in), how did a drum hold less ammo than a mag...
	ammo_color = "-hv"

/obj/item/ammo_magazine/m12/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	cut_overlays()
	if(stored_ammo.len)
		var/obj/item/ammo_casing/AC = stored_ammo[1] //look at next casing.
		overlays += "m12_shell_[AC.shell_color]" //look and display the overlay for the ammo

/obj/item/ammo_magazine/m12/Initialize()
	. = ..()
	update_icon()

<<<<<<< HEAD
/obj/item/ammo_magazine/m12/pellet
	name = "ammo drum (.50 pellet)"
=======
/obj/item/ammo_magazine/m12/empty
	icon_state = "m12"
	initial_ammo = 0
	ammo_color = ""

/obj/item/ammo_magazine/m12/pellet
	name = "20mm ammo drum (buckshot)"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "m12_l"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	ammo_color = "-l"

/obj/item/ammo_magazine/m12/beanbag
<<<<<<< HEAD
	name = "ammo drum (.50 beanbag)"
=======
	name = "20mm ammo drum (beanbag)"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "m12_r"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	ammo_color = "-r"

<<<<<<< HEAD
/obj/item/ammo_magazine/m12/empty
	name = "ammo drum (.50)"
	icon_state = "m12"
	ammo_color = ""
=======
/obj/item/ammo_magazine/sbaw
	name = "20mm SBAW magazine (sabot slug)"
	desc = "A 12 round magazine for 20mm shotgun shells."
	icon_state = "sbaw_s"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_RIFLE
	caliber = CAL_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	multiple_sprites = 1
	max_ammo = 12 // Three times a Grizzly's capacity

/obj/item/ammo_magazine/sbaw/empty
	name = "20mm SBAW magazine"
	icon_state = "sbaw"
	matter = list(MATERIAL_STEEL = 1)
	initial_ammo = 0

/obj/item/ammo_magazine/sbaw/beanbag
	name = "20mm SBAW magazine (beanbag)"
	icon_state = "sbaw_bb"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag

/obj/item/ammo_magazine/sbaw/pellet
	name = "20mm SBAW magazine (buckshot)"
	icon_state = "sbaw_buck"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet

/obj/item/ammo_magazine/sbaw/he
	name = "20mm SBAW magazine (HEFI)"
	icon_state = "sbaw_he"
	ammo_type = /obj/item/ammo_casing/shotgun/payload

// SCI ammo
/obj/item/ammo_magazine/rifle_223
	name = "short carbine magazine"
	desc = "A 20 round magazine marked for .223 Carbine laser ammunition."
	icon_state = "lsrifle"
	mag_type = MAGAZINE
	mag_well = MAG_WELL_LSRIFLE
	caliber = CAL_SCI
	matter = list(MATERIAL_STEEL = 10)
	ammo_type = /obj/item/ammo_casing/beam
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/rifle_223/empty
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	initial_ammo = 0
