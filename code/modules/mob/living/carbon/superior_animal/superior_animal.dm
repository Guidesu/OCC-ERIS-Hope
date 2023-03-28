<<<<<<< HEAD
/mob/living/carbon/superior_animal
	name = "superior animal"
	desc = "You should not see this."

	mob_bump_flag = SIMPLE_ANIMAL
	mob_swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	mob_push_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	mob_size = MOB_SMALL //MOB_MINISCULE MOB_TINY MOB_SMALL MOB_MEDIUM MOB_LARGE
	a_intent = I_HURT

	icon = 'icons/mob/animal.dmi'
	icon_state = "tomato"
	// AI activation for players is handled in sanity , if it has sanity damage it activates AI.
	sanity_damage = 0.5

	var/icon_living
	var/icon_dead
	var/icon_rest //resting/unconscious animation
	var/icon_gib //gibbing animation
	var/icon_dust //dusting animation
	var/dust_remains = /obj/effect/decal/cleanable/ash //what remains if mob turns to dust
	var/randpixel = 9 //Mob may be offset randomly on both axes by this much

	var/overkill_gib = 17 //0 to disable, gib when at maxhealth*2 brute loss and hit with at least overkill_gib brute damage
	var/overkill_dust = 20 //0 to disable, dust when at maxhealth*2 fire loss and hit with at least overkill_dust fire damage, or from 2*max_bodytemperature

	var/emote_see = list() //chat emotes
	var/speak_chance = 2 //percentage chance of speaking a line from 'emote_see'

	var/turns_per_move = 3 //number of life ticks per random movement
	var/turns_since_move = 0 //number of life ticks since last random movement
	var/wander = 1 //perform automated random movement when idle
	var/stop_automated_movement = 0 //use this to temporarely stop random movement
	var/stop_automated_movement_when_pulled = 0

	var/contaminant_immunity = FALSE //if TRUE, mob is immune to harmful contaminants in air (plasma), skin contact, does not relate to breathing
	var/cold_protection = 0 //0 to 1 value, which corresponds to the percentage of protection, affects only bodytemperature
	var/heat_protection = 0
	var/breath_required_type = "oxygen" //0 to disable, oxyloss if absent in sufficient quantity
	var/breath_poison_type = "phoron" //0 to disable, toxloss if present in sufficient quantity
	var/min_breath_required_type = 16 //minimum portion of gas in a single breath
	var/min_breath_poison_type = 0.2 //minimum portion of gas in a single breath
	var/light_dam = 0 //0 to disable, minimum amount of lums to cause damage, otherwise heals in darkness
	var/hunger_factor = 0 //0 to disable, how much nutrition is consumed per life tick


	var/min_air_pressure = 50 //below this, brute damage is dealt
	var/max_air_pressure = 300 //above this, brute damage is dealt
	var/min_bodytemperature = 200 //below this, burn damage is dealt
	var/max_bodytemperature = 360 //above this, burn damage is dealt

	var/deathmessage = "dies."
	var/attacktext = "bitten"
	var/attack_sound = 'sound/weapons/spiderlunge.ogg'
	var/attack_sound_chance = 33
	var/attack_sound_volume = 20

	var/meat_type = /obj/item/reagent_containers/food/snacks/meat/roachmeat
	var/meat_amount = 3

	var/melee_damage_lower = 0
	var/melee_damage_upper = 10

	var/list/objectsInView //memoization for getObjectsInView()
	var/viewRange = 7 //how far the mob AI can see
	var/acceptableTargetDistance = 1 //consider all targets within this range equally

	var/stance = HOSTILE_STANCE_IDLE //current mob AI state
	var/atom/target_mob //currently chased target
	var/attack_same = 0 //whether mob AI should target own faction members for attacks
	var/list/friends = list() //list of mobs to consider friends, not types
	var/environment_smash = 1
	var/destroy_surroundings = 1
	var/break_stuff_probability = 100
	can_burrow = TRUE
	var/extra_burrow_chance = 1 //The chance that this animal will spawn another burrow in its vicinity
	//This is in addition to the single guaranteed burrow that always exists in sight of any burrowing mob

	var/bad_environment = FALSE //Briefly set true whenever anything in the atmosphere damages this mob
	//When this is true, mobs will attempt to evacuate via the nearest burrow

	var/busy = 0 // status of the animal, if it is doing a special task (eating, spinning web) we still want it
	// in HOSTILE_STANCE_IDLE to react to threat but we don't want stop_automated_movement set back to 0 in Life()

	var/fleshcolor = "#666600"
	var/bloodcolor = "#666600"

	var/ranged = 0 //will it shoot?
	var/rapid = 0 //will it shoot fast?
	var/projectiletype
	var/projectilesound
	var/casingtype
	var/ranged_cooldown
	var/fire_verb //what does it do when it shoots?
	var/kept_distance //how far away will it be before it stops moving closer

	var/grabbed_by_friend = FALSE //is this superior_animal being wrangled?
	var/ticks_processed = 0

=======
// superior_animal and definition moved to superior_defines.dm
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/mob/living/carbon/superior_animal/New()
	..()

	GLOB.superior_animal_list += src

	if(!icon_living)
		icon_living = icon_state
	if(!icon_dead)
		icon_dead = "[icon_state]_dead"

	objectsInView = new

<<<<<<< HEAD
	verbs -= /mob/verb/observe
	pixel_x = RAND_DECIMAL(-randpixel, randpixel)
	pixel_y = RAND_DECIMAL(-randpixel, randpixel)

	// OCCULUS EDIT: Insert code for random roach sizes
	if (istype(src, /mob/living/carbon/superior_animal/roach))
		roach_counter++
		var/mob/living/carbon/superior_animal/roach/this_roach = src
		this_roach.randomize_scale()
		this_roach.update_icons()
	// OCCULUS EDIT END
=======
	full_reload_message  = "[reload_message]"
	reload_message = "[name] [full_reload_message]"

	verbs -= /mob/verb/observe
	pixel_x = RAND_DECIMAL(-randpixel, randpixel)
	pixel_y = RAND_DECIMAL(-randpixel, randpixel)

	GLOB.superior_animal_list += src

	for(var/language as anything in known_languages)
		add_language(language)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/mob/living/carbon/superior_animal/Initialize(var/mapload)
	if (get_stat_modifier)
		for (var/key as anything in allowed_stat_modifiers)
			var/datum/stat_modifier/mod = key
			if (initial(mod.stattags) & NOTHING_STATTAG)
				continue
			if (initial(mod.stattags) & DEFENSE_STATTAG)
				continue
			if ((!(initial(mod.stattags) & MELEE_STATTAG)) && (!ranged))
				allowed_stat_modifiers -= mod
				continue
			if ((!(initial(mod.stattags) & RANGED_STATTAG)) && (ranged))
				allowed_stat_modifiers -= mod
				continue

	.=..()
	if (mapload && can_burrow)
		find_or_create_burrow(get_turf(src))
		if (prob(extra_burrow_chance))
			create_burrow(get_turf(src))

	RegisterSignal(src, COMSIG_ATTACKED, .proc/react_to_attack)

/mob/living/carbon/superior_animal/Destroy()
	GLOB.superior_animal_list -= src
<<<<<<< HEAD
=======

	target_mob = null

	LAZYCLEARLIST(objectsInView)
	LAZYCLEARLIST(friends)

	UnregisterSignal(src, COMSIG_ATTACKED)

	lastarea = null

	known_languages = null
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	. = ..()

/mob/living/carbon/superior_animal/u_equip(obj/item/W)
	return

/mob/living/carbon/superior_animal/proc/visible_emote(message)
	if(islist(message))
		message = safepick(message)
	if(message)
		visible_message("<span class='name'>[src]</span> [message]")

/mob/living/carbon/superior_animal/update_icons()
	. = ..()
<<<<<<< HEAD
	transform = null
	// OCCULUS EDIT: update_icons wasn't updating their scale until the first move.
	var/matrix/scale_M = matrix()
	scale_M.Scale(size_multiplier)
	scale_M.Translate(0, 16*(size_multiplier-1))
	transform = scale_M
	// OCCULUS EDIT END
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (stat == DEAD)
		icon_state = icon_dead
	else if ((stat == UNCONSCIOUS) || resting || lying)
		if (icon_rest)
			icon_state = icon_rest
		else
			if (icon_living)
				icon_state = icon_living
		add_new_transformation(/datum/transform_type/prone)
	else
		remove_transformation(PRONE_TRANSFORM)
		if (icon_living)
			icon_state = icon_living

/mob/living/carbon/superior_animal/regenerate_icons()
	. = ..()
	update_icons()

/mob/living/carbon/superior_animal/updateicon()
	. = ..()
<<<<<<< HEAD
	update_icons()

// Same as breath but with innecesarry code removed and damage tripled. Environment pressure damage moved here since we handle moles.
/mob/living/carbon/superior_animal/proc/handle_cheap_breath(datum/gas_mixture/breath as anything)
	if(!(breath.total_moles))
		if(min_air_pressure)
			adjustBruteLoss(6)
		if(breath_required_type)
			adjustOxyLoss(6)
		bad_environment = TRUE
		return FALSE // in either cases , no breath poison type to handle
	var/breath_pressure = (breath.total_moles*R_IDEAL_GAS_EQUATION*breath.temperature)/BREATH_VOLUME
	if(breath_required_type)
		var/inhaling = breath.gas[breath_required_type]
		var/inhale_pp = (inhaling/breath.total_moles)*breath_pressure
		if(inhale_pp < min_breath_required_type)
			adjustOxyLoss(6)
			bad_environment = TRUE
	if(breath_poison_type)
		var/poison = breath.gas[breath_poison_type]
		var/toxins_pp = (poison/breath.total_moles)*breath_pressure
		if(toxins_pp > min_breath_poison_type)
			adjustToxLoss(6)

	return TRUE

/mob/living/carbon/superior_animal/proc/handle_cheap_environment(datum/gas_mixture/environment as anything)
	if((bodytemperature > max_bodytemperature) || (bodytemperature < min_bodytemperature)) // its like this to avoid extra processing further below without using goto
		bad_environment = TRUE
		adjustFireLoss(15)
	if(istype(get_turf(src), /turf/space))
		if(bodytemperature > 1)
			bodytemperature = max(1,bodytemperature - 30*(1-get_cold_protection(0)))
		if(min_air_pressure)
			adjustBruteLoss(6)
			bad_environment = TRUE
		if(breath_required_type)
			adjustOxyLoss(6)
			bad_environment = TRUE
=======

/mob/living/carbon/superior_animal/examine(mob/user)
	..()
	if (is_dead(src))
		to_chat(user, SPAN_DANGER("It is completely motionless, likely dead."))
	else if (health < maxHealth * 0.10)
		to_chat(user, SPAN_DANGER("It looks like they are on their last legs!"))
	else if (health < maxHealth * 0.20)
		to_chat(user, SPAN_DANGER("It's grievously wounded!"))
	else if (health < maxHealth * 0.30)
		to_chat(user, SPAN_DANGER("It's badly wounded!"))
	else if (health < maxHealth * 0.40)
		to_chat(user, SPAN_WARNING("Its wounds are mounting."))
	else if (health < maxHealth * 0.50)
		to_chat(user, SPAN_WARNING("It looks half dead."))
	else if (health < maxHealth * 0.60)
		to_chat(user, SPAN_WARNING("It looks like its been beaten up quite badly."))
	else if (health < maxHealth * 0.70)
		to_chat(user, SPAN_WARNING("It has accrued some lasting injuries."))
	else if (health < maxHealth * 0.80)
		to_chat(user, SPAN_WARNING("It has had minor damage done to it."))
	else if (health < maxHealth)
		to_chat(user, SPAN_WARNING("It has a few cuts and bruses."))

/**
 * To be used when we attempt to target a mob outside of view_range.
 * Args:
 * target: The target we are attempting to target.
 * distance: The distance between our target and us. Defaults to just that value. Here for override purposes.
 * target_mode: Defaults to target_out_of_sight_mode. Here for override purposes.
 *
 * If target_mode == ALWAYS_SEE, just returns target. If target_mode == GUESS_LOCATION_WITH_AREA, returns RANGE_TURFS, radius being the distance outside of viewrange.
 * Trims said list to remove any turfs that are dense, or turfs that have dense objects in them. If out_of_sight_turf_LOS_check is true, also removes and turfs
 * that fail a can_see check.
 *
 * If target_mode == GUESS_TARGET_WITH_LINE, does above, except it returns a list of turfs generated from a line drawn from the edge of viewrange to
 *
 * out_of_viewrange_line_distance_mult the distance from said distance to the target.
**/
/mob/living/carbon/superior_animal/proc/target_outside_of_view_range(var/atom/target, distance = get_dist(src, target), target_mode = target_out_of_sight_mode)

	var/tiles_out_of_viewrange = (distance - viewRange) //self explanatory
	if (tiles_out_of_viewrange <= 0)
		return FALSE //they are within our viewrange

	var/list/possible_locations //initialize the var
	switch (target_mode)
		if (ALWAYS_SEE) // if this is true we can always detect our target
			return target

		if (GUESS_LOCATION_WITH_AURA)
			possible_locations = RANGE_TURFS(tiles_out_of_viewrange, target) // the further away the target, the more inaccurate our targetting

		if (GUESS_LOCATION_WITH_LINE, GUESS_LOCATION_WITH_END_OF_LINE)
			var/turf/viewrange_edge = get_turf_at_edge_of_viewRange(target)
			possible_locations = get_turfs_in_line_toward_target(viewrange_edge, target, out_of_viewrange_line_distance_mult)

			if (target_mode == GUESS_LOCATION_WITH_END_OF_LINE)
				if (out_of_sight_turf_LOS_check)
					for (var/i = possible_locations.len, i > 0, i--) //start from the last entry added
						var/atom/possible_location = possible_locations[i]
						if (can_see(possible_location, target, get_dist(possible_location, target))) //if this turf can see the target,
							return possible_location // this is a valid target
						else
							continue
				var/index = possible_locations.len
				return possible_locations[index] //return the last entry in the list

	for (var/turf/possible_location as anything in possible_locations) // iterate through each turf we are considering
		if (density == TRUE) // if the turf is dense, aka we cant walk through it...
			possible_locations -= possible_location // ...no way they're in it
			continue
		if (out_of_sight_turf_LOS_check)
			if (!(can_see(possible_location, target, get_dist(possible_location, target)))) // if it cant see the target...
				possible_locations -= possible_location // then theres no way the target was there
				continue
		for (var/atom/movable/entity in possible_location)
			if (entity.density == TRUE) //the 1st check but for the contents
				possible_locations -= possible_location
				continue

	return safepick(possible_locations) //return one at random

// Same as breath but with innecesarry code removed and damage tripled. Environment pressure damage moved here since we handle moles.

/mob/living/carbon/superior_animal/handle_breath(datum/gas_mixture/breath as anything)
	var/breath_pressure = (breath.total_moles*R_IDEAL_GAS_EQUATION*breath.temperature)/BREATH_VOLUME
	var/breath_required = breath_pressure > 15 && (breath_required_type || breath_poison_type)
	if(!breath_required) // 15 KPA Minimum
		return FALSE
	adjustOxyLoss(breath.gas[breath_required_type] ? 0 : ((((breath.gas[breath_required_type] / breath.total_moles) * breath_pressure) < min_breath_required_type) ? 0 : 6))
	adjustToxLoss(breath.gas[breath_poison_type] ? 0 : ((((breath.gas[breath_poison_type] / breath.total_moles) * breath_pressure) < min_breath_poison_type) ? 0 : 6))

/mob/living/carbon/superior_animal/handle_environment(datum/gas_mixture/environment as anything)
	var/pressure = environment.return_pressure()
	var/enviro_damage = (bodytemperature < min_bodytemperature) || (pressure < min_air_pressure) || (pressure > max_air_pressure)
	if(enviro_damage) // its like this to avoid extra processing further below without using goto
		bodytemperature += (bodytemperature - environment.temperature) * (environment.total_moles / MOLES_CELLSTANDARD) * (bodytemperature < min_bodytemperature ? 1 - heat_protection : -1 + cold_protection)
		adjustFireLoss(bodytemperature < min_bodytemperature ? 0 : 15)
		adjustBruteLoss((pressure < min_air_pressure  || pressure > max_air_pressure) ? 0 : 6)
		bad_environment = TRUE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return FALSE
	bad_environment = FALSE
	if (!contaminant_immunity)
		for(var/g in environment.gas)
			if(gas_data.flags[g] & XGM_GAS_CONTAMINANT && environment.gas[g] > gas_data.overlay_limit[g] + 1)
				pl_effects()
				break

<<<<<<< HEAD
	var/loc_temp = T0C
	loc_temp = environment.temperature
	var/pressure = environment.return_pressure()
	if(pressure < min_air_pressure || pressure > max_air_pressure)
		adjustBruteLoss(6)
	//Body temperature adjusts depending on surrounding atmosphere based on your thermal protection (convection)
	var/temp_adj = 0
	var/thermal_protection = 0
	var/relative_density = environment.total_moles / MOLES_CELLSTANDARD
	if(loc_temp < bodytemperature) //Place is colder than we are
		thermal_protection = get_cold_protection(loc_temp) //0 to 1 value, which corresponds to the percentage of protection
		temp_adj = (1-thermal_protection) * ((loc_temp - bodytemperature) / BODYTEMP_COLD_DIVISOR)//this will be negative
	else if(loc_temp > bodytemperature) //Place is hotter than we are
		thermal_protection = get_heat_protection(loc_temp) //0 to 1 value, which corresponds to the percentage of protection
		temp_adj = (1-thermal_protection) * ((loc_temp - bodytemperature) / BODYTEMP_HEAT_DIVISOR)
	bodytemperature += between(BODYTEMP_COOLING_MAX, 3*temp_adj*relative_density, BODYTEMP_HEATING_MAX)*3 // Multiplied by 3 because of reduced frequency

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (overkill_dust && (getFireLoss() >= maxHealth*2))
		dust()
		return FALSE

<<<<<<< HEAD

/mob/living/carbon/superior_animal/proc/cheap_update_lying_buckled_and_verb_status_()

	if(!resting && cannot_stand() && can_stand_overridden())
		lying = 0
		canmove = TRUE //TODO: Remove this
	else if(buckled)
		anchored = TRUE
		if(istype(buckled))
			if(buckled.buckle_lying == -1)
				lying = incapacitated(INCAPACITATION_KNOCKDOWN)
			else
				lying = buckled.buckle_lying
			if(buckled.buckle_movable)
				anchored = FALSE
		canmove = FALSE //TODO: Remove this
	else
		lying = incapacitated(INCAPACITATION_KNOCKDOWN)
		canmove = FALSE //TODO: Remove this

	if(lying)
		set_density(FALSE)
	else
		canmove = TRUE
		set_density(initial(density))
	reset_layer()
	if(update_icon)	//forces a full overlay update
		update_icon = FALSE
		regenerate_icons()

/mob/living/carbon/superior_animal/proc/handle_ai()

=======
// branchless isincapacited check made for roaches.
/mob/living/carbon/superior_animal/proc/cheap_incapacitation_check() // This works based off constants ,override it if you want it to be dynamic . Based off isincapacited
	return stunned > 0 || weakened > 0 || resting || pinned.len > 0 || stat || paralysis || sleeping || (status_flags & FAKEDEATH) || buckled() > 0

/*/mob/living/carbon/superior_animal/update_lying_buckled_and_verb_status()

	if(cheap_incapacitation_check())
		lying = FALSE
		canmove = TRUE
	else
		canmove = FALSE
		if(buckled)
			anchored = buckled.buckle_movable
			lying = buckled.buckle_lying
	if(lying)
		set_density(FALSE)
	if(stat == DEAD)
		set_density(FALSE)
	else
		canmove = TRUE
		set_density(initial(density))*/

/mob/living/carbon/superior_animal/proc/adjustFiringOffset(var/value)

	current_firing_offset += value

	return TRUE

/mob/living/carbon/superior_animal/proc/resetFiringOffset()

	current_firing_offset = initial_firing_offset

	return TRUE

/mob/living/carbon/superior_animal/proc/handle_ai()

	if(weakened)
		return

	if(ckey) //prevents players from having process on a mob theyre controlling
		return

	if (AI_inactive)
		return

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	objectsInView = null

	//CONSCIOUS UNCONSCIOUS DEAD

	if (!check_AI_act())
<<<<<<< HEAD
		return FALSE
=======
		return

	var/atom/targetted_mob
	if (target_mob)
		targetted_mob = (target_mob?.resolve())
	if (!targetted_mob) //will be false if there is no target_mob or if the resolved value is null
		loseTarget()
	else if (!targetted_mob.check_if_alive(TRUE)) //else if because we dont want a runtime
		loseTarget()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	switch(stance)
		if(HOSTILE_STANCE_IDLE)
			if (!busy) // if not busy with a special task
				stop_automated_movement = FALSE
<<<<<<< HEAD
			target_mob = findTarget()
			if (target_mob)
				stance = HOSTILE_STANCE_ATTACK

		if(HOSTILE_STANCE_ATTACK)
			if(destroy_surroundings)
				destroySurroundings()

			stop_automated_movement = TRUE
			stance = HOSTILE_STANCE_ATTACKING
			set_glide_size(DELAY2GLIDESIZE(move_to_delay))
			if(!kept_distance)
				walk_to(src, target_mob, 1, move_to_delay)
			else
				step_to(src, target_mob, kept_distance)

		if(HOSTILE_STANCE_ATTACKING)
			if(destroy_surroundings)
				destroySurroundings()

			prepareAttackOnTarget()
=======
			if (!targetted_mob)
				target_mob = WEAKREF(findTarget()) //no target? try to find one
				targetted_mob = (target_mob?.resolve())
			if (targetted_mob) // is it still null?
				stance = HOSTILE_STANCE_ATTACK
				handle_hostile_stance(targetted_mob)

		if(HOSTILE_STANCE_ATTACK)
			handle_hostile_stance(targetted_mob)

		if(HOSTILE_STANCE_ATTACKING)
			if (delayed == 0) // is our targetting delayed still?
				delayed = delayed_initial // if not, reset the value
				handle_attacking_stance(targetted_mob) // and attack
			else
				delayed-- // decrement it, we'll check again next tick
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	//random movement
	if(wander && !stop_automated_movement && !anchored)
		if(isturf(loc) && !resting && !buckled && canmove)
			turns_since_move++
			if(turns_since_move >= turns_per_move)
				if(!(stop_automated_movement_when_pulled && pulledby))
					var/moving_to = pick(cardinal)
					set_dir(moving_to)
					step_glide(src, moving_to, DELAY2GLIDESIZE(0.5 SECONDS))
					turns_since_move = 0

	//Speaking
	if(speak_chance && prob(speak_chance))
		visible_emote(emote_see)

<<<<<<< HEAD
	return TRUE

// Same as overridden proc but -3 instead of -1 since its 3 times less frequently envoked
/mob/living/carbon/superior_animal/handle_status_effects()
	if(paralysis)
		paralysis = max(paralysis-3,0)
	if(stunned)
		stunned = max(stunned-3,0)
	if(weakened)
		weakened = max(weakened-3,0)

/mob/living/carbon/superior_animal/proc/handle_cheap_regular_status_updates()
	health = maxHealth - getOxyLoss() - getToxLoss() - getFireLoss() - getBruteLoss() - getCloneLoss() - halloss
	if(health <= 0 && stat != DEAD)
		death()
		// STOP_PROCESSING(SSmobs, src) This is handled in Superior animal Life().
=======
/mob/living/carbon/superior_animal/proc/handle_hostile_stance(var/atom/targetted_mob) //here so we can jump instantly to it if hostile stance is established
	var/already_destroying_surroundings = FALSE
	var/calculated_walk = (comfy_range - comfy_distance) //the distance for walk_to() we will use on ranged mobs
	var/can_see = TRUE
	var/ran_see_check = FALSE
	if(destroy_surroundings)
		destroySurroundings()
		already_destroying_surroundings = TRUE //setting this var prevents double destruction when handle_attacking_stance is called

	var/mob/living/targetted_mob_real

	if (isliving(targetted_mob))
		targetted_mob_real = targetted_mob

	if (!ran_see_check)
		if (!(can_see_check(targetted_mob, targetted_mob_real)))
			can_see = FALSE
			lost_sight = TRUE
		ran_see_check = TRUE

	var/atom/targetted = targetted_mob

	if (!can_see)
		targetted = (target_location?.resolve())

	if(ranged)
		stop_automated_movement = TRUE
		stance = HOSTILE_STANCE_ATTACKING
		set_glide_size(DELAY2GLIDESIZE(move_to_delay))
		if (stat != DEAD)
			SSmove_manager.move_to(src, targetted_mob, calculated_walk, move_to_delay) //lets get a little closer than our optimal range

		if (delayed > 0)
			if (!(retarget_rush_timer > world.time)) //Only true if the timer is less than the world.time
				visible_message(SPAN_WARNING("[src] [target_telegraph] <font color = 'green'>[targetted]</font>!"), target = targetted, message_target = always_telegraph_to_target)
				delayed--
				return //return to end the switch early, so we delay our attack by one tick. does not happen if rush timer is less than world.time
			else
				visible_message(SPAN_WARNING("[src] [rush_target_telegraph] <font color = 'green'>[targetted]</font>!"), target = targetted, message_target = always_telegraph_to_target)

	else if (!ranged)
		stop_automated_movement = TRUE
		stance = HOSTILE_STANCE_ATTACKING
		set_glide_size(DELAY2GLIDESIZE(move_to_delay))
		if (stat != DEAD)
			SSmove_manager.move_to(src, targetted_mob, 1, move_to_delay)
		moved = 1
	handle_attacking_stance(targetted_mob, already_destroying_surroundings, can_see, ran_see_check)

/mob/living/carbon/superior_animal/proc/handle_attacking_stance(var/atom/targetted_mob, var/already_destroying_surroundings = FALSE, can_see = TRUE, ran_see_check = FALSE)
	var/calculated_walk = (comfy_range - comfy_distance) //the distance for walk_to() we will use on ranged mobs
	var/fire_through_lost_sight = FALSE //will we continue to fire, even if we cant see them?
	var/mob/targetted_mob_real = null // the true value of target_mob?.resolve(), if its a mob, needed for determining if we will use hearers or can_see in our see check
	var/target_location_resolved = (target_location?.resolve()) // we will target this if this tick's can_see is FALSE
	var/obj/item/projectile/trace // the projectile that ranged mobs use when testing trajectory

	retarget_rush_timer += ((world.time) + retarget_rush_timer_increment) //we put it here because we want mobs currently angry to be vigilant
	if(destroy_surroundings && !already_destroying_surroundings) // the second check prevents handle_hostile_stance from causing double destruction
		destroySurroundings()

	if (!(isburrow(targetted_mob))) //we dont want mobs failing to use the burrows
		// This block controls random retargetting

		if (ismob(targetted_mob))
			targetted_mob_real = targetted_mob

		else if (ismecha(targetted_mob))
			var/obj/mecha/targetted_mecha = targetted_mob
			if (targetted_mecha.occupant && ismob(targetted_mecha.occupant))
				targetted_mob_real = targetted_mecha.occupant

		if (!ran_see_check) //have we already run this check?
			can_see = can_see_check(targetted_mob, targetted_mob_real)
			ran_see_check = TRUE

		if (can_see)
			lost_sight = FALSE

		if (!lost_sight) // if we've, in a previous iteration of this proc, lost sight of our target, lets not update the location of the target
			target_location = WEAKREF(get_turf(targetted_mob)) //the choice to not just store the location unconditionally every tick is intentional, i want mobs to have a chance to reacquire their target
		target_location_resolved = (target_location?.resolve())
		if (retarget) // do we randomly retarget?
			var/retarget_prioritize = retarget_prioritize_current //local var so that we can make temporary changes
			if (retarget_timer <= 0) // has our timer reached its end?
				if (!can_see) // if so, we can remove the override so we dont target onto something we cant even see
					retarget_prioritize = FALSE //removing override
				var/target_mob_cache = target_mob //we store the value of target_mob so we can reference the new value with the previous value
				target_mob = WEAKREF(findTarget(retarget_prioritize)) // find a new target
				retarget_timer = retarget_timer_initial //reset the timer
				if (!target_mob) // if we found nothing...
					target_mob = target_mob_cache //...we have code for handling a mob we cant see
				else // if we found something...
					if (target_mob != target_mob_cache) //...and it isnt our last target...
						lost_sight = FALSE //...we can probably see them, since hearers() found them, and hearers() is the ideal see check
					targetted_mob = (target_mob?.resolve()) //regardless of the last if statement, we need to reset targetted_mob
			else
				retarget_timer-- //if it hasnt, lets decrement it and check next tick
		// This block controls losing line of sight and targetting the last known location of the enemy
		if (!can_see) // if we cant see our current target...
			if (patience <= 0)
				loseTarget()
				patience = patience_initial
				return
			else //this is where we handle mobs losing LOS and forgetting where the target is
				lost_sight = TRUE
				patience--

				if (wander_if_lost_sight)
					var/moving_to = pick(cardinal)
					set_dir(moving_to)
					step_glide(src, moving_to, DELAY2GLIDESIZE(0.5 SECONDS)) //we can potentially pathfind if we do this
			if (fire_through_walls)
				fire_through_lost_sight = TRUE
		else
			lost_sight = FALSE

		// This block only runs if the above can_see check is true, fires a trace projectile to see if we can hit our target
		if (projectiletype && advance) //are we allowed to advance?
			if (can_see || advance_if_cant_see) //if so, lets try to advance if we can see, or if we cant but we're allowed to advance if we cant see
				if (ranged) // 2. if we cant see, but!
					trace = check_trajectory_raytrace(targetted_mob, src, projectiletype)
					spawn(0) //the projectile needs time to process
					handle_trace_impact(trace, delete_trace = FALSE) //and now, we check to see if we should advance, using the trace

		//if (!can_see && (!fire_through_walls))
		//	return

		if (can_see)
			patience = patience_initial
		// This block controls our attack/range logic
		var/atom/targetted = targetted_mob
		if (!(targetted_mob.check_if_alive(TRUE)))
			loseTarget()
			return
		if (lost_sight)
			targetted = target_location_resolved
		if (stat == DEAD)
			return
		if(!ranged)
			prepareAttackOnTarget()
			if (stat != DEAD)
				SSmove_manager.move_to(src, targetted, 1, move_to_delay)
		else if(ranged)

			var/distance = (get_dist(src, targetted))

			if (!(targetted_mob.check_if_alive(TRUE)))
				loseTarget()
				return
			if (stat == DEAD)
				return

			var/shoot = TRUE

			if (targetted == target_location_resolved) //this isnt our target. its useless to shoot at it

				if (distance > viewRange) //if it's not in our viewrange...
					var/turf/viewrange_edge = get_turf_at_edge_of_viewRange(targetted)
					if (viewrange_edge.opacity || !(can_see_check(viewrange_edge))) //... and if itself blocks LOS or we cant see it...
						if (!fire_through_walls) //...and we arent allowed to fire through walls...
							shoot = FALSE //...lets not shoot
				else if (!fire_through_walls)
					shoot = FALSE

			else if (targetted == targetted_mob)
				if (!can_see && (!fire_through_lost_sight))
					shoot = FALSE

			if (shoot) // should we shoot?
				if (prepareAttackPrecursor(RANGED_TYPE, TRUE, TRUE, targetted))
					addtimer(CALLBACK(src, .proc/OpenFire, targetted, trace), delay_for_range)

			if (advancement_timer <= world.time)  //we dont want to prematurely end a advancing walk
				if (stat != DEAD)
					SSmove_manager.move_to(src, targetted, calculated_walk, move_to_delay) //we still want to reset our walk
				set_glide_size(DELAY2GLIDESIZE(move_to_delay))
	else
		prepareAttackOnTarget()
		if (stat != DEAD)
			SSmove_manager.move_to(src, targetted_mob, 1, move_to_delay)

/mob/living/carbon/superior_animal/proc/get_turf_at_edge_of_viewRange(var/atom/target, view_range = viewRange)
	var/turf/viewrange_edge = get_turf(src)
	if (!target)
		return null
	for (var/i = 0, i < view_range, i++)
		viewrange_edge = get_step_towards(viewrange_edge, target) // need to loop here since get_step_to avoids obstacles

	return viewrange_edge

/mob/living/carbon/superior_animal/proc/can_see_check(var/atom/targetted_mob, var/mob/living/targetted_mob_real, can_see = FALSE, use_hearers = FALSE)

	if (!see_through_walls) // we can skip these checks if we can always see our target
		var/distance = (min(get_dist(src, targetted_mob), viewRange))
		if ((targetted_mob_real && (targetted_mob_real.client) && (ismob(targetted_mob))) || use_hearers) // is our target_mob a mob with a player controlling it?
			if (targetted_mob in hearers(distance, src)) //we can afford a more expensive proc for the sake of making the player experience with ai better
				can_see = TRUE
		else if (can_see(src, targetted_mob, distance)) // if not, lets use a inaccurate cheap proc
			can_see = TRUE
	else
		if (see_past_viewRange || (targetted_mob in range(viewRange, src)))
			can_see = TRUE

	return can_see

/// If critcheck = FALSE, will check if health is more than 0. Otherwise, if is a human, will check if theyre in hardcrit.
/atom/proc/check_if_alive(var/critcheck = FALSE) //A simple yes no if were alive
	if (critcheck)
		if (istype(src, /mob/living/carbon/human))
			if(health > HEALTH_THRESHOLD_CRIT) //only matters for humans
				return TRUE
			else
				return FALSE
	if(health > 0)
		return TRUE
	return FALSE

// Same as overridden proc but -3 instead of -1 since its 3 times less frequently envoked, if checks removed
/mob/living/carbon/superior_animal/handle_status_effects()
	paralysis = max(paralysis-3,0)

	if (stunned)
		stunned = max(stunned-3,0)
		if(!stunned)
			update_icons()

	if(weakened)
		weakened = max(weakened-3,0)
		if(!weakened)
			update_icons()

/mob/living/carbon/superior_animal/handle_regular_status_updates()
	health = maxHealth - oxyloss - toxloss - fireloss - bruteloss - cloneloss - halloss
	if(health <= death_threshold && stat != DEAD)
		death()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		blinded = TRUE
		silent = FALSE
		return TRUE
	return FALSE

<<<<<<< HEAD
/mob/living/carbon/superior_animal/proc/handle_cheap_chemicals_in_body()
=======
/mob/living/carbon/superior_animal/handle_chemicals_in_body()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(reagents)
		chem_effects.Cut()
		if(touching)
			touching.metabolize()
		if(bloodstr)
			bloodstr.metabolize()

	/*
	if(light_dam)
		var/light_amount = 0
		if(isturf(loc))
			var/turf/T = loc
			light_amount = round((T.get_lumcount()*10)-5)
<<<<<<< HEAD

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if(light_amount > light_dam) //if there's enough light, start dying
			take_overall_damage(1,1)
		else //heal in the dark
			heal_overall_damage(1,1)
<<<<<<< HEAD

	// nutrition decrease
	if (hunger_factor && (nutrition > 0) && (stat != DEAD))
		nutrition = max (0, nutrition - hunger_factor)

=======
	// nutrition decrease
	if (hunger_factor && (nutrition > 0) && (stat != DEAD))
		nutrition = max (0, nutrition - hunger_factor)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	updatehealth()
	*/

/mob/living/carbon/superior_animal/Life()
	ticks_processed++
<<<<<<< HEAD
	handle_fire()
	handle_regular_hud_updates()
	handle_cheap_chemicals_in_body()
	if(!(ticks_processed%3))
		handle_status_effects()
		cheap_update_lying_buckled_and_verb_status_()
		var/datum/gas_mixture/breath = get_breath_from_environment()
		if(breath)
			handle_cheap_breath(breath)
		var/datum/gas_mixture/environment = loc.return_air_for_internal_lifeform()
		handle_cheap_environment(environment)
		updateicon()
		ticks_processed = 0
	if(handle_cheap_regular_status_updates()) // They have died after all of this, do not scan or do not handle AI anymore.
		return PROCESS_KILL

	if (can_burrow && bad_environment)
		evacuate()

	if(!AI_inactive)
		handle_ai()
=======
	handle_regular_hud_updates()
	if(!reagent_immune)
		handle_chemicals_in_body() //not under ai_inactive, because of shit like blattedin

	// is this optimal? no. do i like this? no. if i could, would i rip it up and make it better? yes.
	// but this is eriscode. i cant make a clean change on fucking anything. i am so goddamn tired of trying
	// to optimize this mess, taht at this point, im willing to just shove all this shit in here. and you know what?
	// this isnt even that bad. im disgusted by this too, and by god, i beg of whoever the hell is reading this,
	// MAKE THIS BETTER. we have SO many goddamn superior mobs that this shit NEEDS to be optimal but i am a goddamn
	// sophmore in college about to get a goddamn job so im pretty tired of workin on this shit.
	if(!(ticks_processed%3))
		if (!AI_inactive)
			handle_status_effects()
			update_lying_buckled_and_verb_status()
		if(!never_stimulate_air)
			var/datum/gas_mixture/environment = loc.return_air_for_internal_lifeform()
			var/datum/gas_mixture/breath = environment.remove_volume(BREATH_VOLUME)
			handle_breath(breath)
			handle_environment(environment) //it should be pretty safe to move this out of ai inactive if this causes problems.
			if (can_burrow && bad_environment)
				evacuate()
			//Fire handling , not passing the whole list because thats unefficient.
			handle_fire(environment.gas["oxygen"], loc)
		// this one in particular im very unhappy about. every 3 ticks, if a superior mob is dead to something that doesnt directly apply damage, it dies. i hate this.
		handle_regular_status_updates() // we should probably still do this even if we're dead or something
		ticks_processed = 0

	if (!weakened)

		if(!AI_inactive) //we dont need to handle ai if we're disabled
			handle_ai()
			//Speaking

			if(speak_chance && prob(speak_chance))
				visible_emote(emote_see)

			if (following)
				if (!target_mob) // Are we following someone and not attacking something?
					if (stat != DEAD)
						SSmove_manager.move_to(src, following, follow_distance, move_to_delay) // Follow the mob referenced in 'following' and stand almost next to them.
			else if (!target_mob && last_followed)
				SSmove_manager.stop_looping(src)
				last_followed = null // this exists so we only stop the following once, no need to constantly end our walk

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(life_cycles_before_sleep)
		life_cycles_before_sleep--
		return TRUE
	if(!(AI_inactive && life_cycles_before_sleep))
		AI_inactive = TRUE

	if(life_cycles_before_scan)
		life_cycles_before_scan--
		return FALSE
<<<<<<< HEAD
	if(check_surrounding_area(7))
=======
	if(check_surrounding_area(viewRange))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		activate_ai()
		life_cycles_before_scan = initial(life_cycles_before_scan)/6 //So it doesn't fall asleep just to wake up the next tick
		return TRUE
	life_cycles_before_scan = initial(life_cycles_before_scan)
	return FALSE

<<<<<<< HEAD
=======
/**
 *  Handles telegraphing attacks, and attack delays. It does not handle the attacks themselves.
 *
 *	Returns a boolean, FALSE meaning the proc has come to the conclusion that the mob should not fire this tick.
 *
 *	Args:
 *	attack_type-The delay that will be used for this timer. Defines used by this defined in mobs.dm. Example: MELEE_TYPE.
 *	telegraph-Boolean. If false, no visual emote will be made.
 *	cast_beam-Boolean. If true, a beam will be cast from src to targetted_mob as a visual telegraph.
 *	atom/movable/targetted-The target of the telegraphs.
**/
/mob/living/carbon/superior_animal/proc/prepareAttackPrecursor(attack_type, telegraph = TRUE, cast_beam = TRUE, var/atom/movable/targetted)
	if (check_if_alive()) //sanity
		var/time_to_expire
		var/attack_telegraph
		switch(attack_type)
			if (MELEE_TYPE)

				time_to_expire = delay_for_melee
				attack_telegraph = melee_telegraph

				if (melee_delay <= 0)
					melee_delay = melee_delay_initial
				else
					melee_delay--
					if (telegraph)
						visible_message(SPAN_WARNING("\the [src] [melee_charge_telegraph] \the <font color = 'orange'>[targetted]</font>!"), target = targetted, message_target = always_telegraph_to_target)
					return FALSE

			if (RANGED_TYPE, RANGED_RAPID_TYPE)

				time_to_expire = delay_for_range
				attack_telegraph = range_telegraph

				if (fire_delay <= 0)
					fire_delay = fire_delay_initial
				else
					fire_delay--
					if (telegraph)
						visible_message(SPAN_WARNING("\the [src] [range_charge_telegraph] \the <font color = 'orange'>[targetted]</font>!"), target = targetted, message_target = always_telegraph_to_target)
					return FALSE

		if (cast_beam)
			Beam(targetted, icon_state = "1-full", time=(time_to_expire/10), maxdistance=(get_dist(src, targetted) + 10), alpha_arg=telegraph_beam_alpha, color_arg = telegraph_beam_color)
		if (telegraph)
			visible_message(SPAN_WARNING("\the [src] [attack_telegraph] \the <font color = 'blue'>[targetted]</font>!"), target = targetted, message_target = always_telegraph_to_target)

		return TRUE
	else
		return FALSE

/// Called in findTarget() if the found target is not the same as the one we already have.
/mob/living/carbon/superior_animal/proc/doTargetMessage()
	return

/**
 * To be used in conjunction with check_trajectory_raytrace. Make sure to spawn(0) before this proc so the projectile processes. spawn(0) does not work WITHIN the proc, sadly.
 *
 * If trace.impact_atom is not targetted_mob, and it is not in trace.force_penetration_on, we will advance advancement tiles towards our target.
 *
 * If there is no impact atom, it will assume it was deleted, and only pass penetration data.
 *
 * Args:
 * obj/item/projectile/trace: The trace we are registered to.
 * atom/impact_atom: The atom the trace impacted.
**/
/mob/living/carbon/superior_animal/proc/handle_trace_impact(var/obj/item/projectile/trace, var/delete_trace = TRUE)

	if (stat == DEAD)
		return FALSE

	var/targetted_mob = (target_mob?.resolve())
	var/boolean = TRUE
	var/datum/penetration_holder/holder = null

	if (trace.penetration_holder)
		holder = trace.penetration_holder

	if (((trace.impact_atom) && (trace.impact_atom == targetted_mob)) || ((holder) && (holder.force_penetration_on) && (targetted_mob in holder.force_penetration_on)))
		boolean = FALSE
	else
		boolean = TRUE

	if (delete_trace)
		qdel(trace.penetration_holder)
		trace.penetration_holder = null
		QDEL_NULL(trace)
	if (boolean)
		advance_towards(targetted_mob)
	return boolean

/mob/living/carbon/superior_animal/proc/advance_towards(var/atom/target)

	var/calculated_walk = (comfy_range - comfy_distance)

	var/distance = (get_dist(src, target))
	if (distance <= calculated_walk) //if we are within our comfy range but we cant attack, we need to reposition
		advance_steps = (distance - advancement)
		if (advance_steps <= 0)
			advance_steps = 1 //1 is minimum
		if (stat != DEAD)
			SSmove_manager.move_to(src, target, advance_steps, move_to_delay) //advance forward, forcing us to pathfind
		advancement_timer = (world.time += advancement_increment) // we dont want this overridden instantly

/mob/living/carbon/superior_animal/CanPass(atom/mover)
	if(istype(mover, /obj/item/projectile))
		return stat ? TRUE : FALSE
	. = ..()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
