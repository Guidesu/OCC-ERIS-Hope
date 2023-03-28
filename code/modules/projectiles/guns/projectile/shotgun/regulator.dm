<<<<<<< HEAD:code/modules/projectiles/guns/projectile/shotgun/regulator.dm
/obj/item/gun/projectile/shotgun/pump/regulator
	name = "NT SG \"Regulator 1000\""
	desc = "Designed for close quarters combat, the Regulator is widely regarded as a weapon of choice for repelling boarders. \
			Some may say that it's too old, but it actually proved itself useful. Can hold up to 7 shells in tube magazine."
	icon = 'icons/obj/guns/projectile/regulator.dmi'
	icon_state = "regulator"
	item_state = "regulator"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	max_shells = 7 //less ammo and regular recoil, decided not to give 1.2 because Gladstone would be anyhow better in this case
=======
/obj/item/gun/projectile/shotgun/pump/combat
	name = "\"Regulator\" combat shotgun"
	desc = "Designed for close quarters combat, the Regulator is widely regarded as a weapon of choice for protecting borders. \
			One of the only decent ballistic weapons made by the Old Testament. Can hold up to 6+1 20mm shells in its tube magazine."
	icon = 'icons/obj/guns/projectile/cshotgun.dmi'
	icon_state = "cshotgun"
	item_state = "cshotgun"
	caliber = CAL_SHOTGUN
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	max_shells = 6 //less ammo and regular recoil
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/modules/projectiles/guns/projectile/shotgun/combatsg.dm
	ammo_type = /obj/item/ammo_casing/shotgun
	fire_sound = 'sound/weapons/guns/fire/regulator.ogg'
	matter = list(MATERIAL_PLASTEEL = 25, MATERIAL_PLASTIC = 12)
<<<<<<< HEAD:code/modules/projectiles/guns/projectile/shotgun/regulator.dm
	price_tag = 1500
	damage_multiplier = 1.15
	penetration_multiplier = 0.9
	recoil_buildup = 16
	one_hand_penalty = 15 //full sized shotgun level
	rarity_value = 20
	saw_off = FALSE
=======
	price_tag = 1250
	damage_multiplier = 1.2
	penetration_multiplier = 1
	init_recoil = RIFLE_RECOIL(1.2)
	saw_off = TRUE
	sawn = /obj/item/gun/projectile/shotgun/pump/combat/sawn
	serial_type = "Absolute"

	wield_delay = 1 SECOND
	wield_delay_factor = 0.4 // 40 vig
	gun_parts = list(/obj/item/part/gun/frame/regulator = 1, /obj/item/part/gun/grip/black = 1, /obj/item/part/gun/mechanism/shotgun = 1, /obj/item/part/gun/barrel/shotgun = 1)

/obj/item/part/gun/frame/regulator
	name = "Regulator frame"
	desc = "A Regulator shotgun frame. The gold standard for boarder repelling."
	icon_state = "frame_regulator"
	result = /obj/item/gun/projectile/shotgun/pump/combat
	resultvars = list(/obj/item/gun/projectile/shotgun/pump/combat)
	gripvars = list(/obj/item/part/gun/grip/black)
	mechanismvar = /obj/item/part/gun/mechanism/shotgun
	barrelvars = list(/obj/item/part/gun/barrel/shotgun)

/obj/item/gun/projectile/shotgun/pump/combat/sawn
	name = "\"Regulator\" stakeout shotgun"
	desc = "Designed for close encounters, the Regulator is widely regarded as a weapon of choice for protecting against boarders. \
	Without its stock, it's much more compact, but much harder to use. Can hold up to 6+1 20mm shells in its tube magazine."
	icon = 'icons/obj/guns/projectile/sawnoff/cshotgun.dmi'
	icon_state = "short"
	item_state = "short"
	w_class = ITEM_SIZE_BULKY
	matter = list(MATERIAL_PLASTEEL = 20, MATERIAL_PLASTIC = 10)
	price_tag = 1000
	init_recoil = RIFLE_RECOIL(2.8)
	damage_multiplier = 0.9
	fire_delay = 12
	saw_off = FALSE

	wield_delay = 0.7 SECOND
	wield_delay_factor = 0.3 // 30 vig
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/modules/projectiles/guns/projectile/shotgun/combatsg.dm
