//Space bears!
/mob/living/simple_animal/hostile/bear
	name = "black bear"
	desc = "A bear of the common black bear variety."
	icon = 'icons/mob/mobs-bear.dmi'
	icon_state = "bearfloor"
	icon_gib = "bear_gib"
	icon_dead = "bear_dead"
	speak_emote = list("growls", "roars")
	emote_see = list("stares ferociously", "stomps")
	speak_chance = 1
	turns_per_move = 5
	see_in_dark = 6
	meat_type = /obj/item/reagent_containers/food/snacks/meat/bearmeat
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "pokes"
	stop_automated_movement_when_pulled = 0
	maxHealth = 60
	health = 60
	melee_damage_lower = 20
	melee_damage_upper = 30
	attack_sound = 'sound/effects/creatures/maul.ogg'
	leather_amount = 6
	bones_amount = 4
	special_parts = list(/obj/item/animal_part/wolf_tooth)
	faction = "russian"
<<<<<<< HEAD

//SPACE BEARS! SQUEEEEEEEE~     OW! FUCK! IT BIT MY HAND OFF!!
/mob/living/simple_animal/hostile/bear/Hudson
	name = "Hudson"
	desc = ""
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "pokes"

/mob/living/simple_animal/hostile/bear/Life()
	. =..()
	if(!.)
		return

	if(loc && istype(loc,/turf/space))
		icon_state = "bear"
	else
		icon_state = "bearfloor"

	switch(stance)

		if(HOSTILE_STANCE_TIRED)
			stop_automated_movement = 1
			stance_step++
			if(stance_step >= 10) //rests for 10 ticks
				if(target_mob && (target_mob in ListTargets(10)))
					stance = HOSTILE_STANCE_ATTACK //If the mob he was chasing is still nearby, resume the attack, otherwise go idle.
				else
					stance = HOSTILE_STANCE_IDLE

		if(HOSTILE_STANCE_ALERT)
			stop_automated_movement = 1
			var/found_mob = 0
			if(target_mob && (target_mob in ListTargets(10)))
				if(!(SA_attackable(target_mob)))
					stance_step = max(0, stance_step) //If we have not seen a mob in a while, the stance_step will be negative, we need to reset it to 0 as soon as we see a mob again.
					stance_step++
					found_mob = 1
					src.set_dir(get_dir(src,target_mob))	//Keep staring at the mob

					if(stance_step in list(1,4,7)) //every 3 ticks
						var/action = pick( list( "growls at [target_mob].", "stares angrily at [target_mob].", "prepares to attack [target_mob]!", "closely watches [target_mob]." ) )
						if(action)
							visible_emote(action)
			if(!found_mob)
				stance_step--

			if(stance_step <= -20) //If we have not found a mob for 20-ish ticks, revert to idle mode
				stance = HOSTILE_STANCE_IDLE
			if(stance_step >= 7)   //If we have been staring at a mob for 7 ticks,
				stance = HOSTILE_STANCE_ATTACK

		if(HOSTILE_STANCE_ATTACKING)
			if(stance_step >= 20)	//attacks for 20 ticks, then it gets tired and needs to rest
				visible_emote("is worn out and needs to rest.")
				stance = HOSTILE_STANCE_TIRED
				stance_step = 0
				walk(src, 0) //This stops the bear's walking
				return



/mob/living/simple_animal/hostile/bear/attackby(var/obj/item/O as obj, var/mob/user as mob)
	if(stance != HOSTILE_STANCE_ATTACK && stance != HOSTILE_STANCE_ATTACKING)
		stance = HOSTILE_STANCE_ALERT
		stance_step = 6
		target_mob = user
	..()

/mob/living/simple_animal/hostile/bear/attack_hand(mob/living/carbon/human/M as mob)
	if(stance != HOSTILE_STANCE_ATTACK && stance != HOSTILE_STANCE_ATTACKING)
		stance = HOSTILE_STANCE_ALERT
		stance_step = 6
		target_mob = M
	..()

/mob/living/simple_animal/hostile/bear/allow_spacemove()
	return ..()//No drifting in space for space bears!
=======
	inherent_mutations = list(MUTATION_EPILEPSY, MUTATION_THICK_FUR, MUTATION_IMBECILE, MUTATION_NERVOUSNESS)
	var/horror_modifer = TRUE // For-admins to turn this off
	var/rawr_cooldown = FALSE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/mob/living/simple_animal/hostile/bear/FindTarget()
	. = ..()
	if(.)
<<<<<<< HEAD
		visible_emote("stares alertly at [.].")
		stance = HOSTILE_STANCE_ALERT

/mob/living/simple_animal/hostile/bear/LoseTarget()
	..(5)

/mob/living/simple_animal/hostile/bear/AttackingTarget()
	if(!Adjacent(target_mob))
		return
	visible_emote(list("slashes at [target_mob]!", "bites [target_mob]!"))

	var/damage = rand(20,30)

	if(ishuman(target_mob))
		var/mob/living/carbon/human/H = target_mob
		var/dam_zone = pick(BP_CHEST, BP_L_HAND, BP_R_HAND, BP_L_LEG , BP_R_LEG)
		var/obj/item/organ/external/affecting = H.get_organ(ran_zone(dam_zone))
		H.damage_through_armor(damage, BRUTE, affecting, ARMOR_MELEE, 0, 0, sharp = TRUE, edge = TRUE)

		return H
	else if(isliving(target_mob))
		var/mob/living/L = target_mob
		L.adjustBruteLoss(damage)
		return L
=======
		playsound(src, 'sound/effects/creatures/bear.ogg', 100, 1, -3)

/mob/living/simple_animal/hostile/bear/proc/rawr_xd()
	if(health >= 15) //to weak to rawr if less then 15 health
		visible_message(SPAN_DANGER("[src] stands up and roars!"))
		playsound(src, 'sound/effects/creatures/bear.ogg', 100, 1, -3)
		for(var/mob/living/carbon/human/H in range(5,src))
			if(istype(H))
				if(prob(100 - H.stats.getStat(STAT_VIG))) //Kinda a hard check-ish but cant stack
					H.stats.addTempStat(STAT_VIG, -STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.stats.addTempStat(STAT_COG, -STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.stats.addTempStat(STAT_BIO, -STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.stats.addTempStat(STAT_MEC, -STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.stats.addTempStat(STAT_ROB, STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.stats.addTempStat(STAT_TGH, STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.added_movedelay -= 0.1
					addtimer(CALLBACK(H, /mob/living/carbon/human/proc/clear_movement_delay, -0.1), 60)
					to_chat(H, SPAN_WARNING("\The [src] 's roar triggers the familiar feeling of flight or fight in you!"))
				else
					to_chat(H, SPAN_NOTICE("The natural insticts of fear become apparent, but you ignore such things."))
					H.stats.addTempStat(STAT_VIG, STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.stats.addTempStat(STAT_TGH, STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.stats.addTempStat(STAT_ROB, STAT_LEVEL_ADEPT, 30 SECONDS, "fear_of_bear")
					H.added_movedelay -= 0.1
					addtimer(CALLBACK(H, /mob/living/carbon/human/proc/clear_movement_delay, -0.1), 60) //Needs to be a negative as it subtracts meaning its - - 0.1 (aka doble negitive so it adds)

		anchored = TRUE
		addtimer(CALLBACK(src, .proc/unanchor), 10)


/mob/living/simple_animal/hostile/bear/proc/unanchor()
	anchored = FALSE
	addtimer(CALLBACK(src, .proc/rawr_xd_recharge), 120) //should be tolds of time for people to kill the bear

/mob/living/simple_animal/hostile/bear/proc/rawr_xd_recharge()
	rawr_cooldown = FALSE

//Copy pasted for hostile.dm more complicated verson
/mob/living/simple_animal/hostile/bear/MoveToTarget()
	var/mob/living/targetted_mob = (target_mob?.resolve())

	stop_automated_movement = TRUE
	if(!targetted_mob || SA_attackable(targetted_mob))
		stance = HOSTILE_STANCE_IDLE
	if(targetted_mob in ListTargets(10))
		if(!anchored)
			if(ranged)
				if(prob(45))
					stance = HOSTILE_STANCE_ATTACKING
					set_glide_size(DELAY2GLIDESIZE(move_to_delay))
					SSmove_manager.move_to(src, targetted_mob, 1, move_to_delay)
				else
					OpenFire(targetted_mob)
			else
				stance = HOSTILE_STANCE_ATTACKING
				set_glide_size(DELAY2GLIDESIZE(move_to_delay))
				SSmove_manager.move_to(src, targetted_mob, 1, move_to_delay)

	if(horror_modifer && !rawr_cooldown)
		rawr_xd()
		rawr_cooldown = TRUE
	return FALSE

/mob/living/simple_animal/hostile/bear/hudson
	name = "Hudson"
	desc = "A legendary black space bear. It's quite sparkly."
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "pokes"
	icon_state = "space_bear"
	icon_gib = "bear_gib"
	icon_dead = "space_bear_dead"
	maxHealth = 120
	health = 120
	melee_damage_lower = 30
	melee_damage_upper = 40

/mob/living/simple_animal/hostile/bear/brown
	name = "brown bear"
	desc = "A bear of the common brown bear variety."
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "pokes"
	icon_state = "brownbear"
	icon_gib = "brownbear_gib"
	icon_dead = "brownbear_dead"

/mob/living/simple_animal/hostile/bear/polar
	name = "polar bear"
	desc = "A bear of the uncommon polar bear variety."
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "pokes"
	icon_state = "polarbear"
	icon_gib = "brownbear_gib"
	icon_dead = "polarbear_dead"

/mob/living/simple_animal/hostile/bear/excelsior
	name = "excelsior armored bear"
	desc = "A huge bear outfitted with armor and trained by the excelsior judging from the markings on his armor. Who comes up with this shit?"
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "pokes"
	icon_state = "combatbear"
	icon_gib = "brownbear_gib"
	icon_dead = "combatbear_dead"
	faction = "excelsior"
	armor = list(melee = 20, bullet = 15, energy = 5, bomb = 10, bio = 100, rad = 100, agony = 0) // It's an ARMORED bear
	maxHealth = 400
	health = 400
	melee_damage_lower = 30
	melee_damage_upper = 40
	special_parts = list(/obj/item/animal_part/wolf_tooth,/obj/item/animal_part/wolf_tooth)

// Credit to scar#1579 for the sprite.
/mob/living/simple_animal/hostile/bear/mukwah
	name = "mukwah"
	desc = "A bear that escaped from the abandoned zoo labs before mutating into a creature known as a mukwah. Unlike a standard bear, a mukwah is much more powerful, a heavy hitter that is \
	slow but with a strength that exceeds even other powerful fauna."
	icon = 'icons/mob/64x64.dmi'
	icon_state = "yaoguai"
	icon_dead = "yaoguai_dead"
	maxHealth = 400
	health = 400
	melee_damage_lower = 40 //Low health but an extremely powerful hitter
	melee_damage_upper = 50 //You call 400 HP LOW HEALTH?! - Seb
	leather_amount = 10
	bones_amount = 10
	pixel_x = -16
	special_parts = list(/obj/item/animal_part/wolf_tooth,/obj/item/animal_part/wolf_tooth)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
