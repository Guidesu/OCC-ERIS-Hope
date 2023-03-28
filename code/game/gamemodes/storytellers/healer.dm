/datum/storyteller/healer
	config_tag = "healer"
	name = "The Healer"
<<<<<<< HEAD
	welcome = "Welcome to CEV Northern Light! We hope you enjoy your stay!"
	description = "Peaceful and relaxed storyteller who will try to help the crew a little."
=======
	welcome = "Welcome to the Nadezhda colony! We hope you enjoy your stay!"
	description = "Peaceful and relaxed storyteller who will try to help the colony a little."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	gain_mult_mundane = 1.1
	gain_mult_moderate = 0.7
	gain_mult_major = 0.7
	gain_mult_roleset = 0.7

	repetition_multiplier = 1.95
	tag_weight_mults = list(TAG_COMBAT = 0.75, TAG_NEGATIVE = 0.5, TAG_POSITIVE = 2)

	//Healer gives you half an hour to setup before any antags
	points = list(
	EVENT_LEVEL_MUNDANE = 0, //Mundane
	EVENT_LEVEL_MODERATE = 0, //Moderate
	EVENT_LEVEL_MAJOR = 0, //Major
<<<<<<< HEAD
	EVENT_LEVEL_ROLESET = 40 //Roleset
	)
=======
	EVENT_LEVEL_ROLESET = -999 //Roleset
	)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
