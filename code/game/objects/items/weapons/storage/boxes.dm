/*
 *	Everything derived from the common cardboard box.
 *	Basically everything except the original is a kit (starts full).
 *
 *	Contains:
 *		Empty box, starter boxes (survival/engineer),
 *		Latex glove and sterile mask boxes,
 *		Syringe, beaker, dna injector boxes,
 *		Blanks, flashbangs, and EMP grenade boxes,
 *		Tracking and chemical implant boxes,
 *		Prescription glasses and drinking glass boxes,
 *		Condiment bottle and silly cup boxes,
 *		Donkpocket and monkeycube boxes,
 *		ID and security PDA cart boxes,
 *		Handcuff, mousetrap, and pillbottle boxes,
 *		Snap-pops and matchboxes,
 *		Replacement light boxes,
 *		Blackshield uniform boxes.
 *
 *		For syndicate call-ins see uplink_kits.dm
 */

/obj/item/storage/box
	name = "box"
	desc = "It's just an ordinary box."
	icon = 'icons/obj/storage/boxes.dmi'
	icon_state = "box"
	item_state = "box"
	max_w_class = ITEM_SIZE_SMALL
	max_storage_space = DEFAULT_SMALL_STORAGE + 1
<<<<<<< HEAD
	contained_sprite = TRUE
	health = 20
	bad_type = /obj/item/storage/box
	spawn_blacklisted = FALSE
	spawn_tags = SPAWN_TAG_BOX
	rarity_value = 20
	spawn_frequency = 10
	var/foldable = /obj/item/stack/material/cardboard	//If set, can be folded (when empty) into the set object.
	var/illustration = "writing"
	var/initial_amount = 0
	var/spawn_type
=======
	var/foldable = /obj/item/stack/material/cardboard	//If set, can be folded (when empty) into the set object.
	var/illustration = "writing"
	contained_sprite = TRUE
	health = 20
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/Initialize(mapload)
	. = ..()
	update_icon()

<<<<<<< HEAD
/obj/item/storage/box/on_update_icon()
=======
/obj/item/storage/box/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	. = ..()
	if(illustration)
		cut_overlays()
		add_overlay(illustration)

<<<<<<< HEAD
/obj/item/storage/box/proc/damage(severity)
=======
/obj/item/storage/box/proc/damage(var/severity)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	health -= severity
	check_health()

/obj/item/storage/box/proc/check_health()
	if (health <= 0)
		spill()
		qdel(src)

<<<<<<< HEAD
/obj/item/storage/box/attack_generic(mob/user)
=======
/obj/item/storage/box/attack_generic(var/mob/user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN*2)
	if (istype(user, /mob/living))
		var/mob/living/L = user
		var/damage = L.mob_size ? L.mob_size : MOB_MINISCULE

		if (!damage || damage <= 0)
			return

		user.do_attack_animation(src)

		var/toplay = pick(list('sound/effects/creatures/nibble1.ogg','sound/effects/creatures/nibble2.ogg'))
		playsound(loc, toplay, 50, 1, 2)
		shake_animation()
		spawn(5)
			if ((health-damage) <= 0)
				L.visible_message("<span class='danger'>[L] tears open \the [src], spilling its contents everywhere!</span>", "<span class='danger'>You tear open the [src], spilling its contents everywhere!</span>")
			damage(damage)
		..()

/obj/item/storage/box/attack_self(mob/user)
	if(..()) return

	//try to fold it.
	if(contents.len)
		to_chat(user, "<span class='warning'>You can't fold this box with items still inside!</span>")
		return

	if(!ispath(src.foldable))
		return

	// Close any open UI windows first
	close_all()

	// Now make the cardboard
	to_chat(user, SPAN_NOTICE("You fold [src] flat."))
	new src.foldable(get_turf(src))
	qdel(src)

/obj/item/storage/box/survival/populate_contents()
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/tank/emergency_oxygen(src)
	new /obj/item/reagent_containers/hypospray/autoinjector(src)
<<<<<<< HEAD
	new /obj/item/device/lighting/glowstick/flare(src)
=======
	if(prob(50))
		new /obj/item/reagent_containers/food/snacks/openable/mre(src)
	else
		new /obj/item/reagent_containers/food/snacks/openable/mre/alt(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/survival/extended/populate_contents()
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/tank/emergency_oxygen/engi(src)
	new /obj/item/reagent_containers/hypospray/autoinjector(src)
<<<<<<< HEAD
	new /obj/item/device/lighting/glowstick/yellow(src)
	new /obj/item/device/lighting/glowstick/flare(src)
=======
	if(prob(50))
		new /obj/item/reagent_containers/food/snacks/openable/mre(src)
	else
		new /obj/item/reagent_containers/food/snacks/openable/mre/alt(src)
	new /obj/item/device/lighting/glowstick/yellow(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/gloves
	name = "box of latex gloves"
	desc = "Contains white gloves."
	illustration = "latex"
<<<<<<< HEAD
	initial_amount = 7
	spawn_type = /obj/item/clothing/gloves/latex

/obj/item/storage/box/gloves/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/gloves/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/clothing/gloves/latex(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/masks
	name = "box of sterile masks"
	desc = "This box contains masks of sterility."
	illustration = "sterile"
<<<<<<< HEAD
	initial_amount = 7
	spawn_type = /obj/item/clothing/mask/surgical

/obj/item/storage/box/masks/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/masks/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/clothing/mask/surgical(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/syringes
	name = "box of syringes"
	desc = "A box full of syringes."
	illustration = "syringe"
<<<<<<< HEAD
	initial_amount = 7
	spawn_type = /obj/item/reagent_containers/syringe

/obj/item/storage/box/syringes/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

=======
	use_to_pickup = TRUE // So we can pick up syringes quickly

/obj/item/storage/box/syringes/empty/populate_contents()
	return

/obj/item/storage/box/syringes/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/syringe(src)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/storage/box/syringegun
	name = "box of syringe gun cartridges"
	desc = "A box full of compressed gas cartridges."
	illustration = "syringe"
<<<<<<< HEAD
	initial_amount = 7
	spawn_type = /obj/item/syringe_cartridge

/obj/item/storage/box/syringegun/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/syringegun/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/syringe_cartridge(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/beakers
	name = "box of beakers"
	illustration = "beaker"
<<<<<<< HEAD
	rarity_value = 5
	initial_amount = 7
	spawn_type = /obj/item/reagent_containers/glass/beaker

/obj/item/storage/box/beakers/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

=======

/obj/item/storage/box/beakers/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/glass/beaker(src)

/obj/item/storage/box/bottles
	name = "box of bottles"
	illustration = "beaker"

/obj/item/storage/box/bottles/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/glass/bottle(src)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/storage/box/bodybags
	name = "body bags"
	desc = "This box contains a number of body bags."
	illustration = "bodybags"
<<<<<<< HEAD
	initial_amount = 7
	spawn_type = /obj/item/bodybag

/obj/item/storage/box/bodybags/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/bodybags/empty/populate_contents()
	return

/obj/item/storage/box/bodybags/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/bodybag(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/injectors
	name = "box of DNA injectors"
	desc = "This box contains injectors it seems."
	initial_amount = 3
	spawn_type = /obj/item/dnainjector/h2m

/obj/item/storage/box/injectors/populate_contents()
<<<<<<< HEAD
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======
	new /obj/item/dnainjector/h2m(src)
	new /obj/item/dnainjector/h2m(src)
	new /obj/item/dnainjector/h2m(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	new /obj/item/dnainjector/m2h(src)
	new /obj/item/dnainjector/m2h(src)
	new /obj/item/dnainjector/m2h(src)

<<<<<<< HEAD
/obj/item/storage/box/shotgunammo
	name = "box of shotgun slugs"
	desc = "It has a picture of a gun and several warning symbols on the front.<br>WARNING: Live ammunition. Misuse may result in serious injury or death."
	illustration = "ammo"
	rarity_value = 40
	spawn_tags = SPAWN_TAG_AMMO_SHOTGUN_COMMON
	bad_type = /obj/item/storage/box/shotgunammo
	initial_amount = 7
	spawn_blacklisted = TRUE

/obj/item/storage/box/shotgunammo/populate_contents()
	if(initial_amount > 0 && spawn_type)
		for(var/i in 1 to initial_amount)
			new spawn_type(src)

/obj/item/storage/box/shotgunammo/slug
	name = "box of shotgun slugs"
	spawn_type = /obj/item/ammo_casing/shotgun/prespawned
	rarity_value = 20

/obj/item/storage/box/shotgunammo/blanks
	name = "box of blank shells"
	spawn_type = /obj/item/ammo_casing/shotgun/blank/prespawned
	rarity_value = 50
	spawn_tags = SPAWN_TAG_AMMO_SHOTGUN

/obj/item/storage/box/shotgunammo/beanbags
	name = "box of beanbag shells"
	spawn_type = /obj/item/ammo_casing/shotgun/beanbag/prespawned
	rarity_value = 10

/obj/item/storage/box/shotgunammo/buckshot
	name = "box of shotgun shells"
	spawn_type = /obj/item/ammo_casing/shotgun/pellet/prespawned
	rarity_value = 13.33
	spawn_tags = SPAWN_TAG_AMMO_SHOTGUN

/obj/item/storage/box/shotgunammo/flashshells
	name = "box of illumination shells"
	spawn_type = /obj/item/ammo_casing/shotgun/flash/prespawned
	rarity_value = 40
	spawn_tags = SPAWN_TAG_AMMO_SHOTGUN

/obj/item/storage/box/shotgunammo/practiceshells
	name = "box of practice shells"
	spawn_type = /obj/item/ammo_casing/shotgun/practice/prespawned
	rarity_value = 50

/obj/item/storage/box/shotgunammo/incendiaryshells
	name = "box of incendiary shells"
	spawn_type = /obj/item/ammo_casing/shotgun/incendiary/prespawned
	rarity_value = 100
	spawn_tags = SPAWN_TAG_AMMO_SHOTGUN


/obj/item/storage/box/sniperammo
	name = "box of .60 Anti Material shells"
	desc = "It has a picture of a gun and several warning symbols on the front.<br>WARNING: Live ammunition. Misuse may result in serious injury or death."
	illustration = "ammo"
	rarity_value = 80
	initial_amount = 1
	spawn_type = /obj/item/ammo_casing/antim/prespawned
	spawn_tags = SPAWN_TAG_AMMO

/obj/item/storage/box/sniperammo/populate_contents()
	new spawn_type(src)
	for(var/obj/item/ammo_casing/temp_casing in src)
		temp_casing.update_icon()

/obj/item/storage/box/flashbangs
	name = "box of flashbangs"
	desc = "A box containing 7 antipersonnel flashbang grenades.<br> WARNING: These devices are extremely dangerous and can cause blindness or deafness in repeated use."
	icon_state = "box_security"
	illustration = "flashbang"
	rarity_value = 60
	initial_amount = 7
	spawn_type = /obj/item/grenade/flashbang

/obj/item/storage/box/flashbangs/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/teargas
	name = "box of pepperspray grenades"
	desc = "A box containing 6 tear gas grenades. A gas mask is printed on the label.<br> WARNING: Exposure carries risk of serious injury or death. Keep away from persons with lung conditions."
	icon_state = "box_security"
	illustration = "flashbang"
	rarity_value = 50
	initial_amount = 6
	spawn_type = /obj/item/grenade/chem_grenade/teargas

/obj/item/storage/box/teargas/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/emps
	name = "box of emp grenades"
	desc = "A box containing 5 military grade EMP grenades.<br> WARNING: Do not use near unshielded electronics or biomechanical augmentations, death or permanent paralysis may occur."
	icon_state = "box_security"
	illustration = "flashbang"
	rarity_value = 60
	initial_amount = 5
	spawn_type = /obj/item/grenade/empgrenade

/obj/item/storage/box/emps/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/frag
	name = "box of fragmentation grenades"
	desc = "A box containing 4 fragmentation grenades. Designed for use on enemies in the open."
	icon_state = "box_security"
	illustration = "flashbang"
	rarity_value = 60
	initial_amount = 4
	spawn_type = /obj/item/grenade/frag

/obj/item/storage/box/frag/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/explosive
	name = "box of blast grenades"
	desc = "A box containing 4 blast grenades. Designed for assaulting strongpoints."
	icon_state = "box_security"
	illustration = "flashbang"
	rarity_value = 70
	initial_amount = 4
	spawn_type = /obj/item/grenade/explosive

/obj/item/storage/box/explosive/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/smokes
	name = "box of smoke bombs"
	desc = "A box containing 5 smoke bombs."
	illustration = "flashbang"
	initial_amount = 5
	spawn_type = /obj/item/grenade/smokebomb

/obj/item/storage/box/smokes/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/anti_photons
	name = "box of anti-photon grenades"
	desc = "A box containing 5 experimental photon disruption grenades."
	illustration = "flashbang"
	rarity_value = 60
	initial_amount = 5
	spawn_type = /obj/item/grenade/anti_photon

/obj/item/storage/box/anti_photons/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/incendiary
	name = "box of incendiary grenades"
	desc = "A box containing 5 incendiary grenades."
	icon_state = "box_security"
	illustration = "flashbang"
	rarity_value = 60
	initial_amount = 5
	spawn_type = /obj/item/implantcase/tracking

/obj/item/storage/box/incendiary/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/trackimp
	name = "boxed tracking implant kit"
	desc = "Box full of scum-bag tracking utensils."
	illustration = "implant"
	rarity_value = 60
	initial_amount = 4
	spawn_type = /obj/item/implantcase/tracking

/obj/item/storage/box/trackimp/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
	new /obj/item/implanter(src)
	new /obj/item/implantpad(src)
	new /obj/item/device/gps/locator(src)
=======
//Begining of all the stupid boxes for the biogenerator.
/obj/item/storage/box/advancedtraumakit
	name = "box of ATKs"
	desc = "A box containing five advanced trauma kits."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/advancedtraumakit/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/stack/medical/bruise_pack/advanced (src)

/obj/item/storage/box/advancedburnkit
	name = "box of ABKs"
	desc = "A box containing five advanced burn kits."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/advancedburnkit/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/stack/medical/ointment/advanced (src)

/obj/item/storage/box/gauzebulk
	name = "box of gauze"
	desc = "A box containing five rolls of gauze."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/gauzebulk/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/stack/medical/bruise_pack (src)

/obj/item/storage/box/ointmentbulk
	name = "box of ointment"
	desc = "A box containing five bottles of ointment."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/ointmentbulk/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/stack/medical/ointment (src)

/obj/item/storage/box/leatherbulk
	name = "Box of leather"
	desc = "A box containing five workable sheets of leather."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/leatherbulk/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/stack/material/leather (src)

/obj/item/storage/box/clothbulk
	name = "Box of cloth"
	desc = "A box containing five bolts of cloth."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/clothbulk/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/stack/material/cloth (src)

/obj/item/storage/box/carpetbulk
	name = "Box of red carpet"
	desc = "A box containing fifteen cubic meters of red carpet, tightly vacuum compresed."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/carpetbulk/populate_contents()
	for(var/i in 1 to 15)
		new /obj/item/stack/tile/carpet(src)

/obj/item/storage/box/bcarpetbulk
	name = "Box of black carpet"
	desc = "A box containing fifteen cubic meters of black carpet, tightly vacuum compresed."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/bcarpetbulk/populate_contents()
	for(var/i in 1 to 15)
		new /obj/item/stack/tile/carpet/bcarpet(src)

/obj/item/storage/box/bluecarpetbulk
	name = "Box of blue carpet"
	desc = "A box containing fifteen cubic meters of blue carpet, tightly vacuum compresed."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/bluecarpetbulk/populate_contents()
	for(var/i in 1 to 15)
		new /obj/item/stack/tile/carpet/blucarpet(src)

/obj/item/storage/box/turcarpetbulk
	name = "Box of turqoise carpet"
	desc = "A box containing fifteen cubic meters of turqoise carpet, tightly vacuum compresed."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/turcarpetbulk/populate_contents()
	for(var/i in 1 to 15)
		new /obj/item/stack/tile/carpet/turcarpet(src)

/obj/item/storage/box/sbluecarpetbulk
	name = "Box of silver carpet"
	desc = "A box containing fifteen cubic meters of silver carpet, tightly vacuum compresed."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/sbluecarpetbulk/populate_contents()
	for(var/i in 1 to 15)
		new /obj/item/stack/tile/carpet/sblucarpet(src)

/obj/item/storage/box/purcarpetbulk
	name = "Box of purple carpet"
	desc = "A box containing fifteen cubic meters of purple carpet, tightly vacuum compresed."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/purcarpetbulk/populate_contents()
	for(var/i in 1 to 15)
		new /obj/item/stack/tile/carpet/purcarpet(src)

/obj/item/storage/box/oracarpetbulk
	name = "Box of orange carpet"
	desc = "A box containing fifteen cubic meters of orange carpet, tightly vacuum compresed."
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/oracarpetbulk/populate_contents()
	for(var/i in 1 to 15)
		new /obj/item/stack/tile/carpet/oracarpet(src)

/obj/item/storage/box/cardboardbulk
	name = "Box of cardboard"
	desc = "A box containing five tightly packed flats of cardboard. "
	w_class = ITEM_SIZE_NORMAL
	cant_hold = list(/obj/item)

/obj/item/storage/box/cardboardbulk/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/stack/material/cardboard(src)

//End of hydro boxes

/obj/item/storage/box/flashbangs
	name = "box of flashbangs"
	desc = "A box containing seven antipersonnel flashbang grenades.<br> WARNING: These devices are extremely dangerous and can cause blindness or deafness in repeated use."
	icon_state = "box_security"
	illustration = "flashbang"

/obj/item/storage/box/flashbangs/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/grenade/flashbang(src)

/obj/item/storage/box/teargas
	name = "box of pepper spray grenades"
	desc = "A box containing six tear gas grenades. A gas mask is printed on the label.<br> WARNING: Exposure carries risk of serious injury or death. Keep away from persons with lung conditions."
	icon_state = "box_security"
	illustration = "gas"

/obj/item/storage/box/teargas/populate_contents()
	for(var/i in 1 to 6)
		new /obj/item/grenade/chem_grenade/teargas(src)

/obj/item/storage/box/emps
	name = "box of EMP grenades"
	desc = "A box containing five military grade EMP grenades.<br> WARNING: Do not use near unshielded electronics or biomechanical augmentations, death or permanent paralysis may occur."
	icon_state = "box_security"
	illustration = "flashbang"

/obj/item/storage/box/emps/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/grenade/empgrenade(src)

/obj/item/storage/box/frag
	name = "box of fragmentation grenades"
	desc = "A box containing four fragmentation grenades. Designed for use on enemies in the open."
	icon_state = "box_security"
	illustration = "frag"

/obj/item/storage/box/frag/populate_contents()
	for(var/i in 1 to 4)
		new /obj/item/grenade/frag(src)

/obj/item/storage/box/incendiary
	name = "box of incendiary grenades"
	desc = "A box containing five incendiary grenades."
	icon_state = "box_security"
	illustration = "flashbang"

/obj/item/storage/box/incendiary/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/grenade/chem_grenade/incendiary(src)

/obj/item/storage/box/explosive
	name = "box of blast grenades"
	desc = "A box containing four blast grenades. Designed for assaulting strongpoints."
	icon_state = "box_security"
	illustration = "blast"

/obj/item/storage/box/explosive/populate_contents()
	for(var/i in 1 to 4)
		new /obj/item/grenade/explosive(src)


/obj/item/storage/box/smokes
	name = "box of smoke bombs"
	desc = "A box containing five smoke bombs."
	illustration = "flashbang"

/obj/item/storage/box/smokes/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/grenade/smokebomb(src)

/obj/item/storage/box/phosphorous
	name = "box of white phosphorous grenades"
	desc = "A box containing 7 antipersonnel incendiary  grenades.<br> WARNING: These devices are extremely dangerous and can cause severe burns and fires."
	icon_state = "box_security"
	illustration = "flashbang"

/obj/item/storage/box/phosphorous/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/grenade/frag/white_phosphorous(src)

/obj/item/storage/box/anti_photons
	name = "box of anti-photon grenades"
	desc = "A box containing five experimental photon disruption grenades."
	illustration = "flashbang"

/obj/item/storage/box/anti_photons/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/grenade/anti_photon(src)

/obj/item/storage/box/baton_rounds
	name = "box of baton rounds"
	desc = "A box containing six baton rounds. Designed to be fired from a grenade launcher."
	illustration = "flashbang"

/obj/item/storage/box/baton_rounds/populate_contents()
	for(var/i in 1 to 6)
		new  /obj/item/ammo_casing/grenade(src)

/obj/item/storage/box/flash_grenade_shells
	name = "box of flash grenade shells"
	desc = "A box containing six flash grenade shells. Designed to be fired from a grenade launcher."
	illustration = "flashbag"

/obj/item/storage/box/flash_grenade_shells/populate_contents()
	for(var/i in 1 to 6)
		new  /obj/item/ammo_casing/grenade/flash(src)

/obj/item/storage/box/emp_grenade_shells
	name = "box of EMP grenade shells"
	desc = "A box containing six EMP grenade shells. Designed to be fired from a grenade launcher."
	illustration = "flashbang"

/obj/item/storage/box/emp_grenade_shells/populate_contents()
	for(var/i in 1 to 6)
		new  /obj/item/ammo_casing/grenade/emp(src)

/obj/item/storage/box/frag_grenade_shells
	name = "box of frag grenade shells"
	desc = "A box containing six frag grenade shells. Designed to be fired from a grenade launcher."
	illustration = "flashbang"

/obj/item/storage/box/frag_grenade_shells/populate_contents()
	for(var/i in 1 to 6)
		new  /obj/item/ammo_casing/grenade/frag(src)

/obj/item/storage/box/blast_grenade_shells
	name = "box of blast grenade shells"
	desc = "A box containing six blast grenade shells. Designed to be fired from a grenade launcher."
	illustration = "flashbang"

/obj/item/storage/box/blast_grenade_shells/populate_contents()
	for(var/i in 1 to 6)
		new  /obj/item/ammo_casing/grenade/blast(src)

/obj/item/storage/box/trackimp
	name = "boxed tracking implant kit"
	desc = "Box full of tracking utensils."
	illustration = "implant"

/obj/item/storage/box/trackimp/populate_contents()
	new /obj/item/implantcase/tracking(src)
	new /obj/item/implantcase/tracking(src)
	new /obj/item/implantcase/tracking(src)
	new /obj/item/implantcase/tracking(src)
	new /obj/item/implanter(src)
	new /obj/item/implantpad(src)
	new /obj/item/locator(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/chemimp
	name = "boxed chemical implant kit"
	desc = "Box of stuff used to implant chemicals."
	illustration = "implant"
<<<<<<< HEAD
	rarity_value = 60
	initial_amount = 5
	spawn_blacklisted = 1
	spawn_type = /obj/item/implantcase/chem

/obj/item/storage/box/chemimp/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
	new /obj/item/implanter(src)
	new /obj/item/implantpad(src)

=======

/obj/item/storage/box/chemimp/populate_contents()
	new /obj/item/implantcase/chem(src)
	new /obj/item/implantcase/chem(src)
	new /obj/item/implantcase/chem(src)
	new /obj/item/implantcase/chem(src)
	new /obj/item/implantcase/chem(src)
	new /obj/item/implanter(src)
	new /obj/item/implantpad(src)



>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/storage/box/rxglasses
	name = "box of prescription glasses"
	desc = "This box contains nerd glasses."
	illustration = "glasses"
<<<<<<< HEAD
	initial_amount = 7
	spawn_type = /obj/item/clothing/glasses/regular

/obj/item/storage/box/rxglasses/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/rxglasses/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/clothing/glasses/regular(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/drinkingglasses
	name = "box of drinking glasses"
	desc = "It has a picture of drinking glasses on it."
	rarity_value = 10
	initial_amount = 6
	spawn_type = /obj/item/reagent_containers/food/drinks/drinkingglass

/obj/item/storage/box/drinkingglasses/populate_contents()
<<<<<<< HEAD
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======
	for(var/i in 1 to 6)
		new /obj/item/reagent_containers/food/drinks/drinkingglass(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/cdeathalarm_kit
	name = "death alarm kit"
	desc = "Box of stuff used to implant death alarms."
	illustration = "implant"
	item_state = "syringe_kit"
	rarity_value = 50
	initial_amount = 6
	spawn_type = /obj/item/implantcase/death_alarm

/obj/item/storage/box/cdeathalarm_kit/populate_contents()
	new /obj/item/implanter(src)
<<<<<<< HEAD
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======
	new /obj/item/implantcase/death_alarm(src)
	new /obj/item/implantcase/death_alarm(src)
	new /obj/item/implantcase/death_alarm(src)
	new /obj/item/implantcase/death_alarm(src)
	new /obj/item/implantcase/death_alarm(src)
	new /obj/item/implantcase/death_alarm(src)

/obj/item/storage/box/flares
	name = "box of flares"
	desc = "Box that contains some flares."
	icon_state = "box"
	illustration = "flare"

	New()
		..()
		new /obj/item/device/lighting/glowstick/flare(src)
		new /obj/item/device/lighting/glowstick/flare(src)
		new /obj/item/device/lighting/glowstick/flare(src)
		new /obj/item/device/lighting/glowstick/flare(src)
		new /obj/item/device/lighting/glowstick/flare(src)
		new /obj/item/device/lighting/glowstick/flare(src)
		new /obj/item/device/lighting/glowstick/flare(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/condimentbottles
	name = "box of condiment bottles"
	desc = "It has a large ketchup smear on it."
	initial_amount = 7
	spawn_type = /obj/item/reagent_containers/food/condiment

<<<<<<< HEAD
/obj/item/storage/box/condimentbottles/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/cups
	name = "box of paper cups"
	desc = "It has pictures of paper cups on the front."
	initial_amount = 7
	spawn_type = /obj/item/reagent_containers/food/drinks/sillycup

/obj/item/storage/box/cups/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======
/obj/item/storage/box/condimentbottles/empty/populate_contents()
	return

/obj/item/storage/box/condimentbottles/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/food/condiment(src)

/obj/item/storage/box/cups
	name = "box of paper cups"
	desc = "It has pictures of paper cups on the front."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/cups/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/food/drinks/sillycup(src)

/obj/item/storage/box/donkpockets
	name = "box of donk-pockets"
	desc = "<B>Instructions:</B> <I>Heat in microwave. Product will cool if not eaten within seven minutes.</I>"
	icon_state = "box_donk_pocket"
	illustration = null
<<<<<<< HEAD
	rarity_value = 10
	initial_amount = 6
	spawn_type = /obj/item/reagent_containers/food/snacks/donkpocket

/obj/item/storage/box/donkpockets/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/donkpockets/populate_contents()
	for(var/i in 1 to 6)
		new /obj/item/reagent_containers/food/snacks/donkpocket(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/sinpockets
	name = "box of sin-pockets"
	desc = "<B>Instructions:</B> <I>Crush bottom of package to initiate chemical heating. Wait for 20 seconds before consumption. Product will cool if not eaten within seven minutes.</I>"
	icon_state = "box_donk_pocket"
	illustration = null
<<<<<<< HEAD
	initial_amount = 6
	spawn_type = /obj/item/reagent_containers/food/snacks/donkpocket/sinpocket

/obj/item/storage/box/sinpockets/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/sinpockets/populate_contents()
	for(var/i in 1 to 6)
		new /obj/item/reagent_containers/food/snacks/donkpocket/sinpocket(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/monkeycubes
	name = "monkey cube box"
	desc = "Drymate brand monkey cubes. Just add water!"
	icon = 'icons/obj/food.dmi'
	icon_state = "monkeycubebox"
	illustration = null
	can_hold = list(/obj/item/reagent_containers/food/snacks/monkeycube)
<<<<<<< HEAD
	initial_amount = 5
	spawn_type = /obj/item/reagent_containers/food/snacks/monkeycube/wrapped

/obj/item/storage/box/monkeycubes/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/monkeycubes/populate_contents()
	for(var/i in 1 to 5)
		new /obj/item/reagent_containers/food/snacks/monkeycube/wrapped(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/ids
	name = "box of spare IDs"
	desc = "Has so many empty IDs."
	icon_state = "box_id"
	illustration = null
<<<<<<< HEAD
	initial_amount = 7
	spawn_type = /obj/item/card/id

/obj/item/storage/box/ids/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/ids/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/card/id(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/handcuffs
	name = "box of spare handcuffs"
	desc = "A box full of handcuffs."
	icon_state = "box_security"
	illustration = "handcuff"
<<<<<<< HEAD
	rarity_value = 10
	initial_amount = 7
	spawn_type = /obj/item/handcuffs

/obj/item/storage/box/handcuffs/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)


/obj/item/storage/box/mousetraps
	name = "box of Pest-B-Gon mousetraps"
	desc = "<B><FONT color='red'>WARNING:</FONT></B> <I>Keep out of reach of children</I>."
	illustration = "mousetraps"
	initial_amount = 7
	spawn_type = /obj/item/device/assembly/mousetrap

/obj/item/storage/box/mousetraps/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/handcuffs/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/handcuffs(src)


/obj/item/storage/box/mousetraps
	name = "box of Pest-B-Gone mousetraps"
	desc = "<B><FONT color='red'>WARNING:</FONT></B> <I>Keep out of reach of children</I>."
	illustration = "mousetraps"

/obj/item/storage/box/mousetraps/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/device/assembly/mousetrap(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/pillbottles
	name = "box of pill bottles"
	desc = "It has pictures of pill bottles on its front."
	initial_amount = 7
	spawn_type = /obj/item/storage/pill_bottle

<<<<<<< HEAD
/obj/item/storage/box/pillbottles/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

=======
/obj/item/storage/box/pillbottles/empty/populate_contents()
	return

/obj/item/storage/box/pillbottles/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/storage/pill_bottle(src)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/storage/box/snappops
	name = "snap pop box"
	desc = "Eight wrappers of fun! Ages 8 and up. Not suitable for children."
	icon = 'icons/obj/toy.dmi'
	icon_state = "spbox"
<<<<<<< HEAD
	initial_amount = 8
	spawn_type = /obj/item/toy/snappop

/obj/item/storage/box/snappops/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/snappops/populate_contents()
	for(var/i in 1 to 8)
		new /obj/item/toy/junk/snappop(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/matches
	name = "matchbox"
	desc = "A small box of 'Space-Proof' premium matches."
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "matchbox"
	item_state = "zippo"
	illustration = null
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_BELT
<<<<<<< HEAD
	rarity_value = 5
	spawn_tags = SPAWN_TAG_BOX_TAG_JUNK
	initial_amount = 14
	spawn_type = /obj/item/flame/match

/obj/item/storage/box/matches/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/matches/populate_contents()
	for(var/i in 1 to 14)
		new /obj/item/flame/match(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	make_exact_fit()

/obj/item/storage/box/matches/attackby(obj/item/flame/match/W, mob/user)
	if(istype(W) && !W.lit && !W.burnt)
		playsound(src, 'sound/items/matchstrike.ogg', 20, 1, 1)
		W.lit = 1
<<<<<<< HEAD
		W.damtype = "burn"
=======
		W.damtype = BURN
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		W.icon_state = "match_lit"
		W.tool_qualities = list(QUALITY_CAUTERIZING = 10)
		START_PROCESSING(SSobj, W)
	W.update_icon()
	return

/obj/item/storage/box/autoinjectors
<<<<<<< HEAD
	name = "box of autoinjectors (inaprovaline)"
	desc = "Contains inaprovaline autoinjectors."
	illustration = "syringe"
	rarity_value = 10
	initial_amount = 7
	spawn_type = /obj/item/reagent_containers/hypospray/autoinjector

/obj/item/storage/box/autoinjectors/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/autoinjectors/empty
	name = "box of autoinjectors"
	desc = "Contains empty autoinjectors."
	illustration = "syringe"

/obj/item/storage/box/autoinjectors/empty/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/hypospray/autoinjector/empty(src)

/obj/item/storage/box/autoinjectors/tricordrazine
	name = "box of autoinjectors (tricordrazine)"
	desc = "Contains tricordrazine autoinjectors."
	illustration = "syringe"

/obj/item/storage/box/autoinjectors/tricordrazine/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/hypospray/autoinjector/tricordrazine(src)
=======
	name = "box of injectors"
	desc = "Contains auto-injectors."
	illustration = "syringe"

/obj/item/storage/box/autoinjectors/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/hypospray/autoinjector(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/lights
	name = "box of replacement bulbs"
	illustration = "light"
	desc = "This box is shaped on the inside so that only light tubes and bulbs fit."
	use_to_pickup = TRUE // for picking up broken bulbs, not that most people will try
<<<<<<< HEAD
	spawn_tags = SPAWN_TAG_BOX_TAG_JUNK
	initial_amount = 21
	spawn_type = /obj/item/light/bulb

/obj/item/storage/box/lights/bulbs/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/lights/bulbs/populate_contents()
	for(var/i in 1 to 21)
		new /obj/item/light/bulb(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	make_exact_fit()

/obj/item/storage/box/lights/tubes
	name = "box of replacement tubes"
	illustration = "lighttube"
<<<<<<< HEAD
	spawn_tags = SPAWN_TAG_BOX_TAG_JUNK
	initial_amount = 21
	spawn_type = /obj/item/light/tube

/obj/item/storage/box/lights/tubes/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
	make_exact_fit()

/obj/item/storage/box/lights/mixed
	name = "box of replacement lights"
	illustration = "lightmixed"
	spawn_tags = SPAWN_TAG_BOX_TAG_JUNK
	rarity_value = 6.66
	initial_amount = 14
	spawn_type = /obj/item/light/tube

/obj/item/storage/box/lights/mixed/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/lights/tubes/populate_contents()
	for(var/i in 1 to 21)
		new /obj/item/light/tube(src)
	make_exact_fit()


/obj/item/storage/box/lights/mixed
	name = "box of replacement lights"
	illustration = "lightmixed"

/obj/item/storage/box/lights/mixed/empty/populate_contents()
	return

/obj/item/storage/box/lights/mixed/populate_contents()
	for(var/i in 1 to 14)
		new /obj/item/light/tube(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	for(var/i in 1 to 7)
		new /obj/item/light/bulb(src)
	make_exact_fit()

/obj/item/storage/box/data_disk
	name = "data disk box"
	illustration = "disk"
<<<<<<< HEAD
	rarity_value = 30
	initial_amount = 7
	spawn_type = /obj/item/computer_hardware/hard_drive/portable

/obj/item/storage/box/data_disk/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
=======

/obj/item/storage/box/data_disk/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/computer_hardware/hard_drive/portable(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/storage/box/data_disk/basic
	name = "basic data disk box"
	illustration = "disk"
<<<<<<< HEAD
	rarity_value = 10
	initial_amount = 7
	spawn_type = /obj/item/computer_hardware/hard_drive/portable/basic

/obj/item/storage/box/data_disk/basic/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/headset/church
	name = "neotheology radio encryption key box"
	illustration = "disk"
	initial_amount = 7
	spawn_type = /obj/item/device/encryptionkey/headset_church
	spawn_blacklisted = TRUE

/obj/item/storage/box/headset/church/populate_contents()
	for(var/i in 1 to initial_amount)
		new spawn_type(src)

/obj/item/storage/box/happy_meal
	name = "McRonalds' Robust Meal"
	desc = "This is typical Robust Meal from McRonalds.\
	And you almost feel smell of delicious food from it.\
	Wait! It must have toy inside! Unpack it now!"
	icon_state = "happy_meal"

/obj/item/storage/box/happy_meal/New()
	. = ..()
	var/list/things2spawn = list(
		/obj/item/reagent_containers/food/snacks/sliceable/plaincake,
		/obj/item/reagent_containers/food/snacks/sliceable/chocolatecake,
		/obj/item/reagent_containers/food/snacks/bigbiteburger,
		/obj/item/reagent_containers/food/snacks/fishandchips
	)
/*someday...
	if(prob(1))
		things2spawn += /obj/item/clothing/head/kitty
*/
	things2spawn += pick(subtypesof(/obj/item/toy/plushie) + subtypesof(/obj/item/toy/figure))
	for(var/path in things2spawn)
		new path(src)
=======

/obj/item/storage/box/data_disk/basic/populate_contents()
	for(var/i in 1 to 7)
		new /obj/item/computer_hardware/hard_drive/portable/basic(src)

/obj/item/storage/box/data_disk/basic/empty/populate_contents()
	return

/*
Boxes with clothing on them, unable to put them back if taken out because...
...well, boxes can't normally fit clothes on them!
*/

/obj/item/storage/box/trooperuniform
	name = "Trooper/Corpsman Service and Dress Kit"
	desc = "Box that contained a bluespace sealed Blackshield Service Uniform and Dress Uniform. Once items are removed, they won't fit again."
	icon_state = "box"

	New()
		..()
		new /obj/item/clothing/under/rank/trooper/service(src)
		new /obj/item/clothing/suit/rank/trooper/service(src)
		new /obj/item/clothing/suit/rank/trooper/dress(src)
		new /obj/item/clothing/head/rank/trooperdress(src)
		new /obj/item/clothing/accessory/tie/navy(src)
		new /obj/item/clothing/shoes/laceup(src)
		new /obj/item/clothing/accessory/armband/militia(src)
		new /obj/item/clothing/accessory/armband/corpsman(src)

/obj/item/storage/box/sergeantuniform
	name = "Sergeant Service and Dress Kit"
	desc = "Box that contained a bluespace sealed Blackshield Service Uniform and Dress Uniform. Once items are removed, they won't fit again."
	icon_state = "box"

	New()
		..()
		new /obj/item/clothing/under/rank/armorer/service(src)
		new /obj/item/clothing/suit/rank/armorer/service(src)
		new /obj/item/clothing/suit/rank/armorer/dress(src)
		new /obj/item/clothing/head/rank/trooperdress(src)
		new /obj/item/clothing/accessory/tie/navy(src)
		new /obj/item/clothing/shoes/laceup(src)

/obj/item/storage/box/commanderuniform
	name = "Commander Service and Dress Kit"
	desc = "Box that contained a bluespace sealed Blackshield Service Uniform and Dress Uniform. Once items are removed, they won't fit again."
	icon_state = "box"

	New()
		..()
		new /obj/item/clothing/under/rank/commander_service(src)
		new /obj/item/clothing/suit/rank/commander_service(src)
		new /obj/item/clothing/head/rank/commanderdress(src)
		new /obj/item/clothing/accessory/tie/navy(src)
		new /obj/item/clothing/shoes/laceup(src)

/obj/item/storage/box/blankranks
	name = "Box of Blank Ranks"
	desc = "A box full of solid red, ''blank'' Blackshield ranks, for distribution to volunteers and cadets."
	icon_state = "box"

	New()
		..()
		new /obj/item/clothing/accessory/ranks/blank(src)
		new /obj/item/clothing/accessory/ranks/blank(src)
		new /obj/item/clothing/accessory/ranks/blank(src)
		new /obj/item/clothing/accessory/ranks/blank(src)
		new /obj/item/clothing/accessory/ranks/blank(src)
		new /obj/item/clothing/accessory/ranks/blank(src)
		new /obj/item/clothing/accessory/ranks/blank(src)

/obj/item/storage/box/team_support
	name = "Box of Team Support"
	desc = "A box filled with everything needed to support the team, flag not included."
	icon_state = "box"

	New()
		..()
		new /obj/item/reagent_containers/food/snacks/popcorn(src)
		new /obj/item/toy/junk/bosunwhistle(src)
		new /obj/random/toy/plushie_onlysquid(src)
		new /obj/item/device/binoculars(src)


// Guild boxes, exclusively used to mass craft guild parts.
/obj/item/storage/box/guild_manip
	name = "box of forged manipulators"
	desc = "A box containing five forged manipulators, the best that Nadezhda can produce."
	icon_state = "box_of_doom"
	illustration = "guild"

/obj/item/storage/box/guild_manip/populate_contents()
	for(var/i in 1 to 4)
		new /obj/item/stock_parts/manipulator/handmade(src)

/obj/item/storage/box/guild_bin
	name = "box of cast matter bins"
	desc = "A box containing five cast matter bins, the best that Nadezhda can produce."
	icon_state = "box_of_doom"
	illustration = "guild"

/obj/item/storage/box/guild_bin/populate_contents()
	for(var/i in 1 to 4)
		new /obj/item/stock_parts/matter_bin/handmade(src)

/obj/item/storage/box/guild_laser
	name = "box of perfected micro-lasers"
	desc = "A box containing five perfected micro-lasers, the best that Nadezhda can produce."
	icon_state = "box_of_doom"
	illustration = "guild"

/obj/item/storage/box/guild_laser/populate_contents()
	for(var/i in 1 to 4)
		new /obj/item/stock_parts/micro_laser/handmade(src)

/obj/item/storage/box/guild_scanner
	name = "box of perfected scanning modules"
	desc = "A box containing five perfected scanning modules, the best that Nadezhda can produce."
	icon_state = "box_of_doom"
	illustration = "guild"

/obj/item/storage/box/guild_scanner/populate_contents()
	for(var/i in 1 to 4)
		new /obj/item/stock_parts/scanning_module/handmade(src)

/obj/item/storage/box/guild_capacitor
	name = "box of ultra capacitors"
	desc = "A box containing five ultra capacitors, the best that Nadezhda can produce."
	icon_state = "box_of_doom"
	illustration = "guild"

/obj/item/storage/box/guild_capacitor/populate_contents()
	for(var/i in 1 to 4)
		new /obj/item/stock_parts/capacitor/handmade(src)


/obj/item/storage/box/njoy
	name = "mix Njoy packet"
	desc = "Packet full of red njoy pills."
	illustration = null
	icon_state = "packet_njoy_mix"
	item_state = "packet_njoy_mix"

/obj/item/storage/box/njoy/red/New()
	. = ..()

/obj/item/storage/box/njoy/red/populate_contents()
	new /obj/item/storage/pill_bottle/njoy/red(src)
	new /obj/item/storage/pill_bottle/njoy/blue(src)
	new /obj/item/storage/pill_bottle/njoy/green(src)


/obj/item/storage/box/njoy/red
	name = "red Njoy packet"
	desc = "Packet full of red njoy pills."
	illustration = null
	icon_state = "packet_njoy_red"
	item_state = "packet_njoy_red"

/obj/item/storage/box/njoy/red/New()
	. = ..()

/obj/item/storage/box/njoy/red/populate_contents()
	for(var/i in 1 to 3)
		new /obj/item/storage/pill_bottle/njoy/red(src)


/obj/item/storage/box/njoy/blue
	name = "blue Njoy packet"
	desc = "Packet full of blue njoy pills."
	illustration = null
	icon_state = "packet_njoy_blue"
	item_state = "packet_njoy_blue"

/obj/item/storage/box/njoy/blue/New()
	. = ..()

/obj/item/storage/box/njoy/blue/populate_contents()
	for(var/i in 1 to 3)
		new /obj/item/storage/pill_bottle/njoy/blue(src)


/obj/item/storage/box/njoy/green
	name = "green Njoy packet"
	desc = "Packet full of green njoy pills."
	illustration = null
	icon_state = "packet_njoy_green"
	item_state = "packet_njoy_green"

/obj/item/storage/box/njoy/green/New()
	. = ..()

/obj/item/storage/box/njoy/green/populate_contents()
	for(var/i in 1 to 3)
		new /obj/item/storage/pill_bottle/njoy/green(src)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
