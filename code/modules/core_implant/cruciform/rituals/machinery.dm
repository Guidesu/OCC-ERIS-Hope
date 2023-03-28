<<<<<<< HEAD
/datum/ritual/cruciform/machines
	name = "machines"
	phrase = null
	implant_type = /obj/item/weapon/implant/core_implant/cruciform
	fail_message = "The Cruciform feels cold against your chest."
	category = "Machinery"



=======
#define REPAIR_DOOR_AMOUNT 10

/datum/ritual/cruciform/machines
	name = "machines"
	phrase = null
	implant_type = /obj/item/implant/core_implant/cruciform
	fail_message = "The Cruciform feels cold against your chest."
	category = "Machinery"

/*
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
//Cloning
/datum/ritual/cruciform/machines/resurrection
	name = "Resurrection"
	phrase = "Qui fuit, et crediderunt in me non morietur in aeternum"
	desc = "A ritual of formation of a new body in a speclially designed machine.  Deceased person's cruciform has to be placed on the scanner then a prayer is to be uttered over the apparatus."
<<<<<<< HEAD
	var/clone_damage = 60

/datum/ritual/cruciform/machines/resurrection/perform(mob/living/carbon/human/user, obj/item/weapon/implant/core_implant/C)
=======

/datum/ritual/cruciform/machines/resurrection/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/list/OBJS = get_front(user)

	var/obj/machinery/neotheology/cloner/pod = locate(/obj/machinery/neotheology/cloner) in OBJS

	if(!pod)
		fail("You fail to find any cloner here.", user, C)
		return FALSE

	if(pod.cloning)
		fail("Cloner is already cloning.", user, C)
		return FALSE

	if(pod.stat & NOPOWER)
		fail("Cloner is off.", user, C)
		return FALSE

<<<<<<< HEAD
	if(pod.start())
		var/damage_modifier = 1
		var/obj/item/weapon/implant/core_implant/cruciform/C_user = user.get_core_implant(/obj/item/weapon/implant/core_implant/cruciform)
		if(C_user.get_module(CRUCIFORM_INQUISITOR) || (C_user.get_module(CRUCIFORM_PRIEST) && C_user.get_module(CRUCIFORM_REDLIGHT)))
			damage_modifier = 0
		else
			if(C_user.get_module(CRUCIFORM_PRIEST))
				damage_modifier = 0.5
		pod.clone_damage = clone_damage * damage_modifier
	return TRUE



////////////////////////BIOMATTER MANIPULATION MULTI MACHINES RITUALS


=======
	pod.start()
	return TRUE
*/

//Airlocks

/datum/ritual/cruciform/machines/lock_door
	name = "Activate hatchway"
	phrase = "Inlaqueatus."
	desc = "Commands a nearby hatchway to be locked or unlocked."

/datum/ritual/cruciform/machines/lock_door/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C)
	var/list/O = get_front(user)

	var/obj/machinery/door/holy/door = locate(/obj/machinery/door/holy) in O

	if(!door)
		fail("You fail to find a compatible door here.", user, C)
		return FALSE

	if(door.stat & (BROKEN))
		fail("[door] is off.", user, C)
		return FALSE

	door.locked ? door.unlock() : door.lock()
	return TRUE

/datum/ritual/cruciform/machines/repair_door
	name = "Repair hatchway"
	phrase = "Redde quod periit."
	desc = "Repairs a nearby hatchway at the cost of some biomatter."

/datum/ritual/cruciform/machines/repair_door/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C)
	var/list/O = get_front(user)

	var/obj/machinery/door/holy/door = locate(/obj/machinery/door/holy) in O
	var/obj/item/stack/material/biomatter/consumable

	if(!door)
		fail("You fail to find a compatible hatchway here.", user, C)
		return FALSE

	if(door.health == door.maxHealth)
		fail("This hatchway doesn\'t need repair.", user, C)
		return FALSE

	var/turf/target_turf = get_step(user, user.dir)
	var/turf/user_turf = get_turf(user)

	for(var/obj/item/stack/material/biomatter/B in target_turf.contents)
		if(B.amount >= REPAIR_DOOR_AMOUNT)
			consumable = B
			break

	if(!consumable)
		for(var/obj/item/stack/material/biomatter/B in user_turf.contents)
			if(B.amount >= REPAIR_DOOR_AMOUNT)
				consumable = B
				break

	if(consumable)
		consumable.use(REPAIR_DOOR_AMOUNT)
		var/obj/effect/overlay/nt_construction/effect = new(target_turf, 50)
		sleep(50)
		door.stat -= BROKEN
		door.health = door.maxHealth
		door.unlock()
		door.close()
		effect.success()
		return TRUE
	else
		fail("Not enough biomatter found to repair the hatchway, you need at least [REPAIR_DOOR_AMOUNT].", user, C)
		return FALSE

////////////////////////BIOMATTER MANIPULATION MULTI MACHINES RITUALS

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
///////////////>Biogenerator manipulation rite</////////////////
/datum/ritual/cruciform/machines/power_biogen_awake
	name = "Power biogenerator song"
	phrase = "Dixitque Deus: Fiat lux. Et facta est lux.  Et lux in tenebris lucet, et renebrae eam non comprehenderunt."
	desc = "A ritual, that can activate or deactivate power biogenerator machine. You should be nearby its metrics screen."
<<<<<<< HEAD


/datum/ritual/cruciform/machines/power_biogen_awake/perform(mob/living/carbon/human/H, obj/item/weapon/implant/core_implant/C)
=======
	nutri_cost = 10
	blood_cost = 10

/datum/ritual/cruciform/machines/power_biogen_awake/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/obj/machinery/multistructure/biogenerator_part/console/biogen_screen = locate() in range(4, H)
	if(biogen_screen && biogen_screen.MS)
		var/datum/multistructure/biogenerator/biogenerator = biogen_screen.MS
		if(biogenerator.working)
			biogenerator.deactivate()
		else
			biogenerator.activate()
<<<<<<< HEAD
		return TRUE

	fail("There are no any power biogenerator screen around you.", H, C)
	return FALSE



=======
		if(H.species?.reagent_tag != IS_SYNTHETIC)
			if(H.nutrition >= nutri_cost)
				H.nutrition -= nutri_cost
			else
				to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
				H.vessel.remove_reagent("blood",blood_cost)
		return TRUE

	fail("There is no power biogenerator screen near you.", H, C)
	return FALSE


>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
////////////////Bioreactor commands

/datum/ritual/cruciform/machines/bioreactor
	name = "Bioreactor command"
<<<<<<< HEAD


/datum/ritual/cruciform/machines/bioreactor/perform(mob/living/carbon/human/H, obj/item/weapon/implant/core_implant/C)
=======
	nutri_cost = 10
	blood_cost = 10


/datum/ritual/cruciform/machines/bioreactor/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/obj/machinery/multistructure/bioreactor_part/console/bioreactor_screen = locate() in range(4, H)
	if(bioreactor_screen && bioreactor_screen.MS)
		var/datum/multistructure/bioreactor/bioreactor = bioreactor_screen.MS
		//to prevent any copypaste
		//let's make it a bit better
		var/success = perform_command(bioreactor)
<<<<<<< HEAD
		return success

	fail("You should be near bioreactor metrics screen.", H, C)
	return FALSE


=======
		if(H.species?.reagent_tag != IS_SYNTHETIC)
			if(H.nutrition >= nutri_cost)
				H.nutrition -= nutri_cost
			else
				to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
				H.vessel.remove_reagent("blood",blood_cost)
		return success

	fail("You should be near the bioreactor metrics screen.", H, C)
	return FALSE

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
//There we perform any manipulations with our bioreactor
//Since console finder code is similar for both rituals
/datum/ritual/cruciform/machines/bioreactor/proc/perform_command(datum/multistructure/bioreactor/bioreactor)
	return

<<<<<<< HEAD


=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
///////////////>Bioreactor pump solution ritual<//////////////////

/datum/ritual/cruciform/machines/bioreactor/solution
	name = "Bioreactor solution pump's lullaby"
	phrase = "Nihil igitur fieri de nihilo posse putandum est."
	desc = "This ritual pump in or pump out solution of bioreactor's chamber. You should stay nearby its screen."

<<<<<<< HEAD

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/datum/ritual/cruciform/machines/bioreactor/solution/perform_command(datum/multistructure/bioreactor/bioreactor)
	if(!bioreactor.chamber_closed)
		return FALSE
	bioreactor.pump_solution()
	var/obj/machinery/multistructure/bioreactor_part/console/bioreactor_console = bioreactor.metrics_screen
	bioreactor_console.ping()
<<<<<<< HEAD
	bioreactor_console.visible_message("Bioreactor produce echoing click and platforms pumps start buzzing.")
=======
	bioreactor_console.visible_message("Bioreactor produces an echoing click. The platforms pumps start buzzing.")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	return TRUE



///////////////>Bioreactor chamber opening song<////////////////

/datum/ritual/cruciform/machines/bioreactor/chamber_doors
	name = "Bioreactor chamber's words"
	phrase = "Constituit quoque ianitores in portis domus Domini ut non ingrederetur eam inmundus in omni."
	desc = "This ritual open or close bioreactor chamber. You should stay nearby its screen."
<<<<<<< HEAD


=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/datum/ritual/cruciform/machines/bioreactor/chamber_doors/perform_command(datum/multistructure/bioreactor/bioreactor)
	if(bioreactor.chamber_solution)
		return FALSE
	bioreactor.toggle_platform_door()
	var/obj/machinery/multistructure/bioreactor_part/console/bioreactor_console = bioreactor.metrics_screen
	bioreactor_console.ping()
<<<<<<< HEAD
	bioreactor_console.visible_message("You hear a loud BANG. Then pause... Chamber's door mechanism start working quietly and softly.")
=======
	bioreactor_console.visible_message("You hear a loud BANG. Then a pause... The chamber's door mechanism moves its position with a quiet grace.")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
