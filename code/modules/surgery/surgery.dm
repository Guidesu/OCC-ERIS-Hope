// A basis of new organ-based surgery system.

/datum/surgery_step
	// type path referencing tools that can be used for this step, and how well are they suited for it
	var/list/allowed_tools = null
	var/required_tool_quality = null
	var/target_organ_type = /obj/item/organ/external
<<<<<<< HEAD

	var/difficulty = 70 //Occulus Edit - Increasing surgery difficulty by 10%
	var/required_stat = STAT_BIO
	var/duration = 60

	// Can the step transfer germs?
=======
	var/perk_i_need = PERK_ADVANCED_MEDICAL					//Basically set up to check for specific surgery perks.
	var/perk_i_need_alt = PERK_MASTER_HERBALIST
	var/perk_drug = PERK_ULTRASURGEON

	var/difficulty = FAILCHANCE_HARD
	var/required_stat = STAT_BIO
	var/duration = 60
	var/requires_perk = FALSE

	// Can the step cause infection?
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/can_infect = FALSE
	// How much blood this step can get on surgeon. 1 - hands, 2 - full body.
	var/blood_level = 0
	// How much pain should a surgery step cause?
	var/inflict_agony = 60
<<<<<<< HEAD
=======
	// Are we doing surgery on a metal or flesh
	var/is_robotic = FALSE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

// returns how well a given tool is suited for this step
/datum/surgery_step/proc/tool_quality(obj/item/tool)
	if(!tool)
		return 0

	if(required_tool_quality && tool.tool_qualities)
		return tool.tool_qualities[required_tool_quality]
	else
		for(var/T in allowed_tools)
			if(istype(tool, T))
				return allowed_tools[T]
	return 0

// requests an appropriate tool
/datum/surgery_step/proc/require_tool_message(mob/living/user)
	if(required_tool_quality)
		to_chat(user, SPAN_WARNING("You need a tool capable of [required_tool_quality] to complete this step."))

// checks whether this step can be applied to given target organ at all
/datum/surgery_step/proc/is_valid_target(obj/item/organ/organ, target)
	return istype(organ, target_organ_type)

// checks whether this step can be applied with the given user and target
/datum/surgery_step/proc/can_use(mob/living/user, obj/item/organ/organ, obj/item/tool, target)
	return FALSE

// Does preparatory work such as allowing the user to choose which organ to target.
// Returning false cancels the step
/datum/surgery_step/proc/prepare_step(mob/living/user, obj/item/organ/organ, obj/item/tool, target)
	return TRUE

// Does stuff to begin the step, usually just printing messages.
/datum/surgery_step/proc/begin_step(mob/living/user, obj/item/organ/organ, obj/item/tool, target)
	return

// Does stuff to end the step, which is normally print a message + do whatever this step changes
/datum/surgery_step/proc/end_step(mob/living/user, obj/item/organ/organ, obj/item/tool, target)
	return

// Stuff that happens when the step fails
/datum/surgery_step/proc/fail_step(mob/living/user, obj/item/organ/organ, obj/item/tool, target)
	return

// Stuff that happens both when the step succeeds and when it fails
<<<<<<< HEAD
// Germ transfer and bloodying are handled here.
=======
// Infections and bloodying are handled here.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/datum/surgery_step/proc/after_attempted_step(mob/living/user, obj/item/organ/organ, obj/item/tool, target)
	if(blood_level && !BP_IS_ROBOTIC(organ) && organ.owner && ishuman(user) && prob(60))
		var/mob/living/carbon/human/H = user
		H.bloody_hands(organ.owner, 0)
		if (blood_level > 1)
			H.bloody_body(organ.owner, 0)

<<<<<<< HEAD
	if(can_infect)
		organ.spread_germs_from(user)
=======

	/* We don't use this right now.
	if(can_infect && prob(5) && istype(organ, /obj/item/organ/internal))
		var/obj/item/organ/internal/I = organ
		I.add_wound(pick(subtypesof(/datum/component/internal_wound/organic/infection)))
	*/
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if(inflict_agony)
		var/strength = inflict_agony

		// At STAT_LEVEL_GODLIKE, there is no pain from the surgery at all
		// This supports negative stat values
		if(user && user.stats)
			strength *= max((STAT_LEVEL_GODLIKE - user.stats.getStat(required_stat)) / STAT_LEVEL_GODLIKE, 0)

		organ.owner_pain(strength)

<<<<<<< HEAD
=======
		if (ishuman(organ.owner))
			var/mob/living/carbon/human/H = organ.owner
			H.update_surgery()

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/organ/proc/try_surgery_step(step_type, mob/living/user, obj/item/tool, target, no_tool_message = FALSE)
	var/datum/surgery_step/S = GLOB.surgery_steps[step_type]

<<<<<<< HEAD
=======
	if(S.requires_perk)
		if(!(user.stats.getPerk(S.perk_i_need) || user.stats.getPerk(S.perk_i_need_alt) || user.stats.getPerk(S.perk_drug) || user.stats.getStat(STAT_BIO) >= 50))
			to_chat(user, SPAN_WARNING("You do not have the necessary training to do this surgery!"))
			return FALSE

	if(status & ORGAN_SPLINTED)
		to_chat(user, SPAN_WARNING("You need to remove the splints first!"))
		return FALSE

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!S.is_valid_target(src, target))
		SSnano.update_uis(src)
		return FALSE

	if(!tool)
		tool = user.get_active_hand()

	var/quality = S.tool_quality(tool)
<<<<<<< HEAD
=======

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!quality)
		if(!no_tool_message)
			S.require_tool_message(user)
		return FALSE

<<<<<<< HEAD
=======
	if (istype(tool,/obj/item/stack/medical/bruise_pack/advanced))
		if (tool.icon_state == "traumakit" && (!(user.stats.getPerk(PERK_ADVANCED_MEDICAL) || user.stats.getPerk(PERK_SURGICAL_MASTER) || user.stats.getStat(STAT_BIO) >= 50)))
			to_chat(user, SPAN_WARNING("You do not have the training to use an Advanced Trauma Kit in this way."))
			return FALSE

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!S.can_use(user, src, tool, target) || !S.prepare_step(user, src, tool, target))
		SSnano.update_uis(src)
		return FALSE

	S.begin_step(user, src, tool, target)	//start on it
<<<<<<< HEAD
	var/success = FALSE

	var/difficulty_adjust = 0

	// Self-surgery increases failure chance
	if(owner && user == owner)
		// OCCULUS EDIT START: More severe difficulty for self-surgery
		if (BP_IS_ROBOTIC(src))	// Prosthetics are not as difficult to operate on
			difficulty_adjust = 30 + max((STAT_LEVEL_PROF - (user.stats.getStat(STAT_MEC) * 1.16)), 0)
		else
			difficulty_adjust = 30 + max(STAT_LEVEL_GODLIKE - (user.stats.getStat(STAT_BIO) * 0.7), 0)

		// ...unless you are a carrion
		// It makes sense that lings have a way of making their flesh cooperate
		if(is_carrion(user))
			difficulty_adjust = -100	// OCCULUS EDIT: To accomodate for skill requirement changes
		// OCCULUS EDIT END

	var/atom/surgery_target = get_surgery_target()
	if(S.required_tool_quality && (S.required_tool_quality in tool.tool_qualities))
		success = tool.use_tool_extended(
			user, surgery_target,
			S.duration,
			S.required_tool_quality,
			S.difficulty + difficulty_adjust,
			required_stat = S.required_stat
		)
	else
		var/wait
		if(ismob(surgery_target))
			wait = do_mob(user, surgery_target, S.duration)
		else
			wait = do_after(user, S.duration, surgery_target)

		if(wait && prob(S.tool_quality(tool) - difficulty_adjust))
			success = TOOL_USE_SUCCESS
		else if((tool in user.contents) && user.Adjacent(surgery_target))
			success = TOOL_USE_FAIL
		else
			success = TOOL_USE_CANCEL

	if(success == TOOL_USE_SUCCESS)
		S.end_step(user, src, tool, target)		//finish successfully
		S.after_attempted_step(user, src, tool, target)
	else if(success == TOOL_USE_FAIL)
		tool.handle_failure(user, surgery_target, required_stat = S.required_stat, required_quality = S.required_tool_quality)
		S.fail_step(user, src, tool, target)	//malpractice
		S.after_attempted_step(user, src, tool, target)

	SSnano.update_uis(src)

	return TRUE


proc/do_surgery(mob/living/carbon/M, mob/living/user, obj/item/tool, var/surgery_status = CAN_OPERATE_ALL)
=======
	var/atom/surgery_target = get_surgery_target()
	var/success = FALSE

	var/difficulty_adjust = 0
	var/time_adjust = 0

	if(user.stats.getPerk(PERK_SURGICAL_MASTER) && !S.is_robotic)
		difficulty_adjust = -90
		time_adjust = -130

	if(user.stats.getPerk(PERK_MASTER_HERBALIST) && !S.is_robotic)
		difficulty_adjust = -80 // Negates the difficulty of most basic surgical steps, but not as good as a professional at this
		time_adjust = -100

	// Self-surgery increases failure chance
	if(owner && user == owner)
		difficulty_adjust = 80 // Godlike status required for surgery, in preparation for hardcap of stats at 120
		time_adjust = 40

		//For if a user is doing 'surgery' on their own prosthetic bodypart
		if(nature == MODIFICATION_SILICON)
			difficulty_adjust = 60
			time_adjust = 20

		// ...unless you are a carrion
		// It makes sense that carrions have a way of making their flesh cooperate
		if(is_carrion(user))
			difficulty_adjust = -300
			time_adjust = -80

	if(user.stats.getPerk(PERK_ROBOTICS_EXPERT) && S.is_robotic)
		difficulty_adjust = -90
		time_adjust = -130

	if(S.required_tool_quality)
		success = tool.use_tool_extended(
			user, surgery_target,
			S.duration + time_adjust,
			S.required_tool_quality,
			S.difficulty + difficulty_adjust,
			required_stat = S.required_stat
		)

	else
		var/wait
		var/time_bonus = bio_time_bonus(user) // 80 being base duration, whatever value the proc returns will be deducted from the surgical step's duration. - Seb
		if(ismob(surgery_target))
			wait = do_mob(user, surgery_target, S.duration - time_bonus)
		else
			wait = do_after(user, S.duration - time_bonus, surgery_target)

		if(wait && prob(S.tool_quality(tool) - difficulty_adjust))
			success = TOOL_USE_SUCCESS
		else if((tool in user.contents) && user.Adjacent(surgery_target))
			success = TOOL_USE_FAIL
		else
			success = TOOL_USE_CANCEL

	if(success == TOOL_USE_SUCCESS)
		S.end_step(user, src, tool, target)		//finish successfully
		S.after_attempted_step(user, src, tool, target)
	else if(success == TOOL_USE_FAIL)
		tool.handle_failure(user, surgery_target, required_stat = S.required_stat, required_quality = S.required_tool_quality)
		S.fail_step(user, src, tool, target)	//malpractice
		S.after_attempted_step(user, src, tool, target)

	SSnano.update_uis(src)

	return TRUE


proc/do_surgery(mob/living/carbon/M, mob/living/user, obj/item/tool)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!istype(M))
		return FALSE
	if(user.a_intent != I_HELP)	//check for Hippocratic Oath
		return FALSE

	var/zone = user.targeted_organ
	var/obj/item/organ/external/affected

	if(ishuman(M))
		var/mob/living/carbon/human/H = M

		affected = H.get_organ(zone)
		if(affected)
			// Self-surgery sanity check: no operating on your right arm with a tool held in your right hand
			if(M == user)
				var/obj/item/held_item
				if(affected.organ_tag == BP_L_ARM)
					held_item = H.l_hand

				else if(affected.organ_tag == BP_R_ARM)
					held_item = H.r_hand

				if(held_item)
					to_chat(user, SPAN_WARNING("You cannot operate on your [affected.name] while holding [held_item] in it!"))
					return TRUE

<<<<<<< HEAD
			if(affected.do_surgery(user, tool, surgery_status))
=======
			if(affected.do_surgery(user, tool))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
				return TRUE

	// Invoke legacy surgery code
	if(!do_old_surgery(M, user, tool))
		if(affected && affected.open && tool && tool.tool_qualities)
			// Open or update surgery UI
<<<<<<< HEAD
			affected.ui_interact(user)
=======
			affected.nano_ui_interact(user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

			to_chat(user, SPAN_WARNING("You can't see any useful way to use [tool] on [M]."))
			return 1 //Prevents attacking the patient when trying to do surgery
			//We check if tool qualities is populated here, so that, if it's not, we can return zero
			//This will allow afterattack to be called for things which aren't exactly surgery tools, such as the autopsy scanner


// Some surgery steps can be ran just by clicking a limb with a tool, old surgery style
// Those are handled here
<<<<<<< HEAD
/obj/item/organ/external/do_surgery(mob/living/user, obj/item/tool, var/surgery_status = CAN_OPERATE_ALL)
	if(!tool)
		if(is_open())
			ui_interact(user)
			return TRUE
		return FALSE
	var/list/possible_steps
	if(surgery_status == CAN_OPERATE_STANDING)
		possible_steps = list(QUALITY_CUTTING, QUALITY_CAUTERIZING)
		var/tool_type = tool.get_tool_type(user, possible_steps, get_surgery_target())
		switch(tool_type)
			if(QUALITY_CUTTING)
				try_surgery_step(/datum/surgery_step/remove_shrapnel, user, tool)
				return TRUE
			if(QUALITY_CAUTERIZING)
				try_surgery_step(/datum/surgery_step/close_wounds, user, tool)
				return TRUE
		return FALSE
	if(BP_IS_ROBOTIC(src))
		possible_steps = list(QUALITY_SCREW_DRIVING, QUALITY_WELDING)

=======
/obj/item/organ/external/do_surgery(mob/living/user, obj/item/tool)
	if(!tool)
		if(is_open())
			nano_ui_interact(user)
			return TRUE
		return FALSE

	var/list/possible_steps

	if(BP_IS_ROBOTIC(src))
		possible_steps = list(QUALITY_SCREW_DRIVING, QUALITY_WELDING)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		var/tool_type = tool.get_tool_type(user, possible_steps, get_surgery_target())

		switch(tool_type)
			if(QUALITY_SCREW_DRIVING)
				try_surgery_step(/datum/surgery_step/robotic/open, user, tool)
				return TRUE

			if(QUALITY_WELDING)
<<<<<<< HEAD
				try_surgery_step(/datum/surgery_step/robotic/fix_brute, user, tool)
				return TRUE
=======
				if(try_surgery_step(/datum/surgery_step/robotic/fix_brute, user, tool))
					return TRUE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

			if(ABORT_CHECK)
				return TRUE


	else if(BP_IS_ORGANIC(src))
		possible_steps = list()

		if(open)
			possible_steps += QUALITY_CAUTERIZING

			if(open == 1)
				possible_steps += QUALITY_RETRACTING

			if(status & ORGAN_BLEEDING)
				possible_steps += QUALITY_CLAMPING

		else
			possible_steps += QUALITY_CUTTING
			possible_steps += QUALITY_LASER_CUTTING


		var/tool_type = tool.get_tool_type(user, possible_steps, get_surgery_target())

		switch(tool_type)
			if(QUALITY_CUTTING)
				try_surgery_step(/datum/surgery_step/cut_open, user, tool)
				return TRUE

			if(QUALITY_LASER_CUTTING)
				try_surgery_step(/datum/surgery_step/cut_open/laser, user, tool)
				return TRUE

			if(QUALITY_RETRACTING)
				try_surgery_step(/datum/surgery_step/retract_skin, user, tool)
				return TRUE

			if(QUALITY_CLAMPING)
				try_surgery_step(/datum/surgery_step/fix_bleeding, user, tool)
				return TRUE

			if(QUALITY_CAUTERIZING)
				try_surgery_step(/datum/surgery_step/cauterize, user, tool)
				return TRUE

			if(ABORT_CHECK)
				return TRUE

	return FALSE


/obj/item/organ/external/proc/try_autodiagnose(mob/living/user)
<<<<<<< HEAD
	if(istype(user))
		// Carrions should keep this power as they control the whole body
		if(!BP_IS_ROBOTIC(src) && user == owner && is_carrion(user))
			diagnosed = TRUE
			return TRUE

		if(user.stats?.getStat(BP_IS_ROBOTIC(src) ? STAT_MEC : STAT_BIO) >= STAT_LEVEL_EXPERT)
=======
	if(istype(user) && user.stats)
		// Carrions control their whole body so they auto base this check
		if(!BP_IS_ROBOTIC(src) && user == owner && is_carrion(user))
			diagnosed = TRUE
			return TRUE
		if(user.stats.getStat(BP_IS_ROBOTIC(src) ? STAT_MEC : STAT_BIO) >= STAT_LEVEL_EXPERT)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			to_chat(user, SPAN_NOTICE("One brief look at [get_surgery_name()] is enough for you to see all the issues immediately."))
			diagnosed = TRUE
			return TRUE

	return FALSE

<<<<<<< HEAD
=======
//This checks to see shrapnel in the person, used in surgery to remove them all.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/organ/external/proc/shrapnel_check()
	if(locate(/obj/item/material/shard/shrapnel) in implants)
		return TRUE

	return FALSE

//check if mob is lying down on something we can operate him on.
/proc/can_operate(mob/living/carbon/M, mob/living/user)
	if(M == user)	// Self-surgery

<<<<<<< HEAD
		// Lings don't need to sit in a chair to perform a surgery on themselves
		if(is_carrion(user))
			return TRUE

		// Normal humans do
		var/atom/chair = locate(/obj/structure/bed/chair, M.loc)
		return (chair && chair.buckled_mob == M) ? CAN_OPERATE_ALL : CAN_OPERATE_STANDING

	return M.lying && (locate(/obj/machinery/optable, M.loc) || (locate(/obj/structure/bed, M.loc)) || locate(/obj/structure/table, M.loc))
=======
		//Carrions dont need a chair to do self surgery
		if(is_carrion(user))
			return TRUE

		//normal humans do
		var/atom/chair = locate(/obj/structure/bed/chair, M.loc)
		return chair && chair.buckled_mob == M

	return M.lying && (locate(/obj/machinery/optable, M.loc) || (locate(/obj/structure/bed, M.loc)) || locate(/obj/structure/table, M.loc))

// Returns a bonus to apply to flat surgery values for various stat levels.
// Soft caps at 80 bio, providing only 1/10 of the stat value exceeding 80.
proc/calculate_expert_surgery_bonus(mob/living/user)
	var/user_stat = user.stats.getStat(STAT_BIO)
	var/stat_bonus = 0
	if(user_stat > STAT_LEVEL_EXPERT && user_stat <= STAT_LEVEL_PROF)
		stat_bonus = user_stat - STAT_LEVEL_EXPERT
	else if(user_stat > STAT_LEVEL_PROF && user_stat <= STAT_LEVEL_GODLIKE)
		stat_bonus = 20 + (user_stat - STAT_LEVEL_PROF) * 0.5
	else if(user_stat > STAT_LEVEL_GODLIKE)
		stat_bonus = 30 + (user_stat - STAT_LEVEL_GODLIKE) * 0.1
	return stat_bonus

// Same logic as above, but instead gives a bonus to reduce surgery step duration
// These formulas are done with a base 80 duration in mind and apply only to any non-tool_use_extended surgical steps
// These are, namely, brute_heal(), burn_heal(), tox_heal() and insert_item()
// - Sebastian Schrader

proc/bio_time_bonus(mob/living/user)
	var/user_stat = max(user.stats.getStat(STAT_BIO), user.stats.getStat(STAT_MEC)) // Pick the highest between MEC and BIO, so that roboticists may also benefit.
	var/time_bonus = 0 // Maximum of 80
	if(user_stat > STAT_LEVEL_EXPERT && user_stat <= STAT_LEVEL_PROF) // Average doctor gets 40 BIO, bonuses start from 41 MEC/BIO onwards
		time_bonus = (user_stat - 40) // Minimum of 1 up to 20 at 60 MEC/BIO
	else if(user_stat > STAT_LEVEL_PROF && user_stat <= STAT_LEVEL_GODLIKE)
		time_bonus = 20 + (user_stat - STAT_LEVEL_PROF) // 21 up to 40 at 80 MEC/BIO
	else if(user_stat > STAT_LEVEL_GODLIKE && user_stat <= 120) // Soft cap to prevent going over the surgical step duration
		time_bonus = 40 + (user_stat - STAT_LEVEL_GODLIKE) // 41 to 80 (instant!) at 120 MEC/BIO and over
	else if(user_stat >= 120) // Sanity check
		time_bonus = 80 // Hardcap met at 120 MEC/BIO already, don't ever make it go over this no matter how insane our stats are
	return time_bonus
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
