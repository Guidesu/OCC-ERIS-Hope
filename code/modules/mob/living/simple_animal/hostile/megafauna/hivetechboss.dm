/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant
	name = "Hivemind Tyrant"
	desc = "Hivemind's will, manifested in flesh and metal."

	faction = "hive"
<<<<<<< HEAD
	mob_size = MOB_HUGE
=======

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/mob/64x64.dmi'
	icon_state = "hivemind_tyrant"
	icon_living = "hivemind_tyrant"
	icon_dead = "hivemind_tyrant"
	pixel_x = -16
	ranged = TRUE

	health = 2500
	maxHealth = 2500
	break_stuff_probability = 95

<<<<<<< HEAD
	melee_damage_lower = 10
	melee_damage_upper = 20
	megafauna_min_cooldown = 50
	megafauna_max_cooldown = 80
=======
	melee_damage_lower = 40
	melee_damage_upper = 50
	megafauna_min_cooldown = 50
	megafauna_max_cooldown = 80
	vision_range = 16
	aggro_vision_range = 16
	sanity_damage = 3
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


	var/health_marker_1 = 0//1700
	var/health_marker_2 = 0//900
	var/health_marker_3 = 0//100
<<<<<<< HEAD

	projectiletype = /obj/item/projectile/goo

/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/death()
	..()
	delhivetech()
	walk(src, 0)
=======
	mob_classification = CLASSIFICATION_SYNTHETIC
	projectiletype = /obj/item/projectile/goo

/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/emp_act(severity)
	..()
	switch(severity)
		if(1)
			adjustFireLoss(rand(500,700))
		if(2)
			adjustFireLoss(rand(250,500))
		if(3)
			adjustFireLoss(rand(125,250))

/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/death()
	..()
	if(GLOB.hive_data_bool["tyrant_death_kills_hive"])
		delhivetech()
	SSmove_manager.stop_looping(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/proc/telenode()
	var/list/atom/NODES = list()
	for(var/obj/machinery/hivemind_machine/node/NODE in world)
		NODES.Add(NODE.loc)
	if(length(NODES) > 0)
		forceMove(pick(NODES))

/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/proc/delhivetech()
	var/othertyrant = 0
	for(var/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/HT in world)
		if(HT != src)
			othertyrant = 1
	if(othertyrant == 0)
		for(var/obj/machinery/hivemind_machine/NODE in world)
<<<<<<< HEAD
			qdel(NODE)
=======
			NODE.destruct()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/Life()

	. = ..()
	if(!.)
<<<<<<< HEAD
		walk(src, 0)
=======
		SSmove_manager.stop_looping(src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return 0
	if(client)
		return 0

	if(!health_marker_1 && health < 1700)
		health_marker_1 = !health_marker_1
		telenode()

	if(!health_marker_2 && health < 900)
		health_marker_2 = !health_marker_2
		telenode()

	if(!health_marker_3 && health < 100)
		health_marker_3 = !health_marker_3
		telenode()

<<<<<<< HEAD
	if(!stat)
		switch(stance)
			if(HOSTILE_STANCE_IDLE)
				target_mob = FindTarget()

			if(HOSTILE_STANCE_ATTACK)
				if(destroy_surroundings)
					DestroySurroundings()
				MoveToTarget()

			if(HOSTILE_STANCE_ATTACKING)
				if(destroy_surroundings)
					DestroySurroundings()
				AttackTarget()

/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/OpenFire()
	anger_modifier = CLAMP(((maxHealth - health)/50),0,20)
	ranged_cooldown = world.time + 120
	walk(src, 0)
	telegraph()
	if(prob(50))
		random_shots()
		move_to_delay = initial(move_to_delay)
		MoveToTarget()
		return
	else
		select_spiral_attack()
		move_to_delay = initial(move_to_delay)
		MoveToTarget()
		return
=======
/mob/living/simple_animal/hostile/megafauna/hivemind_tyrant/OpenFire()
	anger_modifier = CLAMP(((maxHealth - health)/50),0,20)
	ranged_cooldown = world.time + 120
	SSmove_manager.stop_looping(src)
	telegraph()
	spawn(rand(megafauna_min_cooldown, megafauna_max_cooldown))
		if(prob(50))
			random_shots()
			move_to_delay = initial(move_to_delay)
			MoveToTarget()
			return
		else
			select_spiral_attack()
			move_to_delay = initial(move_to_delay)
			MoveToTarget()
			return
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
