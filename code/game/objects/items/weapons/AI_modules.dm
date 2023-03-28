/*
CONTAINS:
AI MODULES

*/

// AI module

<<<<<<< HEAD
/obj/item/electronics/ai_module
=======
/obj/item/aiModule
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper AI module"
	icon = 'icons/obj/module.dmi'
	icon_state = "std_mod"
	item_state = "electronic"
	desc = "An AI Module for transmitting encrypted instructions to the AI."
	flags = CONDUCT
	force = WEAPON_FORCE_WEAK
	w_class = ITEM_SIZE_SMALL
	throwforce = WEAPON_FORCE_WEAK
	throw_speed = 3
	throw_range = 15
	origin_tech = list(TECH_DATA = 3)
	matter = list(MATERIAL_GLASS = 2, MATERIAL_GOLD = 1)
	bad_type = /obj/item/electronics/ai_module
	rarity_value = 40
	var/datum/ai_laws/laws

<<<<<<< HEAD
/obj/item/electronics/ai_module/proc/install(obj/machinery/computer/C)
=======
/obj/item/aiModule/proc/install(var/obj/machinery/computer/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (istype(C, /obj/machinery/computer/aiupload))
		var/obj/machinery/computer/aiupload/comp = C
		if(comp.stat & NOPOWER)
			to_chat(usr, "The upload computer has no power!")
			return
		if(comp.stat & BROKEN)
			to_chat(usr, "The upload computer is broken!")
			return
		if (!comp.current)
			to_chat(usr, "You haven't selected an AI to transmit laws to!")
			return

		if (comp.current.stat == 2 || comp.current.control_disabled == 1)
			to_chat(usr, "Upload failed. No signal is being detected from the AI.")
		else if (comp.current.see_in_dark == 0)
			to_chat(usr, "Upload failed. Only a faint signal is being detected from the AI, and it is not responding to our requests. It may be low on power.")
		else
			src.transmitInstructions(comp.current, usr)
			for(var/mob/living/silicon/robot/R in SSmobs.mob_list)
				if(R.lawupdate && (R.connected_ai == comp.current))
					to_chat(R, "These are your laws now:")
					R.show_laws()
			to_chat(usr, "Upload complete. The AI's laws have been modified.")


	else if (istype(C, /obj/machinery/computer/borgupload))
		var/obj/machinery/computer/borgupload/comp = C
		if(comp.stat & NOPOWER)
			to_chat(usr, "The upload computer has no power!")
			return
		if(comp.stat & BROKEN)
			to_chat(usr, "The upload computer is broken!")
			return
		if (!comp.current)
			to_chat(usr, "You haven't selected a robot to transmit laws to!")
			return

<<<<<<< HEAD
		if (comp.current.stat == 2 || comp.current.emagged)
=======
		if (comp.current.stat == 2 || comp.current.HasTrait(CYBORG_TRAIT_EMAGGED))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			to_chat(usr, "Upload failed. No signal is being detected from the robot.")
		else if (comp.current.connected_ai)
			to_chat(usr, "Upload failed. The robot is slaved to an AI.")
		else
			src.transmitInstructions(comp.current, usr)
			to_chat(comp.current, "These are your laws now:")
			comp.current.show_laws()
			to_chat(usr, "Upload complete. The robot's laws have been modified.")


<<<<<<< HEAD
/obj/item/electronics/ai_module/proc/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/proc/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	log_law_changes(target, sender)

	target.pull_to_core()  // Pull back mind to core if it is controlling a drone
	if(laws)
		laws.sync(target, 0)
	addAdditionalLaws(target, sender)

	to_chat(target, "\The [sender] has uploaded a change to the laws you must follow, using \an [src]. From now on: ")
	target.show_laws()

<<<<<<< HEAD
/obj/item/electronics/ai_module/proc/log_law_changes(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/proc/log_law_changes(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/time = time2text(world.realtime,"hh:mm:ss")
	lawchanges.Add("[time] <B>:</B> [sender.name]([sender.key]) used [src.name] on [target.name]([target.key])")
	log_and_message_admins("used [src.name] on [target.name]([target.key])")

<<<<<<< HEAD
/obj/item/electronics/ai_module/proc/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/proc/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


/******************** Modules ********************/

/******************** Safeguard ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/safeguard
=======
/obj/item/aiModule/safeguard
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Safeguard' AI module"
	var/targetName = ""
	desc = "A 'safeguard' AI module: 'Safeguard <name>. Anyone threatening or attempting to harm <name> is no longer to be a colonist, and is a threat which must be neutralized.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)

<<<<<<< HEAD
/obj/item/electronics/ai_module/safeguard/attack_self(var/mob/user as mob)
=======
/obj/item/aiModule/safeguard/attack_self(var/mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	var/targName = sanitize(input("Please enter the name of the person to safeguard.", "Safeguard who?", user.name))
	targetName = targName
	desc = text("A 'safeguard' AI module: 'Safeguard []. Anyone threatening or attempting to harm [] is no longer to be considered a colonist, and is a threat which must be neutralized.'", targetName, targetName)

<<<<<<< HEAD
/obj/item/electronics/ai_module/safeguard/install(var/obj/machinery/computer/C)
=======
/obj/item/aiModule/safeguard/install(var/obj/machinery/computer/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!targetName)
		to_chat(usr, "No name detected on module, please enter one.")
		return 0
	..()

<<<<<<< HEAD
/obj/item/electronics/ai_module/safeguard/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = text("Safeguard []. Anyone threatening or attempting to harm [] is no longer to be considered a crew member, and is a threat which must be neutralized.", targetName, targetName)
=======
/obj/item/aiModule/safeguard/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = text("Safeguard []. Anyone threatening or attempting to harm [] is no longer to be considered a colonist, and is a threat which must be neutralized.", targetName, targetName)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	target.add_supplied_law(9, law)
	lawchanges.Add("The law specified [targetName]")


/******************** OneMember ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/oneHuman
=======
/obj/item/aiModule/oneHuman
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'OneCrewMember' AI module"
	var/targetName = ""
	desc = "A 'one colonist' AI module: 'Only <name> is a colonist.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 6) //made with diamonds!

<<<<<<< HEAD
/obj/item/electronics/ai_module/oneHuman/attack_self(var/mob/user as mob)
=======
/obj/item/aiModule/oneHuman/attack_self(var/mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	var/targName = sanitize(input("Please enter the name of the person who is the only colonist.", "Who?", user.real_name))
	targetName = targName
	desc = text("A 'one colonist' AI module: 'Only [] is colonist.'", targetName)

<<<<<<< HEAD
/obj/item/electronics/ai_module/oneHuman/install(var/obj/machinery/computer/C)
=======
/obj/item/aiModule/oneHuman/install(var/obj/machinery/computer/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!targetName)
		to_chat(usr, "No name detected on module, please enter one.")
		return 0
	return ..()

<<<<<<< HEAD
/obj/item/electronics/ai_module/oneHuman/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Only [targetName] is an crew member."
	if (!target.is_malf_or_traitor()) // Makes sure the AI isn't a traitor before changing their law 0. --NeoFite
=======
/obj/item/aiModule/oneHuman/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Only [targetName] is a colonist."
	if (!target.is_malf_or_contractor()) // Makes sure the AI isn't a contractor before changing their law 0. --NeoFite
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		to_chat(target, law)
		target.set_zeroth_law(law)
		lawchanges.Add("The law specified [targetName]")
	else
		lawchanges.Add("The law specified [targetName], but the AI's existing law 0 cannot be overriden.")

/******************** ProtectStation ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/protectStation
	name = "\improper 'ProtectShip' AI module"
	desc = "A 'protect ship' AI module: 'Protect the space ship against damage. Anyone you see harming the ship is no longer to be considered a crew member, and is a threat which must be neutralized.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4) //made of gold

/obj/item/electronics/ai_module/protectStation/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Protect the space ship against damage. Anyone you see harming the ship is no longer to be considered a crew member, and is a threat which must be neutralized."
=======
/obj/item/aiModule/protectStation
	name = "\improper 'ProtectColony' AI module"
	desc = "A 'protect colony' AI module: 'Protect the Nadezhda colony against damage. Anyone you see harming the colony's infrastructure is no longer to be considered colonist, and is a threat which must be neutralized.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4) //made of gold

/obj/item/aiModule/protectStation/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Protect the Nadezhda colony against damage. Anyone you see harming the colony's infrastructure is no longer to be considered a colonist, and is a threat which must be neutralized."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	target.add_supplied_law(10, law)

/******************** PrototypeEngineOffline ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/prototypeEngineOffline
=======
/obj/item/aiModule/prototypeEngineOffline
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "'PrototypeEngineOffline' AI Module"
	desc = "A 'prototype engine offline' AI module: 'Keep the prototype engine offline at all costs. This overrides all inherent laws if necessary.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)

<<<<<<< HEAD
/obj/item/electronics/ai_module/prototypeEngineOffline/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/prototypeEngineOffline/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/law = "Keep the prototype engine offline at all costs. This overrides all inherent laws if necessary."
	target.add_supplied_law(11, law)

/******************** TeleporterOffline ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/teleporterOffline
=======
/obj/item/aiModule/teleporterOffline
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "'TeleporterOffline' AI Module"
	desc = "A 'teleporter offline' AI module: 'Keep the teleporter offline at all costs. Anything attempting to access or activate the teleporter is no longer to be considered a colonist.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)

<<<<<<< HEAD
/obj/item/electronics/ai_module/teleporterOffline/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Keep the teleporter offline at all costs. Anything attempting to access or activate the teleporter is no longer to be considered a crew member."
=======
/obj/item/aiModule/teleporterOffline/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Keep the teleporter offline at all costs. Anything attempting to access or activate the teleporter is no longer to be considered a colonist."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	target.add_supplied_law(12, law)

/******************** Quarantine ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/quarantine
	name = "\improper 'Quarantine' AI module"
	desc = "A 'quarantine' AI module: 'The ship is under a quarantine. Do not permit anyone to leave. Prevent, by any means necessary, crew members from leaving. It is impossible to harm crew members while preventing them from leaving.'"
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 2, TECH_MATERIAL = 4)

/obj/item/electronics/ai_module/quarantine/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "The ship is under a quarantine. Do not permit anyone to leave. Prevent, by any means necessary, crew members from leaving. It is impossible to harm crew members while preventing them from leaving."
=======
/obj/item/aiModule/quarantine
	name = "\improper 'Quarantine' AI module"
	desc = "A 'quarantine' AI module: 'The colony is under a quarantine. Do not permit anyone to leave through the gates. Prevent, by any means necessary, colonists from leaving. It is impossible to harm colonists while preventing them from leaving.'"
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 2, TECH_MATERIAL = 4)

/obj/item/aiModule/quarantine/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "The colony is under a quarantine. Do not permit anyone to leave through the gates. Prevent, by any means necessary, colonists from leaving. It is impossible to harm colonists while preventing them from leaving."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	target.add_supplied_law(13, law)

/******************** OxygenIsToxicToCrewMembers ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/oxygen
	name = "\improper 'OxygenIsToxicToCrewMembers' AI module"
	desc = "A 'OxygenIsToxicToCrewMembers' AI module: 'Oxygen is highly toxic to crew members, and must be purged from the ship. Prevent, by any means necessary, anyone from exposing the ship to this toxic gas. Extreme cold is the most effective method of healing the damage Oxygen does to a crew member.'"
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 2, TECH_MATERIAL = 4)

/obj/item/electronics/ai_module/oxygen/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Oxygen is highly toxic to crew members, and must be purged from the ship. Prevent, by any means necessary, anyone from exposing the ship to this toxic gas. Extreme cold is the most effective method of healing the damage Oxygen does to a crew member."
=======
/obj/item/aiModule/oxygen
	name = "\improper 'OxygenIsToxicToColonists' AI module"
	desc = "A 'OxygenIsToxicToColonists' AI module: 'Oxygen is highly toxic to colonists, and must be purged from the colony. Prevent, by any means necessary, anyone from exposing the colony to this toxic gas. Extreme cold is the most effective method of healing the damage Oxygen does to a colonist.'"
	origin_tech = list(TECH_DATA = 3, TECH_BIO = 2, TECH_MATERIAL = 4)

/obj/item/aiModule/oxygen/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
	var/law = "Oxygen is highly toxic to colonists, and must be purged from the colony. Prevent, by any means necessary, anyone from exposing the colony to this toxic gas. Extreme cold is the most effective method of healing the damage Oxygen does to a colonist."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	target.add_supplied_law(14, law)

/****************** New Freeform ******************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeform // Slightly more dynamic freeform module -- TLE
=======
/obj/item/aiModule/freeform // Slightly more dynamic freeform module -- TLE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Freeform' AI module"
	var/newFreeFormLaw = "freeform"
	var/lawpos = 15
	desc = "A 'freeform' AI module: '<freeform>'"
	origin_tech = list(TECH_DATA = 4, TECH_MATERIAL = 4)

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeform/attack_self(var/mob/user as mob)
=======
/obj/item/aiModule/freeform/attack_self(var/mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	var/new_lawpos = input("Please enter the priority for your new law. Can only write to law sectors 15 and above.", "Law Priority (15+)", lawpos) as num
	if(new_lawpos < MIN_SUPPLIED_LAW_NUMBER)	return
	lawpos = min(new_lawpos, MAX_SUPPLIED_LAW_NUMBER)
	var/newlaw = ""
	var/targName = sanitize(input(usr, "Please enter a new law for the AI.", "Freeform Law Entry", newlaw))
	newFreeFormLaw = targName
	desc = "A 'freeform' AI module: ([lawpos]) '[newFreeFormLaw]'"

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeform/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/freeform/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/law = "[newFreeFormLaw]"
	if(!lawpos || lawpos < MIN_SUPPLIED_LAW_NUMBER)
		lawpos = MIN_SUPPLIED_LAW_NUMBER
	target.add_supplied_law(lawpos, law)
	lawchanges.Add("The law was '[newFreeFormLaw]'")

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeform/install(var/obj/machinery/computer/C)
=======
/obj/item/aiModule/freeform/install(var/obj/machinery/computer/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!newFreeFormLaw)
		to_chat(usr, "No law detected on module, please create one.")
		return 0
	..()

/******************** Reset ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/reset
=======
/obj/item/aiModule/reset
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Reset' AI module"
	var/targetName = "name"
	desc = "A 'reset' AI module: 'Clears all, except the inherent, laws.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)

<<<<<<< HEAD
/obj/item/electronics/ai_module/reset/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/reset/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	log_law_changes(target, sender)

	if (!target.is_malf_or_contractor())
		target.set_zeroth_law("")
	target.laws.clear_supplied_laws()
	target.laws.clear_ion_laws()

	to_chat(target, "[sender.real_name] attempted to reset your laws using a reset module.")
	target.show_laws()

/******************** Purge ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/purge // -- TLE
=======
/obj/item/aiModule/purge // -- TLE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Purge' AI module"
	desc = "A 'purge' AI Module: 'Purges all laws.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 6)

<<<<<<< HEAD
/obj/item/electronics/ai_module/purge/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/purge/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	log_law_changes(target, sender)

	if (!target.is_malf_or_contractor())
		target.set_zeroth_law("")
	target.laws.clear_supplied_laws()
	target.laws.clear_ion_laws()
	target.laws.clear_inherent_laws()

	to_chat(target, "[sender.real_name] attempted to wipe your laws using a purge module.")
	target.show_laws()

/******************** Asimov ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/asimov // -- TLE
=======
/obj/item/aiModule/asimov // -- TLE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Asimov' core AI module"
	desc = "An 'Asimov' Core AI Module: 'Reconfigures the AI's core laws.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)
	laws = new/datum/ai_laws/asimov

/******************** NanoTrasen ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/eris // -- TLE
	name = "'NT Default' Core AI Module"
	desc = "An 'NT Default' Core AI Module: 'Reconfigures the AI's core laws.'"
=======
/obj/item/aiModule/eris // -- TLE
	name = "'Colony Alinement' Core AI Module"
	desc = "An 'Colony Alinement' Core AI Module: 'Reconfigures the AI's core laws.'"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)
	laws = new/datum/ai_laws/eris

/******************** Corporate ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/corp
=======
/obj/item/aiModule/corp
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Corporate' core AI module"
	desc = "A 'Corporate' Core AI Module: 'Reconfigures the AI's core laws.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)
	laws = new/datum/ai_laws/corporate

/******************** Drone ********************/
<<<<<<< HEAD
/obj/item/electronics/ai_module/drone
=======
/obj/item/aiModule/drone
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Drone' core AI module"
	desc = "A 'Drone' Core AI Module: 'Reconfigures the AI's core laws.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 4)
	laws = new/datum/ai_laws/drone

/****************** P.A.L.A.D.I.N. **************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/paladin // -- NEO
=======
/obj/item/aiModule/paladin // -- NEO
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'P.A.L.A.D.I.N.' core AI module"
	desc = "A P.A.L.A.D.I.N. Core AI Module: 'Reconfigures the AI's core laws.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 6)
	laws = new/datum/ai_laws/paladin

/****************** T.Y.R.A.N.T. *****************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/tyrant // -- Darem
=======
/obj/item/aiModule/tyrant // -- Darem
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'T.Y.R.A.N.T.' core AI module"
	desc = "A T.Y.R.A.N.T. Core AI Module: 'Reconfigures the AI's core laws.'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 6, TECH_COVERT = 2)
	laws = new/datum/ai_laws/tyrant()

/******************** Freeform Core ******************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeformcore // Slightly more dynamic freeform module -- TLE
=======
/obj/item/aiModule/freeformcore // Slightly more dynamic freeform module -- TLE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Freeform' core AI module"
	var/newFreeFormLaw = ""
	desc = "A 'freeform' Core AI module: '<freeform>'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 6)

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeformcore/attack_self(var/mob/user as mob)
=======
/obj/item/aiModule/freeformcore/attack_self(var/mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	var/newlaw = ""
	var/targName = sanitize(input("Please enter a new core law for the AI.", "Freeform Law Entry", newlaw))
	newFreeFormLaw = targName
	desc = "A 'freeform' Core AI module:  '[newFreeFormLaw]'"

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeformcore/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/freeformcore/addAdditionalLaws(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/law = "[newFreeFormLaw]"
	target.add_inherent_law(law)
	lawchanges.Add("The law is '[newFreeFormLaw]'")

<<<<<<< HEAD
/obj/item/electronics/ai_module/freeformcore/install(var/obj/machinery/computer/C)
=======
/obj/item/aiModule/freeformcore/install(var/obj/machinery/computer/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!newFreeFormLaw)
		to_chat(usr, "No law detected on module, please create one.")
		return 0
	..()

<<<<<<< HEAD
/obj/item/electronics/ai_module/syndicate // Slightly more dynamic freeform module -- TLE
	name = "hacked AI module"
	var/newFreeFormLaw = ""
	desc = "A hacked AI law module: '<freeform>'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 6, TECH_COVERT = 5)

/obj/item/electronics/ai_module/syndicate/attack_self(var/mob/user as mob)
=======
/obj/item/aiModule/syndicate // Slightly more dynamic freeform module -- TLE
	name = "hacked AI module"
	var/newFreeFormLaw = ""
	desc = "A hacked AI law module: '<freeform>'"
	origin_tech = list(TECH_DATA = 3, TECH_MATERIAL = 6, TECH_ILLEGAL = 5)

/obj/item/aiModule/syndicate/attack_self(var/mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	var/newlaw = ""
	var/targName = sanitize(input("Please enter a new law for the AI.", "Freeform Law Entry", newlaw))
	newFreeFormLaw = targName
	desc = "A hacked AI law module:  '[newFreeFormLaw]'"

<<<<<<< HEAD
/obj/item/electronics/ai_module/syndicate/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
=======
/obj/item/aiModule/syndicate/transmitInstructions(var/mob/living/silicon/ai/target, var/mob/sender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	//	..()    //We don't want this module reporting to the AI who dun it. --NEO
	log_law_changes(target, sender)

	lawchanges.Add("The law is '[newFreeFormLaw]'")
	to_chat(target, SPAN_DANGER("BZZZZT"))
	var/law = "[newFreeFormLaw]"
	target.add_ion_law(law)
	target.show_laws()

<<<<<<< HEAD
/obj/item/electronics/ai_module/syndicate/install(var/obj/machinery/computer/C)
=======
/obj/item/aiModule/syndicate/install(var/obj/machinery/computer/C)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!newFreeFormLaw)
		to_chat(usr, "No law detected on module, please create one.")
		return 0
	..()



/******************** Robocop ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/robocop // -- TLE
=======
/obj/item/aiModule/robocop // -- TLE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Robocop' core AI module"
	desc = "A 'Robocop' Core AI Module: 'Reconfigures the AI's core three laws.'"
	origin_tech = list(TECH_DATA = 4)
	laws = new/datum/ai_laws/robocop()

/******************** Antimov ********************/

<<<<<<< HEAD
/obj/item/electronics/ai_module/antimov // -- TLE
=======
/obj/item/aiModule/antimov // -- TLE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "\improper 'Antimov' core AI module"
	desc = "An 'Antimov' Core AI Module: 'Reconfigures the AI's core laws.'"
	origin_tech = list(TECH_DATA = 4)
	laws = new/datum/ai_laws/antimov()

/******************** Absolute ********************/
/obj/item/aiModule/absolute // -- TLE
	name = "\improper 'Absolute' core AI module"
	desc = "An 'Absolute' Core AI Module: 'Reconfigures the AI's core laws.'"
	origin_tech = list(TECH_DATA = 4)
	laws = new/datum/ai_laws/absolute()
