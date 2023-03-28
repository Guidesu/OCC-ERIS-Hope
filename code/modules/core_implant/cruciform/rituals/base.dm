/datum/ritual/cruciform/base
	name = "cruciform"
	phrase = null
	implant_type = /obj/item/implant/core_implant/cruciform
<<<<<<< HEAD
	success_message = "On the verge of audibility you hear pleasant music, your mind clears up and the spirit grows stronger. Your prayer was heard."
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	fail_message = "The Cruciform feels cold against your chest."
	category = "Common"
//	cooldown_time = 1 MINUTES

/datum/ritual/targeted/cruciform/base
	name = "cruciform targeted"
	phrase = null
	implant_type = /obj/item/implant/core_implant/cruciform
	category = "Common"

/datum/ritual/cruciform/base/relief
	name = "Relief"
	phrase = "Et si ambulavero in medio umbrae mortis non timebo mala."
	desc = "A short litany to relieve pain of the afflicted."
	power = 50
	ignore_stuttering = TRUE
<<<<<<< HEAD

/* Occulus Edit
/datum/ritual/cruciform/base/relief/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	H.add_chemical_effect(CE_PAINKILLER, 10)
	set_personal_cooldown(H)
	return TRUE
*/

/datum/ritual/cruciform/base/soul_hunger
	name = "Soul Hunger"
	phrase = "Panem nostrum cotidianum da nobis hodie"
	desc = "Litany of piligrims, helps better withstand hunger."
	power = 50

/datum/ritual/cruciform/base/soul_hunger/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	H.nutrition += 100
	H.adjustToxLoss(10)	// OCCULUS EDIT - NERF THE FREE NUTRITION
//	set_personal_cooldown(H) Occulus Edit Haha no funni cooldown
=======
	nutri_cost = 25//med cost
	blood_cost = 25//med cost

/datum/ritual/cruciform/base/relief/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	//var/datum/reagent/bloodhold
	if(H.species?.reagent_tag != IS_SYNTHETIC)
		if(H.nutrition >= nutri_cost)
			H.nutrition -= nutri_cost
		else
			to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
			H.vessel.remove_reagent("blood",blood_cost)
	H.reagents.add_reagent("laudanum", 10)
	H.updatehealth()
	return TRUE

/datum/ritual/cruciform/base/soul_hunger
	name = "Soul Hunger"
	phrase = "Panem nostrum cotidianum da nobis hodie."
	desc = "Litany of pilgrims that helps better withstand hunger."
	power = 20

/datum/ritual/cruciform/base/soul_hunger/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	H.nutrition += 50
	H.adjustFireLoss(5)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	return TRUE

/datum/ritual/cruciform/base/glow_book
	name = "Word of Guidance"
	phrase = "Legem pone mihi, Domine, in via tua, et dirige me in semitam rectam, propter inimicos meos."
	desc = "A prayer to light your way. It makes the ritual book you're holding glow brightly for ten minutes. "
	power = 10 //Cost correlates to duration
	cooldown = TRUE
	cooldown_time = 10 MINUTES
	cooldown_category = "bglow"
	nutri_cost = 10//low cost
	blood_cost = 10//low cost

/datum/ritual/cruciform/base/glow_book/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	var/successful = FALSE
	if (istype(H.get_active_hand(), /obj/item/book/ritual/cruciform))
		if(H.species?.reagent_tag != IS_SYNTHETIC)
			if(H.nutrition >= nutri_cost)
				H.nutrition -= nutri_cost
			else
				to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
				H.vessel.remove_reagent("blood",blood_cost)
		var/obj/item/book/ritual/cruciform/M = H.get_active_hand()
		M.set_light(5) //Slightly better than as a lantern since you can only hold it in hand or within the belt slot.
		playsound(H.loc, 'sound/ambience/ambicha2.ogg', 75, 1)
		H.visible_message(
			SPAN_NOTICE("The ritual book [H] is holding begins to emit light."),
			SPAN_NOTICE("The ritual book you're holding begins to glow brightly.")
		)
		addtimer(CALLBACK(M, /obj/item/book/ritual/cruciform/proc/glowient), 6000)
		successful = TRUE
		set_personal_cooldown(H)
	else
		to_chat(H, SPAN_DANGER("You need to be holding a ritual book to perfom this rite."))
	return successful

/obj/item/book/ritual/cruciform/proc/glowient()
	set_light(0)

/datum/ritual/cruciform/base/flare
	name = "Holy Light"
	phrase = "Lucerna pedibus meis verbum tuum, et lumen semitis meis."
	desc = "Litany of pilgrims that creates a small light for about twenty minutes."
	power = 20 //Cost correlates to duration.
	cooldown = TRUE
	cooldown_time = 2 MINUTES
	cooldown_category = "flare"
	nutri_cost = 10//low cost
	blood_cost = 10//low cost

/datum/ritual/cruciform/base/flare/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	if(H.species?.reagent_tag != IS_SYNTHETIC)
		if(H.nutrition >= nutri_cost)
			H.nutrition -= nutri_cost
		else
			to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
			H.vessel.remove_reagent("blood",blood_cost)
	playsound(H.loc, 'sound/effects/snap.ogg', 50, 1)
	new /obj/effect/sparks(H.loc)
	new /obj/effect/effect/smoke/illumination(H.loc, brightness=max(7), lifetime=12000) //Very bright light.
	set_personal_cooldown(H)
	return TRUE

/datum/ritual/cruciform/occulus/entreaty//Occulus Edit, moved to utility
	name = "Entreaty"
<<<<<<< HEAD
	phrase = "Deus meus ut quid dereliquisti me"
	desc = "Call for help, that other cruciform bearers can hear."
	power = 50
	ignore_stuttering = TRUE

/datum/ritual/cruciform/occulus/entreaty/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)//Occulus Edit, moved to utility
=======
	phrase = "Deus meus ut quid dereliquisti me."
	desc = "Call for help, allowing other cruciform bearers to hear your cries."
	power = 25
	ignore_stuttering = TRUE
	nutri_cost = 25
	blood_cost = 25

/datum/ritual/cruciform/base/entreaty/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	if(H.species?.reagent_tag != IS_SYNTHETIC)
		if(H.nutrition >= nutri_cost)
			H.nutrition -= nutri_cost
		else
			to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
			H.vessel.remove_reagent("blood",blood_cost)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	for(var/mob/living/carbon/human/target in disciples)
		if(target == H)
			continue

		var/obj/item/implant/core_implant/cruciform/CI = target.get_core_implant()
		var/area/t = get_area(H)

		if((istype(CI) && CI.get_module(CRUCIFORM_PRIEST)) || prob(50))
			to_chat(target, SPAN_DANGER("[H], faithful cruciform follower, cries for salvation at [t.name]!"))
<<<<<<< HEAD
	set_personal_cooldown(H)
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	return TRUE

/* Occulus Edit: Removal of Reveal
/datum/ritual/cruciform/occulus/reveal //Occulus Edit, moved to utility
	name = "Reveal Adversaries"
	phrase = "Et fumus tormentorum eorum ascendet in saecula saeculorum: nec habent requiem die ac nocte, qui adoraverunt bestiam, et imaginem ejus, et si quis acceperit caracterem nominis ejus."
<<<<<<< HEAD
	desc = "Gain knowledge of your surroundings, to reveal evil in people and places. Can tell you about hostile creatures around you, rarely can help you spot traps, and sometimes let you sense a carrion."
=======
	desc = "Gain knowledge of your surroundings to reveal evil in people and places. This can tell you about hostile creatures around you, rarely can help you spot traps and sometimes let you sense a monster disguised as a person."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	power = 35
	nutri_cost = 25
	blood_cost = 25

<<<<<<< HEAD
/datum/ritual/cruciform/occulus/reveal/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)//Occulus Edit, moved to utility
	var/was_triggired = FALSE
	log_and_message_admins("performed reveal litany")
	if(prob(20)) //Aditional fail chance that hidded from user
=======
/datum/ritual/cruciform/base/reveal/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	var/was_triggired = FALSE
	if(H.species?.reagent_tag != IS_SYNTHETIC)
		if(H.nutrition >= nutri_cost)
			H.nutrition -= nutri_cost
		else
			to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
			H.vessel.remove_reagent("blood",blood_cost)
	log_and_message_admins("[H.real_name] performed reveal litany")
	if(prob(5)) //Additional fail chance that hidded from user
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		to_chat(H, SPAN_NOTICE("There is nothing there. You feel safe."))
		return TRUE
	for (var/mob/living/carbon/superior_animal/S in range(14, H))
		if (S.stat != DEAD)
			to_chat(H, SPAN_WARNING("Adversaries are near. You can feel something nasty and hostile."))
			was_triggired = TRUE
			break

	if (!was_triggired)
		for (var/mob/living/simple_animal/hostile/S in range(14, H))
			if (S.stat != DEAD)
				to_chat(H, SPAN_WARNING("Adversaries are near. You can feel something nasty and hostile."))
				was_triggired = TRUE
				break
<<<<<<< HEAD
	if (prob(80) && (locate(/obj/structure/wire_splicing) in view(7, H))) //Add more traps later
		to_chat(H, SPAN_WARNING("Something wrong with this area. Tread carefully."))
=======
	if (prob(95) && (locate(/obj/structure/wire_splicing || /obj/item/mine || /obj/item/mine_old || /obj/item/spider_shadow_trap || /obj/item/beartrap) in view(7, H))) //Add more traps later
		to_chat(H, SPAN_WARNING("Something is wrong with this area. Tread carefully."))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		was_triggired = TRUE
	if (prob(80))
		for(var/mob/living/carbon/human/target in range(14, H))
			for(var/organ in target.organs)
				if (organ in subtypesof(/obj/item/organ/internal/carrion))
<<<<<<< HEAD
					to_chat(H, SPAN_DANGER("Something's ire is upon you! Twisted and evil mind touches you for a moment, leaving you in cold sweat."))
					was_triggired = TRUE
					break
	if (!was_triggired)
		to_chat(H, SPAN_NOTICE("There is nothing there. You feel safe."))

	set_personal_cooldown(H)
	return TRUE
	End Occulus Edit*/

/datum/ritual/cruciform/occulus/sense_cruciform//Occulus Edit, moved to utility
	name = "Cruciform sense"
	phrase = "Et si medio umbrae"
	desc = "Very short litany to identify NeoTheology followers. Targets individuals directly in front of caster or being grabbed by caster."
	power = 20

/datum/ritual/cruciform/occulus/sense_cruciform/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)//Occulus Edit, moved to utility
	var/list/mob/living/carbon/human/humans = list()
	for(var/mob/living/carbon/human/T in view(7, get_turf(H)))
		humans.Add(T)
	if(humans.len)
		for(var/mob/living/carbon/human/T in humans)
			var/obj/item/implant/core_implant/cruciform/CI = T.get_core_implant(/obj/item/implant/core_implant/cruciform)
			if(CI)
				to_chat(H, "<span class='rose'>[T] has a cruciform installed.</span>")
	else
		fail("No target. Make sure your target is either in front of you or grabbed by you.", H, C)
		return FALSE
	set_personal_cooldown(H)
	return TRUE

/datum/ritual/cruciform/base/revelation
	name = "Revelation"
	phrase = "Patris ostendere viam"
	desc = "A person close to you will have a vision that could increase their sanity... or that's what you hope will happen."
	power = 50
=======
					to_chat(H, SPAN_DANGER("A black terrible evil brushes against your mind suddenly, a horrible monstrous entity who's mere glancing ire is enough to leave you in a breathless cold sweat..."))
				was_triggired = TRUE
				break
	if (!was_triggired)
		to_chat(H, SPAN_NOTICE("There is nothing here. You feel safe."))
	return TRUE

/datum/ritual/cruciform/base/message
	name = "Sending"
	phrase = "Audit, me audit vocationem. Ego nuntius vobis."
	desc = "Send a message through the void, straight into the mind of another disciple."
	power = 30
	nutri_cost = 10//low cost
	blood_cost = 10//low cost

/datum/ritual/cruciform/base/message/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C,list/targets)
	var/mob/living/carbon/human/H = pick_disciple_global(user, TRUE)
	if(user.species?.reagent_tag != IS_SYNTHETIC)
		if(user.nutrition >= nutri_cost)
			user.nutrition -= nutri_cost
		else
			to_chat(user, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
			user.vessel.remove_reagent("blood",blood_cost)
	if (!H)
		return

	if(user == H)
		fail("You feel stupid.",user,C,targets)
		return FALSE

	var/text = input(user, "What message will you send to the target? The message will be recieved telepathically.", "Sending a message") as text|null
	if (!text)
		return
	to_chat(H, "<span class='notice'><b><font size='3px'><font color='#ffaa00'>[user.real_name]'s voice speaks in your mind: \"[text]\"</font><b></span>")
	log_and_message_admins("[user.real_name] sent a message to [H] with text \"[text]\"")
	playsound(user.loc, 'sound/machines/signal.ogg', 50, 1)
	playsound(H, 'sound/machines/signal.ogg', 50, 1)


/datum/ritual/cruciform/base/revelation
	name = "Revelation"
	phrase = "Patris ostendere viam."
	desc = "A person close to you will have a vision that could increase ther faith... or that's what you hope will happen."
	power = 50
	nutri_cost = 50//high cost
	blood_cost = 10//low cost
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/ritual/cruciform/base/revelation/perform(mob/living/carbon/human/H, obj/item/implant/core_implant/C)
	var/mob/living/carbon/human/T = get_front_human_in_range(H, 4)
	//if(!T || !T.client)
<<<<<<< HEAD
	if(!T)
		fail("No target.", H, C)
		return FALSE
	T.hallucination(15,30)	//OCCULUS EDIT - Tweaks to be more in line with mindwipe
	var/sanity_lost = rand(0,25)	//OCCULUS EDIT - Makes it so that it won't tank someone's sanity, but isn't as powerful
	T.druggy = max(T.druggy, 10)
	T.sanity.changeLevel(sanity_lost)
//OCCULUS EDIT START - Add some feedback for the target
	if(sanity_lost > 0)
		to_chat(T, "<span class='info'>A sensation of dizziness washes over you, relieving you of your woes ever so slightly</span>")
	else
		to_chat(T, "<span class='info'>A sensation of dizziness washes over you.</span>")
//OCCULUS EDIT END - Add some feedback for the target
	//SEND_SIGNAL(H, COMSIG_RITUAL, src, T)	//OCCULUS EDIT - We don't have individual objectives here
=======
	if(H.species?.reagent_tag != IS_SYNTHETIC)
		if(H.nutrition >= nutri_cost)
			H.nutrition -= nutri_cost
		else
			to_chat(H, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
			H.vessel.remove_reagent("blood",blood_cost)
	log_and_message_admins("performed Revelation litany (makes people drugged/hallucinate)")

	if(!T)
		fail("No target.", H, C)
		return FALSE
	T.hallucination(50,100)
	//var/sanity_lost = rand(-10,10) no thanks
	T.druggy = max(T.druggy, 10)
	//T.sanity.changeLevel(sanity_lost) //no thanks
	LEGACY_SEND_SIGNAL(H, COMSIG_RITUAL, src, T)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	return TRUE

/datum/ritual/cruciform/base/install_upgrade
	name = "Install Cruciform Upgrade"
<<<<<<< HEAD
	phrase = "Deum benedicite mihi voluntas in suum donum"
	desc = "This litany will command a cruciform upgrade to attach to follower's cruciform. Follower must lie on altar and upgrade must be near them."
	power = 20
=======
	phrase = "Deum benedicite mihi voluntas in suum donum."
	desc = "This litany will command a cruciform upgrade to attach to follower's cruciform. They must lie on an altar with the upgrade near them."
	power = 20
	nutri_cost = 10//low cost
	blood_cost = 10//low cost
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/ritual/cruciform/base/install_upgrade/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C)
	var/mob/living/carbon/human/H = get_victim(user)
	var/obj/item/implant/core_implant/cruciform/CI = get_implant_from_victim(user, /obj/item/implant/core_implant/cruciform, FALSE)
	if(!CI)
<<<<<<< HEAD
		fail("[H] don't have a cruciform installed.", user, C)
=======
		fail("[H] doesn't have a cruciform installed.", user, C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return FALSE
	if(CI.upgrade)
		fail("Cruciform already has an upgrade installed.", user, C)
		return FALSE

	var/list/L = get_front(user)

	var/obj/item/cruciform_upgrade/CU = locate(/obj/item/cruciform_upgrade) in L

	if(!CU)
		fail("There is no cruciform upgrade nearby.", user, C)
		return FALSE

	if(!(H in L))
		fail("Cruciform upgrade is too far from [H].", user, C)
		return FALSE

	if(CU.active)
		fail("Cruciform upgrade is already active.", user, C)
		return FALSE

	if(!H.lying || !locate(/obj/machinery/optable/altar) in L)
		fail("[H] must lie on the altar.", user, C)
		return FALSE

<<<<<<< HEAD
=======
/* // Getting naked for a common upgrade is just annoying, not exactly thematic. -Kaz
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	for(var/obj/item/clothing/CL in H)
		if(H.l_hand == CL || H.r_hand == CL)
			continue
		fail("[H] must be undressed.", user, C)
		return FALSE
<<<<<<< HEAD

=======
*/
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


	if(!CU.install(H, CI) || CU.wearer != H)
		fail("Commitment failed.", user, C)
		return FALSE

	return TRUE

/datum/ritual/cruciform/base/uninstall_upgrade
	name = "Uninstall Cruciform Upgrade"
	phrase = "Deus meus ut quid habebant affectus."
<<<<<<< HEAD
	desc = "This litany will command cruciform uprgrade to detach from cruciform."
	power = 20
=======
	desc = "This litany will command a cruciform upgrade to detach from a cruciform."
	power = 20
	nutri_cost = 10//low cost
	blood_cost = 10//low cost
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/ritual/cruciform/base/uninstall_upgrade/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C)
	var/mob/living/carbon/human/H = get_victim(user)
	var/obj/item/implant/core_implant/cruciform/CI = get_implant_from_victim(user, /obj/item/implant/core_implant/cruciform, FALSE)
	var/list/L = get_front(user)

	if(!CI)
		fail("There is no cruciform on this one", user, C)
		return FALSE

	if(!CI.upgrade)
		fail("Cruciform upgrade is not installed.", user, C)
		return FALSE

	if(!H.lying || !locate(/obj/machinery/optable/altar) in L)
		fail("[H] must lie on the altar.", user, C)
		return FALSE

	if(CI.upgrade.uninstall() || CI.upgrade)
		fail("Commitment failed.", user, C)
		return FALSE

	return TRUE

<<<<<<< HEAD
/datum/ritual/cruciform/base/reincarnation
	name = "Reincarnation"
	phrase = "Vetus moritur et onus hoc levaverit"
	desc = "This litany calls back the soul of an individual from deep within their cruciform. It must be used after a cruciform is attached."//Occulus Edit
	var/clone_damage = 60

/datum/ritual/cruciform/base/reincarnation/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C)
	var/obj/item/implant/core_implant/cruciform/CI = get_implant_from_victim(user, /obj/item/implant/core_implant/cruciform, FALSE)

	if(!CI)
		fail("There is no cruciform on this one", user, C)
		return FALSE

	var/datum/core_module/cruciform/cloning/data = CI.get_module(CRUCIFORM_CLONING)

	if(!CI.wearer)
		fail("Cruciform is not installed.", user, C)
		return FALSE

	if(!CI.activated)
		fail("This cruciform doesn't have soul inside.", user, C)
		return FALSE

	if(CI.active)
		fail("This cruciform already activated.", user, C)
		return FALSE

	if(CI.wearer.stat == DEAD)
		fail("Soul cannot move to dead body.", user, C)
		return FALSE

	var/datum/mind/MN = data.mind
	if(!istype(MN, /datum/mind))
		fail("Soul is lost.", user, C)
		return FALSE
	if(MN.active)
		if(data.ckey != ckey(MN.key))
			fail("Soul is lost.", user, C)
			return FALSE
	if(MN.current && MN.current.stat != DEAD)
		fail("Soul is lost.", user, C)
		return FALSE

	var/succ = CI.transfer_soul()

	if(!succ)
		fail("Soul transfer failed.", user, C)
		return FALSE


	return TRUE

/datum/ritual/cruciform/base/install
	name = "Commitment"
	phrase = "Unde ipse Dominus dabit vobis signum"
	desc = "This litany attaches a cruciform to a person. The target must be on a Mekhane altar without clothing, and the cruciform must lie on the altar with them."//Occulus Edit

/datum/ritual/cruciform/base/install/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C)
	var/mob/living/carbon/human/H = get_victim(user)
	var/obj/item/implant/core_implant/cruciform/CI = get_implant_from_victim(user, /obj/item/implant/core_implant/cruciform, FALSE)
	if(CI)
		fail("[H] already have a cruciform installed.", user, C)
		return FALSE

	var/list/L = get_front(user)

	CI = locate(/obj/item/implant/core_implant/cruciform) in L

	if(!CI)
		fail("There is no cruciform on this one", user, C)
		return FALSE

	if (H.stat == DEAD)
		fail("It is too late for this one, the soul has already left the vessel", user, C)
		return FALSE

	if(!(H in L))
		fail("Cruciform is too far from [H].", user, C)
		return FALSE

	if(CI.active)
		fail("Cruciform already active.", user, C)
		return FALSE

	if(!H.lying || !locate(/obj/machinery/optable/altar) in L)
		fail("[H] must lie on the altar.", user, C)
		return FALSE

	for(var/obj/item/clothing/CL in H)
		if(H.l_hand == CL || H.r_hand == CL)
			continue
		fail("[H] must be undressed.", user, C)
		return FALSE


	if(!CI.install(H, BP_CHEST, user) || CI.wearer != H)
		fail("Commitment failed.", user, C)
		return FALSE

	if(ishuman(H))
		var/mob/living/carbon/human/M = H
		var/obj/item/organ/external/E = M.organs_by_name[BP_CHEST]
		for (var/i = 0; i < 5;i++)
			E.take_damage(5, sharp = FALSE)
			//Deal 25 damage in five hits. Using multiple small hits mostly prevents internal damage

		M.custom_pain("You feel the nails of the cruciform drive into your ribs!",1)
		M.update_implants()
		M.updatehealth()

	return TRUE
=======
//Give powah

/datum/ritual/cruciform/base/recharge_others
	name = "Empower"
	phrase = "Potestas fidei communicanda est."
	desc = "This ritual helps recharging the nearby disciple's cruciform."
	power = 15
	nutri_cost = 15
	blood_cost = 15
	ignore_stuttering = TRUE

/datum/ritual/cruciform/base/recharge_others/perform(mob/living/carbon/human/user, obj/item/implant/core_implant/C,list/targets)
	var/obj/item/implant/core_implant/cruciform/CI = get_implant_from_victim(user, /obj/item/implant/core_implant/cruciform)

	if(!CI || !CI.active || !CI.wearer)
		fail("Cruciform not found.", user, C)
		return FALSE

	var/mob/living/carbon/human/H = CI.wearer

	if(!istype(H))
		fail("Target not found.",user,C,targets)
		return FALSE

	//Checking turfs allows this to be done in unusual circumstances, like if both are inside the same mecha
	var/turf/T = get_turf(user)
	if (!(T.Adjacent(get_turf(H))))
		to_chat(user, SPAN_DANGER("[H] is beyond your reach.."))
		return

	user.visible_message("[user] places their hands upon [H] and utters a prayer", "You lay your hands upon [H] and begin speaking the words of succor")
	if(user.species?.reagent_tag != IS_SYNTHETIC)
		if(user.nutrition >= nutri_cost)
			user.nutrition -= nutri_cost
		else
			to_chat(user, SPAN_WARNING("You manage to cast the litany at a cost. The physical body consumes itself..."))
			user.vessel.remove_reagent("blood",blood_cost)
	if (do_after(user, 40, H, TRUE))
		T = get_turf(user)
		if (!(T.Adjacent(get_turf(H))))
			to_chat(user, SPAN_DANGER("[H] is beyond your reach.."))
			return
		to_chat(H, "<span class='info'>Your cruciform sings a small tune as it gets charged.</span>")

		CI.restore_power(10)

		return TRUE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
