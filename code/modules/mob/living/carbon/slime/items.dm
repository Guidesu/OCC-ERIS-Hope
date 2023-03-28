<<<<<<< HEAD
/obj/item/slime_extract
	name = "slime extract"
	desc = "Goo extracted from a slime. Legends claim these to have \"magical powers\"."
	icon = 'icons/mob/slimes.dmi'
	icon_state = "grey slime extract"
	force = 1.0
	w_class = ITEM_SIZE_TINY
	throwforce = 0
	throw_speed = 3
	throw_range = 6
	origin_tech = list(TECH_BIO = 4)
	reagent_flags = REFILLABLE | DRAINABLE | AMOUNT_VISIBLE
	bad_type = /obj/item/slime_extract
	spawn_blacklisted = TRUE//antag_item_targets
	var/Uses = 1 // uses before it goes inert
	var/enhanced = 0 //has it been enhanced before?

	attackby(obj/item/O, mob/user)
		if(istype(O, /obj/item/slimesteroid2))
			if(enhanced == 1)
				to_chat(user, SPAN_WARNING(" This extract has already been enhanced!"))
				return ..()
			if(Uses == 0)
				to_chat(user, SPAN_WARNING(" You can't enhance a used extract!"))
				return ..()
			to_chat(user, "You apply the enhancer. It now has triple the amount of uses.")
			Uses = 3
			enhanced = 1
			qdel(O)

/obj/item/slime_extract/New()
	..()
	create_reagents(100)
	reagents.add_reagent("slimejelly", 30)

/obj/item/slime_extract/grey
	name = "grey slime extract"
	icon_state = "grey slime extract"

/obj/item/slime_extract/gold
	name = "gold slime extract"
	icon_state = "gold slime extract"

/obj/item/slime_extract/silver
	name = "silver slime extract"
	icon_state = "silver slime extract"

/obj/item/slime_extract/metal
	name = "metal slime extract"
	icon_state = "metal slime extract"

/obj/item/slime_extract/purple
	name = "purple slime extract"
	icon_state = "purple slime extract"

/obj/item/slime_extract/darkpurple
	name = "dark purple slime extract"
	icon_state = "dark purple slime extract"

/obj/item/slime_extract/orange
	name = "orange slime extract"
	icon_state = "orange slime extract"

/obj/item/slime_extract/yellow
	name = "yellow slime extract"
	icon_state = "yellow slime extract"

/obj/item/slime_extract/red
	name = "red slime extract"
	icon_state = "red slime extract"

/obj/item/slime_extract/blue
	name = "blue slime extract"
	icon_state = "blue slime extract"

/obj/item/slime_extract/darkblue
	name = "dark blue slime extract"
	icon_state = "dark blue slime extract"

/obj/item/slime_extract/pink
	name = "pink slime extract"
	icon_state = "pink slime extract"

/obj/item/slime_extract/green
	name = "green slime extract"
	icon_state = "green slime extract"

/obj/item/slime_extract/lightpink
	name = "light pink slime extract"
	icon_state = "light pink slime extract"

/obj/item/slime_extract/black
	name = "black slime extract"
	icon_state = "black slime extract"

/obj/item/slime_extract/oil
	name = "oil slime extract"
	icon_state = "oil slime extract"

/obj/item/slime_extract/adamantine
	name = "adamantine slime extract"
	icon_state = "adamantine slime extract"

/obj/item/slime_extract/bluespace
	name = "bluespace slime extract"
	icon_state = "bluespace slime extract"

/obj/item/slime_extract/pyrite
	name = "pyrite slime extract"
	icon_state = "pyrite slime extract"

/obj/item/slime_extract/cerulean
	name = "cerulean slime extract"
	icon_state = "cerulean slime extract"

/obj/item/slime_extract/sepia
	name = "sepia slime extract"
	icon_state = "sepia slime extract"

/obj/item/slime_extract/rainbow
	name = "rainbow slime extract"
	icon_state = "rainbow slime extract"

////Pet Slime Creation///

/obj/item/slimepotion
=======

////Pet Slime Creation///

/obj/item/slime_potion //need to redo all the slime potions to be a offshoot of this
	name = "used slime potion"
	desc = "A slimy empty bottle."
	icon = 'icons/obj/xenobio.dmi'
	icon_state = "slimejar_empty"

//gets the location of a usedup bottle and replaces it with a empty one.
/obj/item/slime_potion/proc/usedup(obj/item/slime_potion/L as obj)
	var /obj/item/slime_potion/S = new /obj/item/slime_potion
	S.loc = L.loc
	qdel(L)

/obj/item/slime_potion/slime_docile
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "docility potion"
	desc = "A potent chemical mix that will nullify a slime's powers, causing it to become docile and tame."
	icon_state = "slimejar"

<<<<<<< HEAD
	attack(mob/living/carbon/slime/M as mob, mob/user as mob)
		if(!isslime(M))//If target is not a slime.
			to_chat(user, SPAN_WARNING(" The potion only works on baby slimes!"))
			return ..()
		if(M.is_adult) //Can't tame adults
			to_chat(user, SPAN_WARNING(" Only baby slimes can be tamed!"))
			return..()
		if(M.stat)
			to_chat(user, SPAN_WARNING(" The slime is dead!"))
			return..()
		if(M.mind)
			to_chat(user, SPAN_WARNING(" The slime resists!"))
			return ..()
		var/mob/living/simple_animal/slime/pet = new /mob/living/simple_animal/slime(M.loc)
		pet.icon_state = "[M.colour] baby slime"
		pet.icon_living = "[M.colour] baby slime"
		pet.icon_dead = "[M.colour] baby slime dead"
		pet.colour = "[M.colour]"
		to_chat(user, "You feed the slime the potion, removing it's powers and calming it.")
		qdel(M)
		var/newname = sanitize(input(user, "Would you like to give the slime a name?", "Name your new pet", "pet slime") as null|text, MAX_NAME_LEN)
=======
/obj/item/slime_potion/slime_docile/attack(mob/living/carbon/slime/M as mob, mob/user as mob)
	if(!isslime(M))//If target is not a slime.
		to_chat(user, SPAN_WARNING(" The potion only works on baby slimes!"))
		return ..()
	if(M.is_adult) //Can't tame adults
		to_chat(user, SPAN_WARNING(" Only baby slimes can be tamed!"))
		return..()
	if(M.stat)
		to_chat(user, SPAN_WARNING(" The slime is dead!"))
		return..()
	if(M.mind)
		to_chat(user, SPAN_WARNING(" The slime resists!"))
		return ..()
	var/mob/living/simple_animal/slime/pet = new /mob/living/simple_animal/slime(M.loc)
	pet.icon_state = "[M.colour] baby slime"
	pet.icon_living = "[M.colour] baby slime"
	pet.icon_dead = "[M.colour] baby slime dead"
	pet.colour = "[M.colour]"
	to_chat(user, "You feed the slime the potion, removing it's powers and calming it.")
	qdel(M)
	var/newname = sanitize(input(user, "Would you like to give the slime a name?", "Name your new pet", "pet slime") as null|text, MAX_NAME_LEN)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if (!newname)
		newname = "pet slime"
	pet.name = newname
	pet.real_name = newname
	pet.colony_friend = TRUE //Hardcode hack to make sure
	usedup(src)

<<<<<<< HEAD
/obj/item/slimepotion2
=======
/obj/item/slime_potion/slime_docile_adult
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "advanced docility potion"
	desc = "A potent chemical mix that will nullify a slime's powers, causing it to become docile and tame. This one is meant for adult slimes"
	icon_state = "slimejar"

<<<<<<< HEAD
	attack(mob/living/carbon/slime/M as mob, mob/user as mob)
		if(!istype(M, /mob/living/carbon/slime/))//If target is not a slime.
			to_chat(user, SPAN_WARNING(" The potion only works on slimes!"))
			return ..()
		if(M.stat)
			to_chat(user, SPAN_WARNING(" The slime is dead!"))
			return..()
		if(M.mind)
			to_chat(user, SPAN_WARNING(" The slime resists!"))
			return ..()
		var/mob/living/simple_animal/adultslime/pet = new /mob/living/simple_animal/adultslime(M.loc)
		pet.icon_state = "[M.colour] adult slime"
		pet.icon_living = "[M.colour] adult slime"
		pet.icon_dead = "[M.colour] baby slime dead"
		pet.colour = "[M.colour]"
		to_chat(user, "You feed the slime the potion, removing it's powers and calming it.")
		qdel(M)
		var/newname = sanitize(input(user, "Would you like to give the slime a name?", "Name your new pet", "pet slime") as null|text, MAX_NAME_LEN)
=======
/obj/item/slime_potion/slime_docile_adult/attack(mob/living/carbon/slime/M as mob, mob/user as mob)
	if(!istype(M, /mob/living/carbon/slime/))//If target is not a slime.
		to_chat(user, SPAN_WARNING(" The potion only works on slimes!"))
		return ..()
	if(M.stat)
		to_chat(user, SPAN_WARNING(" The slime is dead!"))
		return..()
	if(M.mind)
		to_chat(user, SPAN_WARNING(" The slime resists!"))
		return ..()
	var/mob/living/simple_animal/slime/adultslime/pet = new /mob/living/simple_animal/slime/adultslime(M.loc)
	pet.icon_state = "[M.colour] adult slime"
	pet.icon_living = "[M.colour] adult slime"
	pet.icon_dead = "[M.colour] baby slime dead"
	pet.colour = "[M.colour]"
	to_chat(user, "You feed the slime the potion, removing it's powers and calming it.")
	qdel(M)
	var/newname = sanitize(input(user, "Would you like to give the slime a name?", "Name your new pet", "pet slime") as null|text, MAX_NAME_LEN)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if (!newname)
		newname = "pet slime"
	pet.name = newname
	pet.real_name = newname
	pet.colony_friend = TRUE //Hardcode hack to make sure
	usedup(src)


<<<<<<< HEAD
/obj/item/slimesteroid
=======
/obj/item/slime_potion/slimesteroid
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "slime steroid"
	desc = "A potent chemical mix that will cause a slime to generate more extract."
	icon_state = "slimejar"

<<<<<<< HEAD
	attack(mob/living/carbon/slime/M as mob, mob/user as mob)
		if(!isslime(M))//If target is not a slime.
			to_chat(user, SPAN_WARNING(" The steroid only works on baby slimes!"))
			return ..()
		if(M.is_adult) //Can't tame adults
			to_chat(user, SPAN_WARNING(" Only baby slimes can use the steroid!"))
			return..()
		if(M.stat)
			to_chat(user, SPAN_WARNING(" The slime is dead!"))
			return..()
		if(M.cores == 3)
			to_chat(user, SPAN_WARNING(" The slime already has the maximum amount of extract!"))
			return..()

		to_chat(user, "You feed the slime the steroid. It now has triple the amount of extract.")
		M.cores = 3
		qdel(src)

=======
/obj/item/slime_potion/slimesteroid/attack(mob/living/carbon/slime/M as mob, mob/user as mob)
	if(!isslime(M))//If target is not a slime.
		to_chat(user, SPAN_WARNING(" The steroid only works on baby slimes!"))
		return ..()
	if(M.is_adult) //Can't tame adults
		to_chat(user, SPAN_WARNING(" Only baby slimes can use the steroid!"))
		return..()
	if(M.stat)
		to_chat(user, SPAN_WARNING(" The slime is dead!"))
		return..()
	if(M.cores == 3)
		to_chat(user, SPAN_WARNING(" The slime already has the maximum amount of extract!"))
		return..()

	to_chat(user, "You feed the slime the steroid. It now has triple the amount of extract.")
	M.cores = 3
	usedup(src)

/obj/item/slime_potion/slimes_speed
	name = "red slime tonic"
	desc = "A potent chemical mix that will cause any clothing item to move slightly faster."
	icon_state = "slimejar"
	color = "#FF4444"

/obj/item/slime_potion/slimes_speed/attackby(var/obj/item/clothing/C, mob/user as mob)
	..()
	if(C.slowdown < 0)//If target isn't already zooming
		to_chat(user, SPAN_WARNING("The tonic cant speed up this cloathing any more!"))
		return ..()

	to_chat(user, "The tonic works it magic making the cloathing slightly faster.")
	C.slowdown -= 0.1
	C.color = "#FF4444"
	usedup(src)


>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/slimesteroid2
	name = "extract enhancer"
	desc = "A potent chemical mix that will give a slime extract three uses."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bottle17"

	/*afterattack(obj/target, mob/user , flag)
		if(istype(target, /obj/item/slime_extract))
			if(target.enhanced == 1)
				to_chat(user, SPAN_WARNING(" This extract has already been enhanced!"))
				return ..()
			if(target.Uses == 0)
				to_chat(user, SPAN_WARNING(" You can't enhance a used extract!"))
				return ..()
			to_chat(user, "You apply the enhancer. It now has triple the amount of uses.")
			target.Uses = 3
			target.enahnced = 1
			qdel(src)*/

/obj/item/slime_potion/slimes_fire_resist
	name = "orange slime tonic"
	desc = "A potent chemical mix that will cause any clothing item to resist heat and pressure."
	icon_state = "slimejar"
	color = "#ff9900"

/obj/item/slime_potion/slimes_fire_resist/attackby(var/obj/item/clothing/C, mob/user as mob)
	..()
	if(C.max_heat_protection_temperature == FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE && C.item_flags == STOPPRESSUREDAMAGE)
		to_chat(user, SPAN_WARNING("The tonic can't modify this clothing anymore!"))
		return ..()

	to_chat(user, "The tonic works it magic!")
	C.max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	C.item_flags = STOPPRESSUREDAMAGE
	C.color = "#ff9900"
	usedup(src)

/obj/item/slime_potion/slimes_shock_resist
	name = "yellow slime tonic"
	desc = "A potent chemical mix that will cause any clothing item to resist heat and pressure."
	icon_state = "slimejar"
	color = "#ffff00"

/obj/item/slime_potion/slimes_shock_resist/attackby(var/obj/item/clothing/gloves/C, mob/user as mob)
	..()
	if(C.siemens_coefficient <= 0)
		to_chat(user, SPAN_WARNING("The tonic can't modify this clothing anymore!"))
		return ..()

	to_chat(user, "The tonic improves the clothes!")
	C.siemens_coefficient -= 0.2
	if(C.siemens_coefficient < 0)
		C.siemens_coefficient = 0 // Don't want to risk healing from a super resist
	C.color = "#ffff00"
	usedup(src)

/obj/item/slime_potion/slimes_reviver
	name = "compressed jelly jar"
	desc = "A mass of slime jelly just awaiting to be pressed into a dead slime."
	icon_state = "slimejar"

/obj/item/slime_potion/slimes_reviver/attack(mob/living/carbon/slime/S, mob/user as mob)
	..()
	if(S.cores != 0 && S.stat == 2)
		S.health = 80
		S.stat = 0
		S.update_icon()
		to_chat(user, SPAN_WARNING("The slime is revived!"))
		usedup(src)
	else to_chat(user, SPAN_WARNING("This slime isn't able to be revived."))

/obj/effect/golemrune
	anchored = TRUE
	desc = "a strange rune used to create golems. It glows when spirits are nearby."
	name = "rune"
	icon = 'icons/obj/rune.dmi'
	icon_state = "golem"
	unacidable = 1
	layer = TURF_LAYER

	New()
		..()
		START_PROCESSING(SSobj, src)

	Process()
		var/mob/observer/ghost/ghost
		for(var/mob/observer/ghost/O in src.loc)
			if(!O.client)	continue
			if(O.mind && O.mind.current && O.mind.current.stat != DEAD)	continue
			ghost = O
			break
		if(ghost)
			icon_state = "golem2"
		else
			icon_state = "golem"

	attack_hand(mob/living/user as mob)
		var/mob/observer/ghost/ghost
		for(var/mob/observer/ghost/O in src.loc)
			if(!O.client)	continue
			if(O.mind && O.mind.current && O.mind.current.stat != DEAD)	continue
			ghost = O
			break
		if(!ghost)
			to_chat(user, "The rune fizzles uselessly. There is no spirit nearby.")
			return
		var/mob/living/carbon/human/G = new(src.loc)
		G.set_species("Golem")
		G.key = ghost.key
		to_chat(G, "You are an adamantine golem. You move slowly, but are highly resistant to heat and cold as well as blunt trauma. You are unable to wear clothes, but can still use most tools. Serve [user], and assist them in completing their goals at any cost.")
		qdel(src)


	proc/announce_to_ghosts()
		for(var/mob/observer/ghost/G in GLOB.player_list)
			if(G.client)
				var/area/A = get_area(src)
				if(A)
					to_chat(G, "Golem rune created in [A.name].")

/mob/living/carbon/slime/has_eyes()
	return 0


//Green slime demutation
/obj/item/genetics/purger/slime
	name = "Slime Mutagenic Purger"
	desc = "An slime verson of gene-fixer specifically purges mutations from the body."

//Oil slime

/obj/item/slime_thermals
	name = "thermal coating"
	desc = "A potent chemical mix that will when added to a guns scope allow themeral slight."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bottle19"

/obj/item/slime_thermals/New()
	..()
	var/datum/component/item_upgrade/I = AddComponent(/datum/component/item_upgrade)
	I.weapon_upgrades = list(
		GUN_UPGRADE_THERMAL = TRUE
		)
	I.gun_loc_tag = GUN_SIGHT
	I.prefix = "slime lens"
