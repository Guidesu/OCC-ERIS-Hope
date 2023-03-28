//Updates the mob's health from organs and mob damage variables
/mob/living/carbon/human/updatehealth()
	if(status_flags & GODMODE)
		health = maxHealth
		stat = CONSCIOUS
		return

	var/total_burn  = 0
	var/total_brute = 0
<<<<<<< HEAD
	for(var/obj/item/organ/external/O in organs)	//hardcoded to streamline things a bit
		if(O.vital) //*non-vital* limbs don't count towards shock and crit
			total_brute += O.brute_dam
			total_burn  += O.burn_dam
=======
	var/total_internal = 0
	var/unhealth_factor = 0

	for(var/obj/item/organ/external/O in organs)
		if(O.vital)
			total_brute += O.brute_dam
			total_burn  += O.burn_dam
			total_internal += O.severity_internal_wounds
		else
			//If your lim is damaged and its not vital its 2 damage to 1 health loss
			//This is to help simulate shock as well as help balance out issues with imortal beings
			unhealth_factor += (O.brute_dam * 0.5)
			unhealth_factor  += (O.burn_dam * 0.5)
			unhealth_factor += (O.severity_internal_wounds * 0.5)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	var/oxy_l = ((species.flags & NO_BREATHE) ? 0 : getOxyLoss())

	health = maxHealth - oxy_l - total_burn - total_brute - total_internal - unhealth_factor
	LEGACY_SEND_SIGNAL(src, COMSIG_HUMAN_HEALTH, health)
	return

/mob/living/carbon/human/adjustBrainLoss(var/amount)

	if(status_flags & GODMODE)
		return FALSE	//godmode

	if(species && species.has_process[BP_BRAIN])
		var/obj/item/organ/internal/brain/sponge = random_organ_by_process(BP_BRAIN)
		if(sponge)
			sponge.take_damage(amount)
			brainloss = (sponge.damage / sponge.max_damage) * 200
		else
			brainloss = 200
	else
		brainloss = 0

/mob/living/carbon/human/setBrainLoss(var/amount)

	if(status_flags & GODMODE)
		return FALSE	//godmode

	if(species && species.has_process[BP_BRAIN])
		var/obj/item/organ/internal/brain/sponge = random_organ_by_process(BP_BRAIN)
		if(sponge)
			sponge.take_damage(amount)
			brainloss = (sponge.damage / sponge.max_damage) * 200
		else
			brainloss = 200
	else
		brainloss = 0

/mob/living/carbon/human/getBrainLoss()

	if(status_flags & GODMODE)
		return FALSE	//godmode

	if(species && species.has_process[BP_BRAIN])
		var/obj/item/organ/internal/brain/sponge = random_organ_by_process(BP_BRAIN)
		if(sponge)
			brainloss = (sponge.damage / sponge.max_damage) * 200
		else
			brainloss = 200
	else
		brainloss = 0
	return brainloss

//These procs fetch a cumulative total damage from all organs
/mob/living/carbon/human/getBruteLoss()
	var/amount = 0
	for(var/obj/item/organ/external/O in organs)
<<<<<<< HEAD
=======
		if(BP_IS_ROBOTIC(O))
			continue //robot limbs don't count towards shock and crit
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		amount += O.brute_dam
	return amount

/mob/living/carbon/human/getFireLoss()
	var/amount = 0
	for(var/obj/item/organ/external/O in organs)
<<<<<<< HEAD
=======
		if(BP_IS_ROBOTIC(O))
			continue //robot limbs don't count towards shock and crit
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		amount += O.burn_dam
	return amount


/mob/living/carbon/human/adjustBruteLoss(var/amount)
	amount = amount*species.brute_mod*src.brute_mod_perk
	if(amount > 0)
		take_overall_damage(amount, 0)
	else
		heal_overall_damage(-amount, 0)
	BITSET(hud_updateflag, HEALTH_HUD)

/mob/living/carbon/human/adjustFireLoss(var/amount)
	amount = amount*species.burn_mod*src.burn_mod_perk
	if(amount > 0)
		take_overall_damage(0, amount)
	else
		heal_overall_damage(0, -amount)
	BITSET(hud_updateflag, HEALTH_HUD)

<<<<<<< HEAD
/mob/living/carbon/human/proc/adjustBruteLossByPart(amount, organ_name, obj/damage_source = null)
	amount = amount*species.brute_mod
=======
/mob/living/carbon/human/proc/adjustBruteLossByPart(var/amount, var/organ_name, var/obj/damage_source = null)
	amount = amount*species.brute_mod*src.brute_mod_perk
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (organ_name in organs_by_name)
		var/obj/item/organ/external/O = get_organ(organ_name)

		if(amount > 0)
			O.take_damage(amount, 0, sharp=is_sharp(damage_source), edge=has_edge(damage_source), used_weapon=damage_source)
		else
			//if you don't want to heal robot organs, they you will have to check that yourself before using this proc.
<<<<<<< HEAD
			O.heal_damage(-amount, 0, internal=0, robo_repair=(BP_IS_ROBOTIC(O)))
=======
			O.heal_damage(-amount, 0, robo_repair=(BP_IS_ROBOTIC(O)))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	BITSET(hud_updateflag, HEALTH_HUD)

/mob/living/carbon/human/proc/adjustFireLossByPart(var/amount, var/organ_name, var/obj/damage_source = null)
	amount = amount*species.burn_mod*src.burn_mod_perk
	if (organ_name in organs_by_name)
		var/obj/item/organ/external/O = get_organ(organ_name)

		if(amount > 0)
			O.take_damage(0, amount, sharp=is_sharp(damage_source), edge=has_edge(damage_source), used_weapon=damage_source)
		else
			//if you don't want to heal robot organs, they you will have to check that yourself before using this proc.
<<<<<<< HEAD
			O.heal_damage(0, -amount, internal=0, robo_repair=(BP_IS_ROBOTIC(O)))
=======
			O.heal_damage(0, -amount, robo_repair=(BP_IS_ROBOTIC(O)))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	BITSET(hud_updateflag, HEALTH_HUD)

/mob/living/carbon/human/Stun(amount)
	if(HULK in mutations)	return
	..()

/mob/living/carbon/human/Weaken(amount)
	if(HULK in mutations)	return
	..()

/mob/living/carbon/human/Paralyse(amount)
	if(HULK in mutations)	return
	// Notify our AI if they can now control the suit.
	if(wearing_rig && !stat && paralysis < amount) //We are passing out right this second.
		wearing_rig.notify_ai(SPAN_DANGER("Warning: user consciousness failure. Mobility control passed to integrated intelligence system."))
	..()

/mob/living/carbon/human/getCloneLoss()
	return

/mob/living/carbon/human/setCloneLoss(var/amount)
	adjustCloneLoss(amount)

/mob/living/carbon/human/adjustCloneLoss(var/amount)
	if(species.flags & (NO_SCAN))
		cloneloss = 0
		return

	var/mut_prob = min(80, amount+10)
	if (amount > 0)
		if (prob(mut_prob))
			var/list/obj/item/organ/external/candidates = list()
			for (var/obj/item/organ/external/O in organs)
				if(!(O.status & ORGAN_MUTATED))
					candidates |= O
			if (candidates.len)
				var/obj/item/organ/external/O = pick(candidates)
				O.mutate()
				to_chat(src, "<span class = 'notice'>Something is not right with your [O.name]...</span>")
				return
<<<<<<< HEAD
	else
		if (prob(heal_prob))
			for (var/obj/item/organ/external/O in organs)
				if (O.status & ORGAN_MUTATED)
					O.unmutate()
					to_chat(src, "<span class = 'notice'>Your [O.name] is shaped normally again.</span>")
					return

	if (getCloneLoss() < 1)
		for (var/obj/item/organ/external/O in organs)
			if (O.status & ORGAN_MUTATED)
				O.unmutate()
				to_chat(src, "<span class = 'notice'>Your [O.name] is shaped normally again.</span>")
=======

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	BITSET(hud_updateflag, HEALTH_HUD)

// Defined here solely to take species flags into account without having to recast at mob/living level.
/mob/living/carbon/human/getOxyLoss()
	if(species.flags & NO_BREATHE)
		oxyloss = 0
	return ..()

/mob/living/carbon/human/adjustOxyLoss(amount)
<<<<<<< HEAD
	if(species.flags & NO_BREATHE)
		oxyloss = 0
	else
		amount = amount*species.oxy_mod
=======
	if(in_stasis && amount > 0)		// Stasis prevents oxy loss
		return
	if(species.flags & NO_BREATHE)
		oxyloss = 0
	else
		amount = amount*species.oxy_mod*src.oxy_mod_perk
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if(stats.getPerk(PERK_LUNGS_OF_IRON) && amount > 0)
			amount *= 0.5
		..(amount)

/mob/living/carbon/human/setOxyLoss(var/amount)
	if(species.flags & NO_BREATHE)
		oxyloss = 0
	else
		..()

/mob/living/carbon/human/getToxLoss()
	return

<<<<<<< HEAD
/mob/living/carbon/human/adjustToxLoss(amount)
	if(species.flags & NO_POISON)
		toxloss = 0
	else
		amount = amount*species.toxins_mod
		if(stats.getPerk(PERK_BLOOD_OF_LEAD) && amount > 0)
			amount *= 0.5
		..(amount)

/mob/living/carbon/human/setToxLoss(var/amount)
	if(!(species.flags & NO_POISON) && !isSynthetic())
		adjustToxLoss(amount-getToxLoss())
=======
/mob/living/carbon/human/adjustToxLoss()
	return

/mob/living/carbon/human/setToxLoss()
	return
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

////////////////////////////////////////////

//Returns a list of damaged organs
/mob/living/carbon/human/proc/get_damaged_organs(var/brute, var/burn)
	var/list/obj/item/organ/external/parts = list()
	for(var/obj/item/organ/external/O in organs)
		if((brute && O.brute_dam) || (burn && O.burn_dam))
			parts += O
	return parts

//Returns a list of damageable organs
/mob/living/carbon/human/proc/get_damageable_organs()
	var/list/obj/item/organ/external/parts = list()
	for(var/obj/item/organ/external/O in organs)
		if(O.is_damageable())
			parts += O
	return parts

//Heals ONE external organ, organ gets randomly selected from damaged ones.
//It automatically updates damage over-lays if necesary
//It automatically updates health status
/mob/living/carbon/human/heal_organ_damage(var/brute, var/burn, var/additionally_brute_percent = 0, var/additionaly_burn_percent = 0)
	var/list/obj/item/organ/external/parts = get_damaged_organs(brute,burn)
	if(!parts.len)	return
	var/obj/item/organ/external/picked = pick(parts)
	if(picked.heal_damage(brute + (picked.brute_dam/100 * additionally_brute_percent),burn + (picked.burn_dam/100 * additionaly_burn_percent)))
		UpdateDamageIcon()
		BITSET(hud_updateflag, HEALTH_HUD)
	updatehealth()


/*
In most cases it makes more sense to use apply_damage() instead! And make sure to check armour if applicable.
*/
//Damages ONE external organ, organ gets randomly selected from damagable ones.
//It automatically updates damage over-lays if necesary
//It automatically updates health status
/mob/living/carbon/human/take_organ_damage(var/brute, var/burn, var/sharp = FALSE, var/edge = FALSE)
	var/list/obj/item/organ/external/parts = get_damageable_organs()
	if(!parts.len)	return
	var/obj/item/organ/external/picked = pick(parts)
	if(picked.take_damage(brute,burn,sharp,edge))
		UpdateDamageIcon()
		BITSET(hud_updateflag, HEALTH_HUD)
	updatehealth()
	speech_problem_flag = 1


//Heal MANY external organs, in random order
/mob/living/carbon/human/heal_overall_damage(var/brute, var/burn)
	var/list/obj/item/organ/external/parts = get_damaged_organs(brute,burn)

	var/update = 0
	while(parts.len && (brute>0 || burn>0) )
		var/obj/item/organ/external/picked = pick(parts)

		var/brute_was = picked.brute_dam
		var/burn_was = picked.burn_dam

		update |= picked.heal_damage(brute,burn)

		brute -= (brute_was-picked.brute_dam)
		burn -= (burn_was-picked.burn_dam)

		parts -= picked
	updatehealth()
	BITSET(hud_updateflag, HEALTH_HUD)
	speech_problem_flag = 1
	if(update)	UpdateDamageIcon()

// damage MANY external organs, in random order
<<<<<<< HEAD
/mob/living/carbon/human/take_overall_damage(var/brute, var/burn, var/sharp = FALSE, var/edge = FALSE, var/used_weapon = null)
=======
/mob/living/carbon/human/take_overall_damage(brute, burn, sharp = FALSE, edge = FALSE, used_weapon)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(status_flags & GODMODE)	return	//godmode
	var/list/obj/item/organ/external/parts = get_damageable_organs()
	var/update = 0
	while(parts.len && (brute>0 || burn>0) )
		var/obj/item/organ/external/picked = pick(parts)

		var/brute_was = picked.brute_dam
		var/burn_was = picked.burn_dam

		update |= picked.take_damage(brute, BRUTE, sharp = sharp, edge = edge, used_weapon = used_weapon)
		update |= picked.take_damage(burn, BURN, sharp = sharp, edge = edge, used_weapon = used_weapon)
		brute	-= (picked.brute_dam - brute_was)
		burn	-= (picked.burn_dam - burn_was)

		parts -= picked
	updatehealth()
	BITSET(hud_updateflag, HEALTH_HUD)
	if(update)
		UpdateDamageIcon()


////////////////////////////////////////////

/*
This function restores the subjects blood to max.
*/
/mob/living/carbon/human/proc/restore_blood()
	if(species.flags & NO_BLOOD)
		return
	if(vessel.total_volume < species.blood_volume)
		vessel.add_reagent("blood", species.blood_volume - vessel.total_volume)

/*
This function restores all organs.
*/
/mob/living/carbon/human/restore_all_organs()
	for(var/obj/item/organ/external/current_organ in organs)
		current_organ.rejuvenate()

/mob/living/carbon/human/proc/HealDamage(zone, brute, burn)
	var/obj/item/organ/external/E = get_organ(zone)
	if(istype(E, /obj/item/organ/external))
		if (E.heal_damage(brute, burn))
			UpdateDamageIcon()
			BITSET(hud_updateflag, HEALTH_HUD)
	else
		return 0
	return


<<<<<<< HEAD
/mob/living/carbon/human/proc/get_organ(zone)
=======
/mob/living/carbon/human/proc/get_organ(var/zone)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	RETURN_TYPE(/obj/item/organ/external)
	if(!zone)
		zone = BP_CHEST
	else if(zone in list(BP_EYES, BP_MOUTH))
		zone = BP_HEAD
	return organs_by_name[zone]

<<<<<<< HEAD
/mob/living/carbon/human/apply_damage(damage = 0, damagetype = BRUTE, def_zone = null, sharp = FALSE, edge = FALSE, obj/used_weapon = null)
=======
/mob/living/carbon/human/apply_damage(damage = 0, damagetype = BRUTE, def_zone, armor_divisor = 1, wounding_multiplier = 1, sharp = FALSE, edge = FALSE, obj/used_weapon, armor_divisor)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	//visible_message("Hit debug. [damage] | [damagetype] | [def_zone] | [blocked] | [sharp] | [used_weapon]")

	//Order of operations here, we dont want to even try and check synths past this point
	if(species?.reagent_tag != IS_SYNTHETIC && damagetype == TOX)
		return

	//Handle other types of damage
<<<<<<< HEAD
	if(damagetype == PSY) //Occulus Edit
		sanity.onPsyDamage(damage)//Occulus Edit
	if(damagetype != BRUTE && damagetype != BURN)
		if(damagetype == HALLOSS && !(species && (species.flags & NO_PAIN)))
			if (!stat && (damage > 25 && prob(20)) || (damage > 50 && prob(60)))
				emote("scream")

		..(damage, damagetype, def_zone)
		sanity.onDamage(damage)
		return 1
=======

	if(damagetype != BRUTE && damagetype != BURN)
		if(damagetype == HALLOSS && !(species && (species.flags & NO_PAIN)))
			if(!stat && (damage > 25 && prob(20)) || (damage > 50 && prob(60)))
				emote("painscream")

		if(damagetype == PSY)
			sanity.onPsyDamage(damage)
			var/obj/item/organ/brain = random_organ_by_process(BP_BRAIN)
			brain.take_damage(damage, PSY, armor_divisor, wounding_multiplier)
			return TRUE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

		if(damagetype == TOX && stats.getPerk(PERK_BLOOD_OF_LEAD))
			damage /= 2

<<<<<<< HEAD
=======
		. = ..(damage, damagetype, def_zone)
	else	//Handle BRUTE and BURN damage
		handle_suit_punctures(damagetype, damage, def_zone)

		switch(damagetype)
			if(BRUTE)
				damage = damage*species.brute_mod
			if(BURN)
				damage = damage*species.burn_mod

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/obj/item/organ/external/organ = null
	if(isorgan(def_zone))
		organ = def_zone
	else
		if(!def_zone)
			def_zone = ran_zone(def_zone)
		organ = get_organ(check_zone(def_zone))
	if(!organ)
		return FALSE

<<<<<<< HEAD
	switch(damagetype)
		if(BRUTE)
			damageoverlaytemp = 20
			damage = damage*species.brute_mod
			if(organ.take_damage(damage, 0, sharp, edge, used_weapon))
				UpdateDamageIcon()
		if(BURN)
			damageoverlaytemp = 20
			damage = damage*species.burn_mod
			if(organ.take_damage(0, damage, sharp, edge, used_weapon))
				UpdateDamageIcon()
=======
	damageoverlaytemp = 20
	if(organ.take_damage(damage, damagetype, armor_divisor, wounding_multiplier, sharp, edge, used_weapon))
		UpdateDamageIcon()

	sanity.onDamage(damage)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	sanity.onDamage(damage)

	// Will set our damageoverlay icon to the next level, which will then be set back to the normal level the next mob.Life().
	updatehealth()
	BITSET(hud_updateflag, HEALTH_HUD)
	return TRUE


//Falling procs
/mob/living/carbon/human/get_fall_damage(var/turf/from, var/turf/dest)
	var/damage = 15 * falls_mod

<<<<<<< HEAD
	if (from && dest)
=======
	if(from && dest)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		damage *= abs(from.z - dest.z)

	return damage

