/datum/antagonist/carrion
	id = ROLE_CARRION
	role_text = "Carrion"
	role_text_plural = "Carrions"
	restricted_jobs = list("AI", "Robot")
	protected_jobs = list(JOBS_SECURITY, JOBS_COMMAND)
	bantype = ROLE_BANTYPE_CARRION
<<<<<<< HEAD
	welcome_text = "You are Carrion, a leftover from corporate war. You have come onto this vessel to carry out your master plan, and no one can stop you.<br>\
	Your body is ever changing. You should start out by evolving a chemical vessel to use your powers. A carrion maw can be a good way to earn evolution points. <br>\
	You can do contracts to grow stronger until the ship becomes your stage and your master plan is ready. A slow and methodical approach is recommended. <br>\
	You won't find many friends here, but spiders are one of them. If you ever feel alone, you can always give birth to your own children, or search ship in attempt to find your brothers and sisters. <br>\
	Your enemies are many, and your biology can be easily discerned in the health scanner. You should be wary."

	antaghud_indicator = "hudchangeling"


=======
	welcome_text = "You are Carrion, a leftover from a failed experiment. You have come onto this colony to carry out your master plan, and no one can stop you.<br>\
	Your body is ever changing. You should start out by evolving a chemical vessel to use your powers. A carrion maw can be a good way to earn evolution points. <br>\
	You can do contracts to grow stronger until the colony becomes your stage and your master plan is ready. A slow and methodical approach is recommended. <br>\
	You won't find many friends here, but spiders are one of them. If you ever feel alone, you can always give birth to your own children, or search the colony in attempt to find your brothers and sisters. <br>\
	Your enemies are many, and your biology can be easily discerned in the health scanner. You should be wary."
	antaghud_indicator = "hudchangeling"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	survive_objective = null
	allow_neotheology = FALSE

	stat_modifiers = list(
		STAT_TGH = 5,
		STAT_VIG = 15,
<<<<<<< HEAD
		STAT_BIO = 20 //Good at surgery
=======
		STAT_BIO = 30 //Good at surgery
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	)

/datum/antagonist/carrion/special_init()
	owner.current.make_carrion()

/datum/antagonist/carrion/can_become_antag(datum/mind/player)
	if(..() && ishuman(player.current))
		var/mob/living/carbon/human/H = player.current
		if(H.isSynthetic())
			return FALSE
		if(H.species.flags & NO_SCAN)
			return FALSE
		return TRUE
	return FALSE

/datum/antagonist/carrion/equip()
	var/mob/living/L = owner.current

	for(var/name in stat_modifiers)
		L.stats.changeStat(name, stat_modifiers[name])
<<<<<<< HEAD
		
	spawn_uplink(L, 5)
=======

	setup_uplink_source(L, 5)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
