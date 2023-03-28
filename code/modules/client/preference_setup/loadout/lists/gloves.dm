// Gloves
<<<<<<< HEAD
/datum/gear/gloves/
	slot = slot_gloves
	sort_category = "Gloves and Handwear"
	category = /datum/gear/gloves/

/datum/gear/gloves/work
	display_name = "gloves, work"
	path = /obj/item/clothing/gloves/thick
	cost = 3
=======
/datum/gear/gloves
	display_name = "gloves, thick"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/thick
	slot = slot_gloves
	cost = 1

/datum/gear/gloves/brown
	display_name = "gloves, thick brown"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/thick/brown
	slot = slot_gloves
	cost = 1

/datum/gear/gloves/goldring
	display_name = "gloves, gold ring"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/goldenring
	slot = slot_gloves
	cost = 0 //Legit doesnt do much

/datum/gear/gloves/rune_gloves
	display_name = "gloves, rune gloves"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/runed
	slot = slot_gloves
	cost = 1

/datum/gear/gloves/color
	display_name = "gloves basic selection"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/color
	slot = slot_gloves
	flags = GEAR_HAS_TYPE_SELECTION
	cost = 1

/datum/gear/gloves/custom
	display_name = "gloves, customized"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/custom
	slot = slot_gloves
	flags = GEAR_HAS_COLOR_SELECTION
	cost = 1

/datum/gear/gloves/evening
	display_name = "gloves, evening"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/evening
	slot = slot_gloves
	cost = 1

/datum/gear/gloves/evening_ash
	display_name = "gloves, ash evening"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/ash_evening
	slot = slot_gloves
	cost = 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/gloves/latex
	display_name = "gloves, latex"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/latex
	slot = slot_gloves
	cost = 1

<<<<<<< HEAD
/datum/gear/gloves/rainbow
	display_name = "gloves, rainbow"
	path = /obj/item/clothing/gloves/color/rainbow
=======
/datum/gear/gloves/red_leather
	display_name = "gloves, red designer leather gloves"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/aerostatic_gloves
	slot = slot_gloves
	cost = 1

/datum/gear/gloves/rainbow
	display_name = "gloves, rainbow"
	path = /obj/item/clothing/gloves/rainbow
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	cost = 2

/datum/gear/gloves/colored
	display_name = "gloves, colored"
	flags = GEAR_HAS_COLOR_SELECTION
	path = /obj/item/clothing/gloves/color

<<<<<<< HEAD
/datum/gear/gloves/color_presets
	display_name = "gloves, color presets"
	path = /obj/item/clothing/gloves/color/blue

/datum/gear/gloves/color_presets/New()
	..()
	var/gloves = list(
		"Blue"			= 	/obj/item/clothing/gloves/color/blue,
		"Yellow"		= 	/obj/item/clothing/gloves/color/yellow,
		"White"			= 	/obj/item/clothing/gloves/color/white,
		"Red"			= 	/obj/item/clothing/gloves/color/red,
		"Purple"		= 	/obj/item/clothing/gloves/color/purple,
		"Orange"		= 	/obj/item/clothing/gloves/color/orange,
		"Grey"			= 	/obj/item/clothing/gloves/color/grey,
		"Green"			=	/obj/item/clothing/gloves/color/green,
		"Light-Brown"	=	/obj/item/clothing/gloves/color/light_brown,
		"Brown"			=	/obj/item/clothing/gloves/color/brown
	)
	gear_tweaks += new /datum/gear_tweak/path(gloves)

/datum/gear/gloves/security_base
	display_name = "gloves, security"
	path = /obj/item/clothing/gloves/security
	allowed_roles = list(JOBS_SECURITY)

/datum/gear/gloves/security_ironhammer
	display_name = "gloves, operative"
	path = /obj/item/clothing/gloves/security/ironhammer
	allowed_roles = list(JOBS_SECURITY)
=======
/datum/gear/gloves/knuckles
	display_name = "knuckle gloves"
	sort_category = "Gloves and Handwear"
	path = /obj/item/clothing/gloves/knuckles
	slot = slot_gloves
	cost = 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
