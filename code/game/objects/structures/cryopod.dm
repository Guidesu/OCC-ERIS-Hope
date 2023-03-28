<<<<<<< HEAD
/obj/structure/cryopod_spawner/proc/justequip(mob/living/carbon/human/H, title, alt_title, outfit_type)
=======
/*
Unused file of cryo pods that on click dont even work, these are not used and are disabled to stop admins using these over the working ghost role verson.

/obj/structure/cryopod_spawner/proc/justequip(var/mob/living/carbon/human/H, var/title, var/alt_title, var/outfit_type)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/decl/hierarchy/outfit/outfit = outfit_type
	. = outfit.equip(H, title, alt_title)

/obj/structure/cryopod_spawner
	icon = 'icons/obj/machines/excelsior/objects.dmi'
<<<<<<< HEAD
	icon_state = "cryopod"
	desc = "It looks like ancient cryopod."
=======
	name = "cryogenics pod"
	icon_state = "cryopod"
	desc = "It looks like an older model cryogenics pod."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/mob/spawnmob
	var/spawn_role
	var/spawn_faction
	var/outfit_type // The outfit the employee will be dressed in, if any
	var/stat_modifiers = list(
		STAT_MEC = 25,
		STAT_COG = 40,
		STAT_BIO = 25,
	)
<<<<<<< HEAD
	rarity_value = 10
	spawn_frequency = 10
	spawn_tags = SPAWN_TAG_ENCOUNTER_CRYOPOD
	bad_type = /obj/structure/cryopod_spawner
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/structure/cryopod_spawner/proc/add_stats(var/mob/living/carbon/human/target)
	if(!ishuman(target))
		return FALSE
	for(var/name in src.stat_modifiers)
		target.stats.changeStat(name, stat_modifiers[name])

	return TRUE


/obj/structure/cryopod_spawner/attack_hand(mob/living/user as mob)
	if(!spawnmob)
		for(var/mob/observer/O in world)
			if(!spawnmob)
				var/response = alert(O, "Are you -sure- you want to become a [spawn_faction] [spawn_role]?.","Are you sure?","Yes","Cancel",)
				if(response == "Cancel") continue  //Hit the wrong key...again.

				if(!spawnmob)
					spawnmob = new /mob/living/carbon/human(src.loc)
					spawnmob.ckey = O.ckey
					justequip(spawnmob, spawn_faction, spawn_role, outfit_type)
					add_stats(spawnmob)
		if(!spawnmob)
			spawnmob = new /mob/living/carbon/superior_animal/roach(src.loc)

/obj/structure/cryopod_spawner/ironhammer
	outfit_type = /decl/hierarchy/outfit/job/security/ihoper
<<<<<<< HEAD
	spawn_faction = "Ironhammer"
	spawn_role = "Marine"
=======
	spawn_faction = "Marshal"
	spawn_role = "Warrant Officer"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	stat_modifiers = list(
		STAT_ROB = 40,
		STAT_TGH = 30,
		STAT_VIG = 40,
	)

/obj/structure/cryopod_spawner/medical
	outfit_type = /decl/hierarchy/outfit/job/medical/doctor
<<<<<<< HEAD
	spawn_faction = "Moebius"
=======
	spawn_faction = "Soteria"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	spawn_role = "Doctor"

	stat_modifiers = list(
		STAT_MEC = 25,
		STAT_COG = 40,
		STAT_BIO = 25,
	)

<<<<<<< HEAD
/*
 * Eclipse removal: Cryopod used in random encounters. Due to our lore bringing
 * engineering in-house, it doesn't make sense to spawn technomancers. Plus, due
 * to the spawning code above (see line 38 in particular) I can't rework it into
 * something that we CAN use.		^Spitzer
 */

/*
/obj/structure/cryopod_spawner/technomancer
	outfit_type = /decl/hierarchy/outfit/job/engineering/exultant
	spawn_faction = "Technomancer"
	spawn_role = "Exultant"
=======
/obj/structure/cryopod_spawner/technomancer
	outfit_type = /decl/hierarchy/outfit/job/engineering/exultant
	spawn_faction = "Guild"
	spawn_role = "Guild Master"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	stat_modifiers = list(
		STAT_MEC = 40,
		STAT_COG = 20,
		STAT_TGH = 15,
		STAT_VIG = 10,
	)
<<<<<<< HEAD
*/

/obj/structure/cryopod_spawner/serbian
	outfit_type = /decl/hierarchy/outfit/antagonist/mercenary/equipped
	spawn_faction = "Serbian"
=======

/obj/structure/cryopod_spawner/serbian
	outfit_type = /decl/hierarchy/outfit/antagonist/mercenary/equipped
	spawn_faction = "Void Wolf"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	spawn_role = "Operative"

	stat_modifiers = list(
		STAT_ROB = 40,
		STAT_TGH = 30,
		STAT_VIG = 40,
<<<<<<< HEAD
	)
=======
	)
*/
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
