/datum/antagonist/marshal
	id = ROLE_MARSHAL
<<<<<<< HEAD
	role_text = "Bounty Hunter" //syzygy edit
	role_text_plural = "Bounty Hunters" //syzygy edit
=======
	role_text = "Commando"
	role_text_plural = "Commandos"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	bantype = ROLE_BANTYPE_CREW_SIDED
	antaghud_indicator = "huddeathsquad"

	stat_modifiers = list(
		STAT_TGH = 10,
		STAT_ROB = 10,
		STAT_VIG = 20
	)

<<<<<<< HEAD
	welcome_text = "You are a freelance bounty hunter, contracted to bring in a wanted fugitive, dead or alive.\n\
	You are NOT affiliated with the crew, and if you get caught, you will be prosecuted like any other criminal. Stay weary \
	and you just might make it out of this with a sizeable paycheck." //syzygy edit
=======
	welcome_text = "You are a specially promoted member of the colony under orders of the provost marshal and brigadier to accomplish a specific objective.\n\
	Local members of the blackshield and marshals are unaware of your presence and should remain so if possible, you are to accomplish your objectives \n\
	discretely and quietly unless orders dictate otherwise."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/antagonist/marshal/can_become_antag(datum/mind/M)
	if(!..())
		return FALSE
	return TRUE

/datum/antagonist/marshal/equip()
	var/mob/living/L = owner.current

	for(var/name in stat_modifiers)
		L.stats.changeStat(name, stat_modifiers[name])
		L.stats.addPerk(PERK_CODESPEAK)

	if(!owner.current)
		return FALSE

	spawn_uplink(owner.current)

	return TRUE
