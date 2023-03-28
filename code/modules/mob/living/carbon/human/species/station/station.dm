////This page is now an Occulus Edit////
/datum/species/human
	name = "Human"
	name_plural = "Humans"

	primitive_form = "Monkey"
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)
	blurb = "Humanity originated in the Sol system, and over the last three centuries has spread \
	colonies across a wide swathe of the Orion Spur. Humanity is one of the two most genetically and culturally divergent species \
	with genetic splicing and bio-augmentation being so common among groups of them. While the United Terran Systems - \
	nicknamed Solgov, does it's best to provide a federal backbone to the species, it's secular nature still thrives today."

	default_form = FORM_HUMAN
	obligate_name = FALSE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "Humanity originated in the Sol system, and over the last five centuries has spread \
	colonies across a wide swathe of space. They hold a wide range of forms and creeds.<br/><br/> \
	While the central Sol Federation maintains control of much of the known star space \
	interests, rampant cyber and bio-augmentation and secretive factions make life on most human \
	worlds tumultuous at best in the far flung galactic rim."

	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 110



	dark_color = "#ffffff"
	light_color = "#000000"

	stat_modifiers = list(
		STAT_BIO = 2,
		STAT_COG = 2,
		STAT_MEC = 2,
		STAT_ROB = 2,
		STAT_TGH = 2,
		STAT_VIG = 2
	)
	darksight = 2

	perks = list(PERK_IWILLSURVIVE, PERK_BATTLECRY, PERK_TENACITY, PERK_DIVERSE_CULTURE)


	spawn_flags = CAN_JOIN

/datum/species/human/get_bodytype()
	return "Human"



/datum/species/unathi
	name = SPECIES_UNATHI
	name_plural = "Unathi"
	icobase = 'icons/mob/human_races/r_lizard_vr.dmi'		//Eclipse edit.
	deform = 'icons/mob/human_races/r_def_lizard_vr.dmi'		//Eclipse edit.
	tail = "sogtail"
	tail_animation = 'icons/mob/species/unathi/tail_vr.dmi'		//Eclipse edit.
	tail_blend = ICON_MULTIPLY								//Eclipse edit.
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp)
	primitive_form = SPECIES_MONKEY_UNATHI
	darksight = 3
//	ambiguous_genders = TRUE
	gluttonous = 1
	slowdown = 0.3
	total_health = 125
	brute_mod = 0.90	//syzygy edit
	burn_mod = 0.90		//also edit
	color_mult = 1
//	metabolic_rate = 0.85
//	item_slowdown_mod = 0.25
	mob_size = MOB_LARGE
	blood_volume = 840
//	bloodloss_rate = 0.75
	num_alternate_languages = 3
	secondary_langs = list(LANGUAGE_UNATHI)
	name_language = LANGUAGE_UNATHI
//	species_language = LANGUAGE_UNATHI
//	health_hud_intensity = 2.5

	min_age = 18 // OCCULUS EDIT - so now you can roleplay as someone who's not middle aged if you're just a unathi-based custom species
	max_age = 260

//	economic_modifier = 7

	blurb = "A reptilian species from the Uuosa-Eso system that speaks the hissing Sinta'Unathi language. \
	Most Unathi are guided by a complex Ethnoreligion called the Unity,\
	which stresses honesty, bravery, and the perfection of one's craft. \
	Discovered a handful of generations ago by the Skrell, they're an independent power with loyal ties to the \
	Skrellian people."

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

/*	breath_cold_level_1 = 260	//Default 240 - Lower is better
	breath_cold_level_2 = 200	//Default 180
	breath_cold_level_3 = 120	//Default 100



	breath_heat_level_1 = 450	//Default 380 - Higher is better
	breath_heat_level_2 = 530	//Default 450
	breath_heat_level_3 = 1400	//Default 1250

	minimum_breath_pressure = 18	//Bigger, means they need more air
*/
	body_temperature = T20C

	spawn_flags = CAN_JOIN | IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34AF10"
	blood_color = "#f24b2e"		//syzygy edit
	base_color = "#066000"

//	reagent_tag = IS_UNATHI

//	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw
/*
	has_limbs = list(
		BP_TORSO =  list("path" = /obj/item/organ/external/chest/unathi),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/unathi),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/unathi),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right)
		)

	//No kidneys or appendix
	has_organ = list(
		O_HEART =    /obj/item/organ/internal/heart/unathi,
		O_LUNGS =    /obj/item/organ/internal/lungs/unathi,
		O_LIVER =    /obj/item/organ/internal/liver/unathi,
		O_BRAIN =    /obj/item/organ/internal/brain/unathi,
		O_EYES =     /obj/item/organ/internal/eyes,
		)
*/

	heat_discomfort_level = 295
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 292
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)
/*
	descriptors = list(
		/datum/mob_descriptor/height = 2,
		/datum/mob_descriptor/build = 2
		)*/

/datum/species/unathi/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/tajaran
	name = SPECIES_TAJ
	name_plural = "Tajaran"
	icobase = 'icons/mob/human_races/r_tajaran.dmi'
	deform = 'icons/mob/human_races/r_def_tajaran.dmi'
	tail = "tajtail"
	tail_animation = 'icons/mob/species/tajaran/tail.dmi'
	tail_blend = ICON_MULTIPLY								//Eclipse edit.
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp)
	darksight = 8
	slowdown = -0.15
//	snow_movement = -1		//Ignores half of light snow
	brute_mod = 1.10
	burn_mod =  1.10
	flash_mod = 1.1
//	metabolic_rate = 1.1
	gluttonous = 1
	num_alternate_languages = 3
	secondary_langs = list(LANGUAGE_SIIK, LANGUAGE_AKHANI)
	name_language = LANGUAGE_SIIK
//	species_language = LANGUAGE_SIIK
//	health_hud_intensity = 2.5

	min_age = 17
	max_age = 80

//	economic_modifier = 7

	blurb = "Hailing from the world of Merelar in the Mecati-Stendarr binary star system. Tajaran are a hardy species of feline-like \
	bipedal sapients that easily stand below-freezing temperatures and adapt quickly to humid ones. The Tajaran species shares a joint republic \
	with the Teshari on the far edge of the Orion spur, formally known as the Tajaran-Teshari Alliance."
	body_temperature = 293.15	//this actualy fixes itchy fur spam

	cold_level_1 = 200 //Default 260
	cold_level_2 = 140 //Default 200
	cold_level_3 = 80  //Default 120



	heat_level_1 = 330 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000
	/*
	breath_cold_level_1 = 180	//Default 240 - Lower is better
	breath_cold_level_2 = 100	//Default 180
	breath_cold_level_3 = 60	//Default 100
	breath_heat_level_1 = 360	//Default 380 - Higher is better
	breath_heat_level_2 = 430	//Default 450
	breath_heat_level_3 = 1000	//Default 1250
*/
	primitive_form = SPECIES_MONKEY_TAJ

	spawn_flags = CAN_JOIN | IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#AFA59E"
	base_color = "#333333"

//	reagent_tag = IS_TAJARA

//	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw

	heat_discomfort_level = 303		// Occulus edit - this does nothing for itchy fur spam, see body temp above

/datum/species/exalt_human
	name = "Exalt Human"
	name_plural = "Exalt Humans"
	default_form = FORM_EXALT_HUMAN
	obligate_name = FALSE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "Since its inception, Humankind has always sought to become something beyond itself- Exalts were their answer. Starting with baseline human DNA, \
	an Exalt's genetic code has been tweaked to make them healthier, smarter, and stronger. Their metabolism is modified to predispose them towards staying \
	fit and athletic for the duration of an extended lifespan. Their organs are specially modified to operate with greater efficiency than the average human's. \
	However, no life is perfect. Life as an Exalt is an expensive one, and low-income humans can't support. A combination of royalty fees for licensed genomes \
	and costly maintenance leave even middle-class exalts paying huge sums of money, often taken directly from their paychecks. Exalts usually resemble \
	especially handsome humans, but anything is possible with enough splicing."
	num_alternate_languages = 2
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 200 //Effectively ageless, but human history is only so long.
	hunger_factor = 1.1

	dark_color = "#ffffff"
	light_color = "#000000"

	stat_modifiers = list(
		STAT_BIO = 5,
		STAT_COG = 5,
		STAT_MEC = 5,
		STAT_ROB = 5,
		STAT_TGH = 5,
		STAT_VIG = 5
	)

	darksight = 3

	perks = list(PERK_DEBTOR, PERK_SPLICER, PERK_DIVERSE_CULTURE)

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/exalt,
		BP_GROIN =  new /datum/organ_description/groin/exalt,
		BP_HEAD  =  new /datum/organ_description/head/exalt,
		BP_L_ARM =  new /datum/organ_description/arm/left/exalt/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/exalt/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/exalt/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/exalt/full
	)

	has_process = list(    // which required-organ checks are conducted.
		OP_HEART        = /obj/item/organ/internal/heart/huge/exalt,
		OP_LUNGS        = /obj/item/organ/internal/lungs/long/exalt,
		OP_STOMACH      = /obj/item/organ/internal/stomach/improved/exalt,
		OP_LIVER        = /obj/item/organ/internal/liver/big/exalt,
		OP_KIDNEY_LEFT  = /obj/item/organ/internal/kidney/left/exalt,
		OP_KIDNEY_RIGHT = /obj/item/organ/internal/kidney/right/exalt,
		BP_BRAIN        = /obj/item/organ/internal/brain,
		OP_APPENDIX     = /obj/item/organ/internal/appendix,
		OP_EYES         = /obj/item/organ/internal/eyes
	)

	spawn_flags = CAN_JOIN

/datum/species/exalt_human/get_bodytype()
	return "Exalt Human"

/datum/species/sablekyne
	name = "Sablekyne"
	name_plural = "Sablekynes"
	default_form = FORM_SABLEKYNE
	obligate_form = TRUE
	unarmed_types = list(/datum/unarmed_attack/claws/strong, /datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite/strong, /datum/unarmed_attack/horns)
	darksight = 8
	num_alternate_languages = 2
	name_language = null
	min_age = 18
	max_age = 110
	blurb = "The Sablekyne are a mammalian alien species vaguely resembling felines with horns, hailing from Onkarth in the Gamma Minoris system. \
	Sablekyne were originally uplifted by the aid of human colonization and human corporations, aiding them by \
	accelerating the fledgling culture into the interstellar age. Their history is full of war and highly fractious \
	ethnicities, something that permeates even to today's times. Northlander sablekyne perfer colder winter environments and speak with Gaelic influences while \
	southlanders prefer hot dry deserts and speak with Japanese influences. Both groups are stocky, strong, and thickly built and few have the lithe feline qualities \
	one would expect."
	taste_sensitivity = TASTE_SENSITIVE                 // How sensitive the species is to minute tastes.

	dark_color = "#00ff00"
	light_color = "#008000"

	cold_level_1 = 240 //Default 270
	cold_level_2 = 215 //Default 230
	cold_level_3 = 190  //Default 200

	heat_level_1 = 340 //Default 330
	heat_level_2 = 400 //Default 380
	heat_level_3 = 480 //Default 460

	heat_discomfort_level = 340

	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
		)


	cold_discomfort_level = 275
/*
	has_organ = list(    //No appendix.
		O_HEART =    /obj/item/organ/internal/heart,
		O_LUNGS =    /obj/item/organ/internal/lungs,
		O_VOICE = 		/obj/item/organ/internal/voicebox,
		O_LIVER =    /obj/item/organ/internal/liver,
		O_KIDNEYS =  /obj/item/organ/internal/kidneys,
		O_BRAIN =    /obj/item/organ/internal/brain,
		O_EYES =     /obj/item/organ/internal/eyes
		)
*/
/datum/species/tajaran/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/skrell
	name = SPECIES_SKRELL
	name_plural = "Skrell"
	icobase = 'icons/mob/human_races/r_skrell.dmi'
	deform = 'icons/mob/human_races/r_def_skrell.dmi'
	primitive_form = SPECIES_MONKEY_SKRELL
	unarmed_types = list(/datum/unarmed_attack/punch)
	blurb = "The Skrell are a race of amphibious, cold-blooded humanoid aliens. They are one of the major players in \
	galactic politics, and although they are considered relatively on a similar level of political and military power to SolGov,\
	 their exact capabilities are kept secret and unclear. Their society follows a caste system and generally tries to project the \
	 Skrell as rational, dependable, and careful. It is their overt caution that borders on paranoia in their interactions, however, \
	 that most hinders them. A remainder from a harsh period of history and potential bad actors. Skrell are, in short, hard to trust, \
	 and choose their words and truths carefully."
	num_alternate_languages = 4 //Let's give the smart frogs some love
	secondary_langs = list(LANGUAGE_SKRELLIAN, LANGUAGE_SCHECHI)
	name_language = LANGUAGE_SKRELLIAN
//	species_language = LANGUAGE_SKRELLIAN
//	assisted_langs = list(LANGUAGE_EAL, LANGUAGE_TERMINUS, LANGUAGE_ROOTLOCAL, LANGUAGE_ROOTGLOBAL, LANGUAGE_VOX)
//	health_hud_intensity = 2

//	water_movement = -3

	min_age = 19
	max_age = 130

//	economic_modifier = 12

	darksight = 4
	flash_mod = 1.2
//	chemOD_mod = 0.9

//	bloodloss_rate = 1.5

//	ambiguous_genders = TRUE

	spawn_flags = CAN_JOIN | IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR

	flesh_color = "#8CD7A3"
	blood_color = "#1D2CBF"
	base_color = "#006666"

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120



	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000
/*
	breath_cold_level_1 = 250	//Default 240 - Lower is better
	breath_cold_level_2 = 190	//Default 180
	breath_cold_level_3 = 120	//Default 100

	breath_heat_level_1 = 400	//Default 380 - Higher is better
	breath_heat_level_2 = 500	//Default 450
	breath_heat_level_3 = 1350	//Default 1250

	reagent_tag = IS_SKRELL*/

/*	has_limbs = list(
		BP_TORSO =  list("path" = /obj/item/organ/external/chest),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/skrell),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right)
		)

/datum/species/skrell/can_breathe_water()
	return TRUE*/

	cold_discomfort_level = 240
	list/cold_discomfort_strings = list(
		"You feel chilly.",
		"You shiver suddenly.",
		"Your chilly flesh stands out in goosebumps."
		)
	spawn_flags = CAN_JOIN

	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 5
	)

	permitted_ears  = list("Sablekyne Large Horns",
		"Sablekyne Curled Horns",
		"Sablekyne Curled Horns (small)",
		"Sablekyne Small Horns 1",
		"Sablekyne Small Horns 2",
		"Sablekyne Small Horns 3",
		"Sablekyne Stabber Horns",
		"Sablekyne Dogma Horns",
		"Sablekyne Outstretched Horns",
		"Sablekyne Halo Horns",
		"Sablekyne Upward Horns",
		"Sablekyne Great Horns",
		"Sablekyne Bun Horns",
		"Sabelkyne Murauder Horns",
		"Sabelkyne Faceguard Horns",
		"Uni-Horn",
		"Ox Horns",
		"Stabber Horns (Colorable)"
		)
	permitted_tail  = list("Sablekyne Tail")
	permitted_wings = list()

	darksight = 3 //Cat eyes
	perks = list(PERK_LASTSTAND, PERK_BONE, PERK_BRAWN, PERK_CARNIVORE)

/datum/species/sablekyne/get_bodytype()
	return "Sablekyne"

/datum/species/marqua
	name = "Mar'Qua"
	name_plural = "Mar'quas"
	default_form = FORM_MARQUA
	obligate_form = TRUE
	reagent_tag = IS_MARQUA
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick)
	darksight = 4
	num_alternate_languages = 2
	name_language = null
	min_age = 18
	max_age = 160
	blurb = "no."
	hunger_factor = 0.5
	taste_sensitivity = TASTE_HYPERSENSITIVE

	dark_color = "#afeeee"
	light_color = "#20b2aa"

	cold_level_1 = 230 //Default 270
	cold_level_2 = 210 //Default 230
	cold_level_3 = 190  //Default 200

	cold_discomfort_level = 230
	list/cold_discomfort_strings = list(
		"You feel chilly.",
		"You shiver suddenly.",
		"Your chilly flesh stands out in goosebumps."
		)
	spawn_flags = CAN_JOIN

	stat_modifiers = list(
		STAT_BIO = 10,
		STAT_COG = 10,
		STAT_MEC = 10
	)

	has_process = list(    // which required-organ checks are conducted.
		OP_HEART        = /obj/item/organ/internal/heart,
		OP_LUNGS        = /obj/item/organ/internal/lungs,
		OP_STOMACH      = /obj/item/organ/internal/stomach,
		OP_LIVER        = /obj/item/organ/internal/liver,
		OP_KIDNEY_LEFT  = /obj/item/organ/internal/kidney,
		OP_KIDNEY_RIGHT = /obj/item/organ/internal/kidney,
		BP_BRAIN        = /obj/item/organ/internal/brain,
		OP_APPENDIX     = /obj/item/organ/internal/appendix,
		OP_EYES         = /obj/item/organ/internal/eyes/marqua
	)

	permitted_ears  = list()
	permitted_tail  = list()
	permitted_wings = list()

	perks = list(PERK_SUDDENBRILLIANCE, PERK_INSPIRED, PERK_ALIEN_NERVES)

/datum/species/marqua/get_bodytype()
	return "Mar'Qua"




/datum/species/kriosan
	name = "Kriosan"
	name_plural = "Kriosans"
	default_form = FORM_KRIOSAN
	obligate_form = TRUE
	reagent_tag = IS_KRIOSAN
	unarmed_types = list(/datum/unarmed_attack/needle, /datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	darksight = 4 //enhanced eyes dosnt mean perfected
	num_alternate_languages = 2
	name_language = null
	min_age = 18
	max_age = 110
	blurb = "no."
	taste_sensitivity = TASTE_HYPERSENSITIVE
	hunger_factor = 1.25
	radiation_mod = 0.5
	total_health = 150
	siemens_coefficient = 2

	dark_color = "#ff0000"
	light_color = "#990000"

	spawn_flags = CAN_JOIN

	stat_modifiers = list(
		STAT_TGH = 5,
		STAT_VIG = 5
	)

	permitted_ears  = list("Fennec Ears",
		"Fox Ears",
		"Hound Ears",
		"Jagged Ears",
		"Kitsune Ears",
		"Doberman Ears",
		"Sleek Ears",
		"Vulpkanin Ears",
		"Wolf Ears"
		)
	permitted_tail  = list("Cross Fox Tail",
		"Curly Tail",
		"Docked Tail",
		"Fennec Tail, Downwards",
		"Fennec Tail, Upwards",
		"Fennecsune Tails",
		"Fennix Tail",
		"Fox Tail, Downwards",
		"Fox Tail, Upwards",
		"Otie Tail",
		"Vulpkanin Tail",
		"Vulpkanin Tail 2",
		"Vulpkanin Tail 3",
		"Wolf Tail",
		"Jackal Tail"
		)
	permitted_wings = list()

	perks = list(PERK_PERFECT_SHOT, PERK_ENHANCEDSENSES)

/datum/species/kriosan/get_bodytype()
	return "Kriosan"

/datum/species/akula
	name = "Akula"
	name_plural = "Akulas"
	default_form = FORM_AKULA
	obligate_form = TRUE
	reagent_tag = IS_AKULA
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/tail, /datum/unarmed_attack/bite/strong)
	darksight = 3
	num_alternate_languages = 2
	name_language = null
	min_age = 18
	max_age = 130
	blurb = "no."
	taste_sensitivity = TASTE_DULL
	hunger_factor = 1.25

	cold_level_1 = 240 //Default 270
	cold_level_2 = 200 //Default 230
	cold_level_3 = 170  //Default 200

	cold_discomfort_level = 240
	list/cold_discomfort_strings = list(
		"You feel chilly.",
		"You shiver suddenly.",
		"Your chilly flesh stands out in goosebumps."
		)
	spawn_flags = CAN_JOIN

	dark_color = "#0000ff"
	light_color = "#0000ff"

	stat_modifiers = list(
		STAT_TGH = 10
	)

	permitted_ears  = list("Sleek Ears")
	permitted_tail  = list("Akula Tail")
	permitted_wings = list()

	perks = list(PERK_RECKLESSFRENZY, PERK_IRON_FLESH, PERK_CARNIVORE)

/datum/species/akula/get_bodytype()
	return "Akula"

/datum/species/naramad
	name = "Naramad"
	name_plural = "Naramadi"
	default_form = FORM_NARAMAD
	obligate_form = TRUE
	reagent_tag = IS_NARAMAD
	unarmed_types = list(/datum/unarmed_attack/claws/strong, /datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite/strong, /datum/unarmed_attack/tail)
	num_alternate_languages = 0
	name_language = null
	min_age = 18
	max_age = 60
	slowdown = -0.5
	blurb = "no."
	darksight = 2

	spawn_flags = CAN_JOIN

	stat_modifiers = list(
		STAT_TGH = 10,
		STAT_ROB = 10,
		STAT_VIG = -10,
		STAT_COG = -10
	)

	dark_color = "#ffff00"
	light_color = "#ffff00"

	permitted_ears  = list("Naramad Ears", "Sleek Ears")
	permitted_tail  = list("Naramad Tail", "Naramad Tail 2")
	permitted_wings = list()

	perks = list(PERK_ADRENALINEBURST, PERK_BORN_WARRIOR, PERK_STAY_HYDRATED)

/datum/species/naramad/get_bodytype()
	return "Naramad"

/datum/species/vox
	name = "Opifex"
	name_plural = "Opifexi"
	default_form = FORM_OPIFEX
	obligate_form = TRUE
	reagent_tag = IS_OPIFEX
	unarmed_types = list(/datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	num_alternate_languages = 2
	name_language = null
	min_age = 18
	max_age = 80
	blurb = "no."
	breath_type = "nitrogen"                        // Non-oxygen gas breathed, if any.
	poison_type = "oxygen"                        // Poisonous air.
	exhale_type = "carbon_dioxide"
	siemens_coefficient = 0.5
	spawn_flags = CAN_JOIN
	hunger_factor = 0.5

	stat_modifiers = list(
		STAT_MEC = 5,
		STAT_COG = 5
	)

	dark_color = "#dddddd"
	light_color = "#dddddd"
	darksight = 2

	permitted_ears  = list()
	permitted_tail  = list("Avian Wagtail", "Avian Fantail")
	permitted_wings = list("Harpy Wings",
		"Fantail Wings",
		"Feathered Wings, Small",
		"Feathered Wings, Medium",
		"Feathered Wings, Large"
		)

	perks = list(PERK_OPIFEX_TURRET, PERK_OPIFEX_PATCHKIT)

/datum/species/vox/get_bodytype()
	return "Opifex"

/datum/species/chtmant
	name = "Cht'mant"
	name_plural = "Cht'mants"
	default_form = FORM_CHTMANT
	obligate_form = TRUE
	reagent_tag = IS_CHTMANT
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	num_alternate_languages = 2
	name_language = null
	min_age = 18
	max_age = 120
	blurb = "no."
	flags = NO_PAIN
	spawn_flags = CAN_JOIN
	taste_sensitivity = TASTE_HYPERSENSITIVE
	darksight = 4

	brute_mod =     1.25                    // Physical damage multiplier.
	burn_mod =      0.85                    // Burn damage multiplier.
	flash_mod =     3

	stat_modifiers = list(
		STAT_BIO = 5,
		STAT_COG = 5
	)

	dark_color = "#5ac18e"
	light_color = "#5ac18e"

	permitted_ears  = list("Bee Antennae",
		"Citheronia Antennae",
		"Curly Antennae"
		)
	permitted_tail  = list("Bug Abdomen",
		"Bug Abdomen, Bee Top",
		"Bug Abdomen, Bee Full",
		"Bug Abdomen, Underside",
		"Bug Abdomen, Firefly",
		"Large Bug Abdomen",
		"Large Bug Abdomen, Bee Top",
		"Large Bug Abdomen, Bee Full",
		"Large Bug Abdomen, Underside",
		"Large Bug Abdomen, Firefly",
		"Alternate Bug Abdomen",
		"Alternate Bug Abdomen, Bee Top",
		"Alternate Bug Abdomen, Bee Full",
		"Alternate Bug Abdomen, Underside",
		"Alternate Bug Abdomen, Firefly",
		"Alternate Bug Abdomen 2",
		"Alternate Bug Abdomen 2, Bee Top",
		"Alternate Bug Abdomen 2, Bee Full",
		"Alternate Bug Abdomen 2, Underside",
		"Alternate Bug Abdomen 2, Firefly",
		"Alternate Large Bug Abdomen",
		"Alternate Large Bug Abdomen, Bee Top",
		"Alternate Large Bug Abdomen, Bee Full",
		"Alternate Large Bug Abdomen, Underside",
		"Alternate Large Bug Abdomen, Firefly",
		"Alternate Bug Abdomen 3",
		"Alternate Bug Abdomen 3, Bee Top",
		"Alternate Bug Abdomen 3, Bee Full",
		"Alternate Bug Abdomen 3, Underside",
		"Alternate Bug Abdomen 3, Firefly"
		)
	permitted_wings = list("Bee Wings",
		"Butterfly Wings",
		"Dragonfly Wings",
		"Moth Wings, Burned",
		"Moth Wings, Citheronia",
		"Moth Wings, Deathhead",
		"Moth Wings, Firewatch",
		"Moth Wings, Gothic",
		"Moth Wings, Lover",
		"Moth Wings, Monarch",
		"Moth Wings, Moonfly",
		"Moth Wings, Poison",
		"Moth Wings, Ragged",
		"Moth Wings, Red",
		"Moth Wings, Royal",
		"Moth Wings, Royal Unfluffed",
		"Moth Wings, Snowy",
		"Moth Wings, White",
		"Moth Wings, Worker",
		"Moth Wings, Plain",
		"Spider Legs"
		)

/datum/species/chtmant/get_bodytype()
	return "Cht'mant"

/datum/species/cindarite
	name = "Cindarite"
	name_plural = "Cindarites"
	default_form = FORM_CINDAR
	obligate_form = TRUE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite, /datum/unarmed_attack/tail)
	num_alternate_languages = 2
	blurb = "no"
	name_language = null
	min_age = 18
	max_age = 90
	spawn_flags = CAN_JOIN
	total_health = 130                    // Burn damage multiplier.
	radiation_mod = 0
	darksight = 3

	stat_modifiers = list(
		STAT_BIO = 2,
		STAT_COG = 2,
		STAT_MEC = 2,
		STAT_TGH = 2
	)

	cold_level_1 = 290 //Default 270
	cold_level_2 = 265 //Default 230
	cold_level_3 = 240  //Default 200

	heat_level_1 = 370 //Default 330
	heat_level_2 = 410 //Default 380
	heat_level_3 = 500 //Default 460

	heat_discomfort_level = 370
	heat_discomfort_strings = list(
		"Your scales prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated scales itch."
		)

	dark_color = "#660066"
	light_color = "#660066"

	cold_discomfort_level = 290
	list/cold_discomfort_strings = list(
		"You feel chilly.",
		"You shiver suddenly.",
		"Your chilly scales stands out in goosebumps."
		)

	has_process = list(    // which required-organ checks are conducted.
		OP_HEART =    /obj/item/organ/internal/heart,
		OP_LUNGS =    /obj/item/organ/internal/lungs,
		OP_STOMACH =  /obj/item/organ/internal/stomach,
		OP_LIVER =    /obj/item/organ/internal/liver,
		OP_KIDNEY_LEFT =  /obj/item/organ/internal/kidney/left/cindarite,
		OP_KIDNEY_RIGHT = /obj/item/organ/internal/kidney/right/cindarite,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		OP_APPENDIX = /obj/item/organ/internal/appendix,
		OP_EYES =     /obj/item/organ/internal/eyes
		)

	permitted_ears  = list("Frills, Aquatic",
		"Frills, Drake",
		"Frills, Short",
		"Frills, Simple",
		"Frills, Big"
		)
	permitted_tail  = list("Render Tail",
		"Snake Tail",
		"Lizard Tail",
		"Lizard Tail, Short",
		"Lizard Tail, Dark Tiger"
		)
	permitted_wings = list("Spines, Aquatic",
		"Spines, Long",
		"Spines, Long Membrane",
		"Spines, Short",
		"Spines, Short Membrane",
		)

	perks = list(PERK_PURGEINFECTIONS, PERK_PURGETOXINS, PERK_SECOND_SKIN)

/datum/species/cindarite/get_bodytype()
	return "Cindarite"

/datum/species/folken
	name = "Folken"
	name_plural = "Folkens"
	default_form = FORM_FOLKEN
	obligate_name = TRUE
	obligate_form = TRUE
	reagent_tag = IS_TREE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "N/A"
	num_alternate_languages = 2
	name_language = null	// Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 200
	burn_mod = 2						// Burn damage multiplier.
	light_dam = 1 // Same threshold as the Nightcrawler perk
	vision_flags = SEE_SELF
	flags = NO_PAIN | IS_PLANT
	taste_sensitivity = TASTE_NUMB
	darksight = 4

	dark_color = "#93eb9e"
	light_color = "#93eb9e"

	has_process = list(    // which required-organ checks are conducted.
		OP_HEART =    /obj/item/organ/internal/heart/plant,
		OP_STOMACH =  /obj/item/organ/internal/stomach/plant,
		OP_LUNGS =    /obj/item/organ/internal/lungs/plant,
		OP_LIVER =    /obj/item/organ/internal/liver/plant,
		BP_BRAIN =    /obj/item/organ/internal/brain/plant,
		OP_KIDNEY_LEFT =  /obj/item/organ/internal/kidney/left/plant,
		OP_KIDNEY_RIGHT = /obj/item/organ/internal/kidney/right/plant,
		OP_EYES =     /obj/item/organ/internal/eyes/plant
		)

	perks = list(PERK_FOLKEN_HEALING)

	stat_modifiers = list(
		STAT_BIO = 10,
		STAT_COG = 0,
		STAT_MEC = 0,
		STAT_ROB = 0,
		STAT_TGH = 0,
		STAT_VIG = 10
	)

	spawn_flags = CAN_JOIN

/datum/species/folken/get_bodytype()
	return "Folken"

/datum/species/mycus
	name = "Mycus"
	name_plural = "Myci"
	default_form = FORM_MYCUS
	obligate_name = TRUE
	obligate_form = TRUE
	reagent_tag = IS_TREE
	unarmed_types = list(/datum/unarmed_attack/punch/hammer_fist, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "N/A"
	num_alternate_languages = 2
	name_language = null	// Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 200
	flags = NO_PAIN | IS_PLANT | NO_POISON | NO_BREATHE
	slowdown = 0.3
	hunger_factor = 1.3
	darksight = 6

	burn_mod = 2						// Burn damage multiplier.
	light_dam = 1 // Same threshold as the Nightcrawler perk
	taste_sensitivity = TASTE_NUMB

	dark_color = "#49754f"
	light_color = "#49754f"

	has_process = list(    // which required-organ checks are conducted.
		OP_HEART =    /obj/item/organ/internal/heart/plant,
		OP_STOMACH =  /obj/item/organ/internal/stomach/plant,
		BP_BRAIN =    /obj/item/organ/internal/brain/plant,
		OP_EYES =     /obj/item/organ/internal/eyes,
		OP_LUNGS =    /obj/item/organ/internal/lungs,
		OP_LIVER =    /obj/item/organ/internal/liver,
		OP_KIDNEY_LEFT =  /obj/item/organ/internal/kidney/left,
		OP_KIDNEY_RIGHT = /obj/item/organ/internal/kidney/right,
		)

	perks = list(PERK_DARK_HEAL)

	stat_modifiers = list(
		STAT_BIO = 0,
		STAT_COG = 0,
		STAT_MEC = 0,
		STAT_ROB = 20,
		STAT_TGH = 0,
		STAT_VIG = 0
	)

	spawn_flags = CAN_JOIN

/datum/species/mycus/get_bodytype()
	return "Mycus"

/datum/species/full_body_prosthetic
	name = "Full Body Prosthetic"
	default_form = FORM_FBP
	obligate_form = TRUE
	obligate_name = FALSE
	name_plural = "FBPs"
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "no."
	reagent_tag = IS_SYNTHETIC
	hunger_factor = 0
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	radiation_mod = 0
	total_health = 75
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	darksight = 2

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/full_body_prosthetic,
		BP_GROIN =  new /datum/organ_description/groin/full_body_prosthetic,
		BP_HEAD =   new /datum/organ_description/head/full_body_prosthetic,
		BP_L_ARM =  new /datum/organ_description/arm/left/full_body_prosthetic/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/full_body_prosthetic/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/full_body_prosthetic/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/full_body_prosthetic/full
		)

	has_process = list(    // which required-process checks are conducted and default organs for them.
		OP_CELL = /obj/item/organ/internal/cell,
		BP_BRAIN = /obj/item/organ/internal/brain,
		OP_EYES = /obj/item/organ/internal/eyes/prosthetic/fbp
		)

	heat_discomfort_strings = list(
		"System analysis reports higher than normal heat levels.",
		"System analysis reports rising tempatures!",
		"System analysis reports dangerous levels of heat!."
		)
	cold_discomfort_strings = list(
		"System analysis reports lower than normal tempature.",
		"System analysis reports rapidly decreasing tempatures!",
		"System analysis reports dangerous levels of cold!."
		)

	spawn_flags = CAN_JOIN

/datum/species/full_body_prosthetic/get_bodytype()
	return "Full Body Prosthetic"

/datum/species/unbranded_synth
	name = "Unbranded Full Body Prosthetic"
	default_form = FORM_UNBRANDED
	obligate_form = TRUE
	obligate_name = FALSE
	name_plural = "FBPs"
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "no"
	reagent_tag = IS_SYNTHETIC
	hunger_factor = 0
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	radiation_mod = 0
	total_health = 75
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	darksight = 2

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/unbranded,
		BP_GROIN =  new /datum/organ_description/groin/unbranded,
		BP_HEAD =   new /datum/organ_description/head/unbranded,
		BP_L_ARM =  new /datum/organ_description/arm/left/unbranded/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/unbranded/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/unbranded/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/unbranded/full
		)

	has_process = list(    // which required-process checks are conducted and default organs for them.
		OP_CELL = /obj/item/organ/internal/cell,
		BP_BRAIN = /obj/item/organ/internal/brain,
		OP_EYES = /obj/item/organ/internal/eyes/prosthetic/fbp
		)

	heat_discomfort_strings = list(
		"System analysis reports higher than normal heat levels.",
		"System analysis reports rising tempatures!",
		"System analysis reports dangerous levels of heat!."
		)
	cold_discomfort_strings = list(
		"System analysis reports lower than normal tempature.",
		"System analysis reports rapidly decreasing tempatures!",
		"System analysis reports dangerous levels of cold!."
		)

	spawn_flags = CAN_JOIN

/datum/species/unbranded_synth/get_bodytype()
	return "Unbranded Full Body Prosthetic"

/datum/species/soteria_synthetic
	name = "Soteria Synthetic"
	name_plural = "synthetics"
	default_form = FORM_SOTSYNTH
	obligate_name = TRUE
	obligate_form = TRUE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "no."
	num_alternate_languages = 3
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 110
	siemens_coefficient = 2
	reagent_tag = IS_SYNTHETIC
	hunger_factor = 0
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	slowdown = 0.3
	radiation_mod = 0
	total_health = 75
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	darksight = 2

	dark_color = "#ffffff"
	light_color = "#000000"

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/soteria_synthetic,
		BP_GROIN =  new /datum/organ_description/groin/soteria_synthetic,
		BP_HEAD =   new /datum/organ_description/head/soteria_synthetic,
		BP_L_ARM =  new /datum/organ_description/arm/left/soteria_synthetic/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/soteria_synthetic/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/soteria_synthetic/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/soteria_synthetic/full
		)

	has_process = list(    // which required-process checks are conducted and default organs for them.
		OP_CELL = /obj/item/organ/internal/cell,
		BP_BRAIN = /obj/item/organ/internal/brain/synthetic,
		OP_EYES = /obj/item/organ/internal/eyes/prosthetic/fbp
		)

	heat_discomfort_strings = list(
		"System analysis reports higher than normal heat levels.",
		"System analysis reports rising tempatures!",
		"System analysis reports dangerous levels of heat!."
		)
	cold_discomfort_strings = list(
		"System analysis reports lower than normal tempature.",
		"System analysis reports rapidly decreasing tempatures!",
		"System analysis reports dangerous levels of cold!."
		)

	stat_modifiers = list(
		STAT_COG = 5,
		STAT_MEC = 5
	)

	spawn_flags = CAN_JOIN

/datum/species/soteria_synthetic/get_bodytype()
	return "Soteria Synthetic"

/datum/species/artificer_guild_synthetic
	name = "Artificer Guild Synthetic"
	name_plural = "synthetics"
	default_form = FORM_AGSYNTH
	obligate_name = TRUE
	obligate_form = TRUE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "no."
	num_alternate_languages = 3
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 110
	siemens_coefficient = 0
	reagent_tag = IS_SYNTHETIC
	hunger_factor = 0
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	radiation_mod = 0
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	total_health = 75
	darksight = 2

	dark_color = "#FA8128"
	light_color = "#FCAE1E"

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/artificer_guild_synthetic,
		BP_GROIN =  new /datum/organ_description/groin/artificer_guild_synthetic,
		BP_HEAD =   new /datum/organ_description/head/artificer_guild_synthetic,
		BP_L_ARM =  new /datum/organ_description/arm/left/artificer_guild_synthetic/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/artificer_guild_synthetic/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/artificer_guild_synthetic/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/artificer_guild_synthetic/full
		)

	has_process = list(    // which required-process checks are conducted and defalut organs for them.
		OP_CELL = /obj/item/organ/internal/cell,
		BP_BRAIN = /obj/item/organ/internal/brain/synthetic,
		OP_EYES = /obj/item/organ/internal/eyes/prosthetic/fbp
		)

	heat_discomfort_strings = list(
		"System analysis reports higher than normal heat levels.",
		"System analysis reports rising tempatures!",
		"System analysis reports dangerous levels of heat!."
		)
	cold_discomfort_strings = list(
		"System analysis reports lower than normal tempature.",
		"System analysis reports rapidly decreasing tempatures!",
		"System analysis reports dangerous levels of cold!."
		)

	stat_modifiers = list(
		STAT_MEC = 10
	)

	spawn_flags = CAN_JOIN

/datum/species/artificer_guild_synthetic/get_bodytype()
	return "Artificer Guild Synthetic"

/datum/species/blackshield_synthetic
	name = "Blackshield Synthetic"
	name_plural = "synthetics"
	default_form = FORM_BSSYNTH
	obligate_name = TRUE
	obligate_form = TRUE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "no."
	num_alternate_languages = 3
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 110
	reagent_tag = IS_SYNTHETIC
	hunger_factor = 0
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	radiation_mod = 0
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	total_health = 75
	dark_color = "#FFFFFF"
	light_color = "#000000"
	darksight = 2

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/blackshield_synthetic,
		BP_GROIN =  new /datum/organ_description/groin/blackshield_synthetic,
		BP_HEAD =   new /datum/organ_description/head/blackshield_synthetic,
		BP_L_ARM =  new /datum/organ_description/arm/left/blackshield_synthetic/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/blackshield_synthetic/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/blackshield_synthetic/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/blackshield_synthetic/full
		)

	has_process = list(    // which required-process checks are conducted and default organs for them.
		OP_CELL = /obj/item/organ/internal/cell,
		BP_BRAIN = /obj/item/organ/internal/brain/synthetic,
		OP_EYES = /obj/item/organ/internal/eyes/prosthetic/fbp
		)

	heat_discomfort_strings = list(
		"System analysis reports higher than normal heat levels.",
		"System analysis reports rising tempatures!",
		"System analysis reports dangerous levels of heat!."
		)
	cold_discomfort_strings = list(
		"System analysis reports lower than normal tempature.",
		"System analysis reports rapidly decreasing tempatures!",
		"System analysis reports dangerous levels of cold!."
		)

	stat_modifiers = list(
		STAT_TGH = 10
	)

	spawn_flags = CAN_JOIN

/datum/species/blackshield_synthetic/get_bodytype()
	return "Blackshield Synthetic"

/datum/species/church_synthetic
	name = "Absolute Synthetic"
	name_plural = "synthetics"
	default_form = FORM_CHURCHSYNTH
	obligate_name = TRUE
	obligate_form = TRUE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "no."
	num_alternate_languages = 3
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 110
	reagent_tag = IS_SYNTHETIC
	hunger_factor = 0
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	radiation_mod = 0
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	total_health = 75
	darksight = 2

	dark_color = "#FFFFFF"
	light_color = "#000000"

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/church_synthetic,
		BP_GROIN =  new /datum/organ_description/groin/church_synthetic,
		BP_HEAD =   new /datum/organ_description/head/church_synthetic,
		BP_L_ARM =  new /datum/organ_description/arm/left/church_synthetic/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/church_synthetic/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/church_synthetic/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/church_synthetic/full
		)

	has_process = list(    // which required-process checks are conducted and default organs for them.
		OP_CELL = /obj/item/organ/internal/cell,
		BP_BRAIN = /obj/item/organ/internal/brain/synthetic,
		OP_EYES = /obj/item/organ/internal/eyes/prosthetic/fbp
		)

	heat_discomfort_strings = list(
		"System analysis reports higher than normal heat levels.",
		"System analysis reports rising tempatures!",
		"System analysis reports dangerous levels of heat!."
		)
	cold_discomfort_strings = list(
		"System analysis reports lower than normal tempature.",
		"System analysis reports rapidly decreasing tempatures!",
		"System analysis reports dangerous levels of cold!."
		)

	stat_modifiers = list(
		STAT_BIO = 10
	)

	spawn_flags = CAN_JOIN

/datum/species/church_synthetic/get_bodytype()
	return "Absolute Synthetic"

/datum/species/nashef_synthetic
	name = "Nashef-Agunabi"
	name_plural = "synthetics"
	default_form = FORM_NASHEF
	obligate_name = TRUE
	obligate_form = TRUE
	unarmed_types = list(/datum/unarmed_attack/punch, /datum/unarmed_attack/stomp,  /datum/unarmed_attack/kick, /datum/unarmed_attack/bite)
	blurb = "no."
	num_alternate_languages = 3
	name_language = null // Use the first-name last-name generator rather than a language scrambler
	min_age = 18
	max_age = 110
	reagent_tag = IS_SYNTHETIC
	hunger_factor = 0
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	radiation_mod = 0
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	darksight = 3

	dark_color = "#FFFFFF"
	light_color = "#000000"

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/nashef_synthetic,
		BP_GROIN =  new /datum/organ_description/groin/nashef_synthetic,
		BP_HEAD =   new /datum/organ_description/head/nashef_synthetic,
		BP_L_ARM =  new /datum/organ_description/arm/left/nashef_synthetic/full,
		BP_R_ARM =  new /datum/organ_description/arm/right/nashef_synthetic/full,
		BP_L_LEG =  new /datum/organ_description/leg/left/nashef_synthetic/full,
		BP_R_LEG =  new /datum/organ_description/leg/right/nashef_synthetic/full
		)

	has_process = list(    // which required-process checks are conducted and default organs for them.
		OP_CELL = /obj/item/organ/internal/cell,
		BP_BRAIN = /obj/item/organ/internal/brain/synthetic,
		OP_EYES = /obj/item/organ/internal/eyes/prosthetic/fbp
		)

	heat_discomfort_strings = list(
		"System analysis reports higher than normal heat levels.",
		"System analysis reports rising tempatures!",
		"System analysis reports dangerous levels of heat!."
		)
	cold_discomfort_strings = list(
		"System analysis reports lower than normal tempature.",
		"System analysis reports rapidly decreasing tempatures!",
		"System analysis reports dangerous levels of cold!."
		)

	stat_modifiers = list(
		STAT_BIO = 10
	)

	spawn_flags = IS_RESTRICTED

/datum/species/slime
	name = "Slime"
	name_plural = "slimes"

	default_form = FORM_SLIME
	obligate_form = TRUE
	reagent_tag = IS_SLIME
	unarmed_types = list(/datum/unarmed_attack/slime_glomp)
	flags = NO_SLIP | NO_BREATHE | NO_BLOOD | NO_SCAN | NO_MINOR_CUT
	siemens_coefficient = 3 //conductive
	darksight = 3
	virus_immune = TRUE
	breath_type = null
	poison_type = null
	hunger_factor = 2
	spawn_flags = IS_RESTRICTED

	burn_mod = 1.15
	brute_mod = 1.15
	toxins_mod = -1 // This is dumb. I hope it works. -R4d6
	oxy_mod = 0

	has_process = list(
		BP_BRAIN = /obj/item/organ/internal/brain/slime
		)

	breath_type = null
	poison_type = null

	bump_flag = SLIME
	swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags = MONKEY|SLIME|SIMPLE_ANIMAL

	has_limbs = list(
		BP_CHEST =  new /datum/organ_description/chest/slime,
		BP_GROIN =  new /datum/organ_description/groin/slime,
		BP_HEAD =   new /datum/organ_description/head/slime,
		BP_L_ARM =  new /datum/organ_description/arm/left/slime,
		BP_R_ARM =  new /datum/organ_description/arm/right/slime,
		BP_L_LEG =  new /datum/organ_description/leg/left/slime,
		BP_R_LEG =  new /datum/organ_description/leg/right/slime
	)

	perks = list(PERK_SPEED, PERK_LIMB_REGEN, PERK_MIND_BOOST, PERK_BODY_BOOST)

/datum/species/slime/handle_death(var/mob/living/carbon/human/H)
	spawn(1)
		if(H)
			H.gib()


