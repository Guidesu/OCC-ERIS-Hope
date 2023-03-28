#define OBELISK_UPDATE_TIME 5 SECONDS

var/list/disciples = list()

/obj/item/implant/core_implant/cruciform
<<<<<<< HEAD
	name = "core implant"
	icon_state = "cruciform_green"
	desc = "Soul holder for anyone who can afford it. With the proper flair, this can be implanted to induct a new believer into Transhumanism."
	allowed_organs = list(BP_CHEST)
	implant_type = /obj/item/implant/core_implant/cruciform
	layer = ABOVE_MOB_LAYER
	access = list(access_nt_disciple)
	power = 50
	max_power = 50
	power_regen = 2/(1 MINUTES)
	price_tag = 500
	var/obj/item/cruciform_upgrade/upgrade

//	var/righteous_life = 0 Occulus Edit: Be yote
//	var/max_righteous_life = 100 Occulue Edit: Begone

/*/obj/item/implant/core_implant/cruciform/auto_restore_power() occulus edit - this is defined in the modular folder for us
	if(power >= max_power)
		return
	var/true_power_regen = power_regen
	if(GLOB.miracle_points > 0)
		true_power_regen += GLOB.miracle_points / (1 MINUTES)
	true_power_regen += max(round(wearer.stats.getStat(STAT_COG) / 4), 0) * (0.1 / 1 MINUTES)
	true_power_regen +=  power_regen * 1.5 * righteous_life / max_righteous_life
	restore_power(true_power_regen)

/obj/item/implant/core_implant/cruciform/proc/register_wearer() Occulus lives free and is happy
	RegisterSignal(wearer, COMSIG_CARBON_HAPPY, .proc/on_happy, TRUE)
	RegisterSignal(wearer, COMSIG_GROUP_RITUAL, .proc/on_ritual, TRUE)

/obj/item/implant/core_implant/cruciform/proc/unregister_wearer()
	UnregisterSignal(wearer, COMSIG_CARBON_HAPPY)
	UnregisterSignal(wearer, COMSIG_GROUP_RITUAL) Occulus knows prohibition doesn't work

/obj/item/implant/core_implant/cruciform/proc/on_happy(datum/reagent/happy, signal)
	if(istype(happy, /datum/reagent/ethanol))
		righteous_life = max(righteous_life - 0.1, 0)
	else if(istype(happy, /datum/reagent/drug))
		righteous_life = max(righteous_life - 0.5, 0) Occulus seek joy in the oneness that is the Mekhane

/obj/item/implant/core_implant/cruciform/proc/on_ritual()
	righteous_life = min(righteous_life + 20, max_righteous_life)We have no desire for this
*/
=======
	name = "vinculum cruciform"
	icon_state = "cruciform_green"
	desc = "A symbol and power core of every disciple. With the proper rituals, this can be implanted to induct a new believer into the Church of Absolute."
	allowed_organs = list(BP_CHEST)
	implant_type = /obj/item/implant/core_implant/cruciform
	layer = ABOVE_MOB_LAYER
	access = list(access_crematorium)
	power = 0
	max_power = 60
	power_regen = 0.5
	price_tag = 10000
	var/channeling_boost = 0  // used for the power regen boost if the wearer has the channeling perk
	var/obj/item/cruciform_upgrade/upgrade

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/implant/core_implant/cruciform/install(mob/living/target, organ, mob/user)
	. = ..()
	if(.)
<<<<<<< HEAD
		target.stats.addPerk(/datum/perk/sanityboost)
//		register_wearer() Occulus Edit: Doesn't Exist

/obj/item/implant/core_implant/cruciform/uninstall()
//	unregister_wearer() Occulus Edit: We don't use this
	wearer.stats.removePerk(/datum/perk/sanityboost)
	return ..()

/obj/item/implant/core_implant/cruciform/get_mob_overlay(gender)
=======
		target.stats.addPerk(PERK_SANITYBOOST)
		target.stats.addPerk(PERK_UNFINISHED_DELIVERY)

/obj/item/implant/core_implant/cruciform/uninstall()
	wearer.stats.removePerk(PERK_SANITYBOOST)
	wearer.stats.addPerk(PERK_UNFINISHED_DELIVERY)
	return ..()

/obj/item/implant/core_implant/cruciform/get_mob_overlay(gender, form)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	gender = (gender == MALE) ? "m" : "f"
	return image('icons/mob/human_races/cyberlimbs/neotheology.dmi', "[icon_state]_[gender]")

/obj/item/implant/core_implant/cruciform/hard_eject()
	if(!ishuman(wearer))
		return
	var/mob/living/carbon/human/H = wearer
	name = "[H]'s Cruciform" //This is included here to make it obvious who a cruciform belonged to if it was surgically removed
	if(H.stat == DEAD)
		return
	if(!active)
		return
	H.adjustBrainLoss(60)
	H.adjustOxyLoss(200+rand(50))
	if(part)
<<<<<<< HEAD
		H.apply_damage(100+rand(75), BURN, part, used_weapon = src)
=======
		H.apply_damage(100+rand(150), BURN, part)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	H.apply_effect(40+rand(20), IRRADIATE, check_protection = 0)
	var/datum/effect/effect/system/spark_spread/s = new
	s.set_up(3, 1, src)
	s.start()

/obj/item/implant/core_implant/cruciform/activate()
	if(!wearer || active)
		return

	if(is_carrion(wearer))
		playsound(wearer.loc, 'sound/hallucinations/wail.ogg', 55, 1)
		wearer.gib()
		if(eotp)
			eotp.addObservation(200)
		return
	..()
	add_module(new CRUCIFORM_COMMON)
	if(path == "tess")
		add_module(new CRUCIFORM_TESS)
	if(path == "lemn")
		add_module(new CRUCIFORM_LEMN)
	if(path == "mono")
		add_module(new CRUCIFORM_MONO)
	if(path == "divi")
		add_module(new CRUCIFORM_DIVI)
	if(path == "fact")
		add_module(new CRUCIFORM_FACT)
	if(path == "omni")
		add_module(new CRUCIFORM_TESS)
		add_module(new CRUCIFORM_LEMN)
		add_module(new CRUCIFORM_MONO)
		add_module(new CRUCIFORM_DIVI)
		add_module(new CRUCIFORM_FACT)
		add_module(new CRUCIFORM_PRIEST)
		add_module(new CRUCIFORM_INQUISITOR)
		add_module(new CRUCIFORM_CRUSADER)
		add_module(new CRUCIFORM_OMNI)
	update_data()
	disciples |= wearer
	var/datum/core_module/cruciform/cloning/M = get_module(CRUCIFORM_CLONING)
	if(M)
		M.write_wearer(wearer) //writes all needed data to cloning module
	if(ishuman(wearer)) //Eclipse add
		var/mob/living/carbon/human/H = wearer
		H.genetic_corruption = 0
	if(eotp)
		eotp.addObservation(50)
	return TRUE

/obj/item/implant/core_implant/cruciform/examine(mob/user)
	..()
	var/datum/core_module/cruciform/cloning/data = get_module(CRUCIFORM_CLONING)
	if(data?.mind) // if there is cloning data and it has a mind
		to_chat(user, SPAN_NOTICE("This cruciform has been activated."))
		if(isghost(user) || (user in disciples))
			var/datum/mind/MN = data.mind
			if(MN.name) // if there is a mind and it also has a name
				to_chat(user, SPAN_NOTICE("It contains <b>[MN.name]</b>'s soul."))
			else
				to_chat(user, SPAN_DANGER("Something terrible has happened with this soul. Please notify somebody in charge."))
	else // no cloning data
		to_chat(user, "This cruciform has not yet been activated.")

<<<<<<< HEAD


=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/core_implant/cruciform/deactivate()
	if(!active || !wearer)
		return
	disciples.Remove(wearer)
	if(eotp)
		eotp.removeObservation(50)
	..()

/obj/item/implant/core_implant/cruciform/Process()
	..()
<<<<<<< HEAD
//	if(active && round(world.time) % 5 == 0)
//		remove_cyber()   -- Eclipse Edit
	if(wearer)
		if(wearer.stat == DEAD)
			deactivate()
		else if(ishuman(wearer)) //Occulus Edit Start
			var/mob/living/carbon/human/H = wearer
			if(H.genetic_corruption > 49) //SEVEN BY SEVEN
				H.genetic_corruption -= 1
//Occulus Edit End

=======
	if(active && round(world.time) % 5 == 0)
		remove_cyber()
	if(wearer && wearer.stat == DEAD || wearer.is_mannequin) //If were dead or a mannequin we do not actively process are cruciform
		deactivate()
	if(wearer && wearer.stats && wearer.stats.getPerk(PERK_CHANNELING) && round(world.time) % 5 == 0)
		power_regen -= channeling_boost  // Removing the previous channeling boost since the number of disciples may have changed
		//wearer.visible_message(SPAN_DANGER("Old [channeling_boost]"))
		channeling_boost = 0.2 * disciples.len  // Proportional to the number of cruciformed people on board
		power_regen += channeling_boost  // Applying the new power regeneration boost
		//wearer.visible_message(SPAN_DANGER("New [channeling_boost]"))

/obj/item/implant/core_implant/cruciform/examine(mob/user)
	..()
	var/datum/core_module/cruciform/cloning/data = get_module(CRUCIFORM_CLONING)
	if(data?.mind) // if there is cloning data and it has a mind
		to_chat(user, SPAN_NOTICE("This cruciform has been activated."))
		if(isghost(user) || (user in disciples))
			var/datum/mind/MN = data.mind
			if(MN.name) // if there is a mind and it also has a name
				to_chat(user, SPAN_NOTICE("This cruciform belongs to <b>[MN.name]</b>."))
			else
				to_chat(user, SPAN_DANGER("Something terrible has happened with this soul. Please notify somebody in charge."))
	else // no cloning data
		to_chat(user, "This cruciform has not yet been activated.")

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/core_implant/cruciform/proc/transfer_soul()
	if(!wearer || !activated)
		return FALSE
	var/datum/core_module/cruciform/cloning/data = get_module(CRUCIFORM_CLONING)
	//if(wearer.dna.unique_enzymes == data.dna.unique_enzymes) Mekhanites are ultratranshumanists - Eclipse edit
/*	for(var/mob/M in GLOB.player_list)
		if(M.ckey == data.ckey)
			if(M.stat != DEAD)
				return FALSE  */
	var/datum/mind/MN = data.mind
	if(!istype(MN, /datum/mind))
		return
	MN.transfer_to(wearer)
	wearer.ckey = data.ckey
	for(var/datum/language/L in data.languages)
		wearer.add_language(L.name)
	update_data()
	if (activate())
		return TRUE

<<<<<<< HEAD
/*/obj/item/implant/core_implant/cruciform/proc/remove_cyber()
	if(!wearer)
		return
	for(var/obj/O in wearer)
=======

/obj/item/implant/core_implant/cruciform/proc/remove_cyber()
	if(!wearer)
		return
	for(var/obj/O in wearer)
/* //Our lore allows for church members to have synthetics so this area is commented out. -Kazkin
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if(istype(O, /obj/item/organ/external))
			var/obj/item/organ/external/R = O
			if(!BP_IS_ROBOTIC(R))
				continue

			if(R.owner != wearer)
				continue
			wearer.visible_message(SPAN_DANGER("[wearer]'s [R.name] tears off."),
			SPAN_DANGER("Your [R.name] tears off."))
			R.droplimb()
<<<<<<< HEAD
		if(istype(O, /obj/item/implant))
			if(O == src)
				continue
			var/obj/item/implant/R = O
=======
*/
//This is the function to remove excelsior implants for cruciform bearers. Should only make cruciform bearers react badly to excelsior implants. -Kaz
		if(istype(O, /obj/item/implant/excelsior))
			if(O == src)
				continue
			var/obj/item/implant/excelsior/R = O
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			if(R.wearer != wearer)
				continue
			if(R.cruciform_resist)
				continue
			wearer.visible_message(SPAN_DANGER("[R.name] rips through [wearer]'s [R.part]."),\
			SPAN_DANGER("[R.name] rips through your [R.part]."))
			R.part.take_damage(rand(20,40))
			R.uninstall()
			R.malfunction = MALFUNCTION_PERMANENT
<<<<<<< HEAD
	if(ishuman(wearer))
		var/mob/living/carbon/human/H = wearer
		H.update_implants()*/

=======
			if(ishuman(wearer))
				var/mob/living/carbon/human/H = wearer
				H.update_implants()


>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/core_implant/cruciform/proc/update_data()
	if(!wearer)
		return

	add_module(new CRUCIFORM_CLONING)


//////////////////////////
//////////////////////////

/obj/item/implant/core_implant/cruciform/proc/make_common()
	remove_modules(CRUCIFORM_PRIEST)
	remove_modules(CRUCIFORM_INQUISITOR)
	remove_modules(/datum/core_module/cruciform/red_light)
	security_clearance = CLEARANCE_COMMON

/obj/item/implant/core_implant/cruciform/proc/make_priest()
	add_module(new CRUCIFORM_PRIEST)
	add_module(new CRUCIFORM_REDLIGHT)
	security_clearance = CLEARANCE_CLERGY

/obj/item/implant/core_implant/cruciform/proc/make_inquisitor()
	add_module(new CRUCIFORM_PRIEST)
	add_module(new CRUCIFORM_INQUISITOR)
	//add_module(new /datum/core_module/cruciform/uplink())
	remove_modules(/datum/core_module/cruciform/red_light)
	security_clearance = CLEARANCE_CLERGY

/obj/item/implant/core_implant/cruciform/proc/make_apostle()
	add_module(new CRUCIFORM_TESS)
	add_module(new CRUCIFORM_LEMN)
	add_module(new CRUCIFORM_MONO)
	add_module(new CRUCIFORM_DIVI)
	add_module(new CRUCIFORM_FACT)
	add_module(new CRUCIFORM_PRIEST)
	add_module(new CRUCIFORM_INQUISITOR)
	add_module(new CRUCIFORM_CRUSADER)
	add_module(new CRUCIFORM_OMNI)
	//add_module(new /datum/core_module/cruciform/uplink())
	remove_modules(/datum/core_module/cruciform/red_light)
	security_clearance = CLEARANCE_CLERGY

	name = "omni cruciform"
	icon_state = "cruciform_omni"
	max_power += 200
	power_regen += 1

	wearer.update_implants()

//Path based cruciforms, these grant additional powers based on what path a cultist walks
/obj/item/implant/core_implant/cruciform/tessellate
	name = "tessellate cruciform"
	icon_state = "cruciform_blue"
	desc = "A symbol and power core of every disciple. With the proper rituals, this can be implanted to induct a new believer into the Church of Absolute."
	implant_type = /obj/item/implant/core_implant/cruciform/tessellate
	power = 0
	max_power = 60
	power_regen = 0.8
	path = "tess"

/obj/item/implant/core_implant/cruciform/lemniscate
	name = "lemniscate cruciform"
	icon_state = "cruciform_red"
	desc = "A symbol and power core of every disciple. With the proper rituals, this can be implanted to induct a new believer into the Church of Absolute."
	implant_type = /obj/item/implant/core_implant/cruciform/lemniscate
	//access = list(access_nt_disciple) //So they can try and recuit people - Correction people just cant stop abusing everything ever.
	power = 0
	max_power = 50
	power_regen = 1
	path = "lemn"

/obj/item/implant/core_implant/cruciform/monomial
	name = "monomial cruciform"
	icon_state = "cruciform_yellow"
	desc = "A symbol and power core of every disciple. With the proper rituals, this can be implanted to induct a new believer into the Church of Absolute."
	implant_type = /obj/item/implant/core_implant/cruciform/monomial
	power = 0
	max_power = 90
	power_regen = 0.2
	path = "mono"

/obj/item/implant/core_implant/cruciform/divisor
	name = "divisor cruciform"
	icon_state = "cruciform_orange"
	desc = "A symbol and power core of every disciple. With the proper rituals, this can be implanted to induct a new believer into the Church of Absolute."
	implant_type = /obj/item/implant/core_implant/cruciform/divisor
	power = 0
	max_power = 50
	power_regen = 0.4
	path = "divi"

/obj/item/implant/core_implant/cruciform/factorial
	name = "factorial cruciform"
	icon_state = "cruciform_cyan"
	desc = "A symbol and power core of every disciple. With the proper rituals, this can be implanted to induct a new believer into the Church of Absolute."
	implant_type = /obj/item/implant/core_implant/cruciform/factorial
	power = 0
	max_power = 50
	power_regen = 0.4
	path = "fact"

/obj/item/implant/core_implant/cruciform/omni
	name = "Omni-Cruciform"
	icon_state = "cruciform_omni"
	desc = "A symbol and power core of every disciple. With the proper rituals, this can be implanted to induct a new believer into the Church of Absolute."
	implant_type = /obj/item/implant/core_implant/cruciform/omni
	power = 0
	max_power = 200
	power_regen = 1
	path = "omni"
	security_clearance = CLEARANCE_CLERGY

// This is used either by Augustine or an agent sent by her that has her authority (an apostle) and should be reserved for events. -Kaz
/mob/proc/make_church_apostle()
	var/mob/living/carbon/human/user = src
	if(user.is_mannequin) //Quick return to stop them adding mages to mannequins
		return
	if(istype(user))
		var/obj/item/organ/external/chest = user.get_organ(BP_CHEST)

		if(chest)
			var/obj/item/implant/core_implant/C = new /obj/item/implant/core_implant/cruciform/omni
			C.install(src)
			C.activate()
			if(mind)
				C.install_default_modules_by_job(mind.assigned_job)
				C.access.Add(mind.assigned_job.cruciform_access)
				C.install_default_modules_by_path(mind.assigned_job)
				C.security_clearance = C.security_clearance
