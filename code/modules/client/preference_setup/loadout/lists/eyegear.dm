// Eyes
/datum/gear/eyes
	display_name = "eyepatch"
	path = /obj/item/clothing/glasses/eyepatch
	slot = slot_glasses
	sort_category = "Glasses and Eyewear"
	cost = 0

/datum/gear/eyes/aviators
	display_name = "aviators selection"
	path = /obj/item/clothing/glasses/aviator
	flags = GEAR_HAS_TYPE_SELECTION
	cost = 1

<<<<<<< HEAD
/datum/gear/eyes/glasses/prescriptionhipster
	display_name = "Glasses, hipster"
	path = /obj/item/clothing/glasses/regular/hipster

/datum/gear/eyes/glasses/monocle
	display_name = "Monocle"
=======
/datum/gear/eyes/monocle
	display_name = "monocle"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	path = /obj/item/clothing/glasses/monocle
	cost = 0

/datum/gear/eyes/binoclard_lenses
	display_name = "binoclard lenses"
	path = /obj/item/clothing/glasses/binoclard_lenses
	cost = 0

<<<<<<< HEAD
/datum/gear/eyes/green_goggles
	display_name = "green goggles"
	path = /obj/item/clothing/glasses/regular/goggles

/datum/gear/eyes/yellow_goggles
	display_name = "black goggles"
	path = /obj/item/clothing/glasses/regular/goggles/black

/datum/gear/eyes/sciencegoggles
	display_name = "Science Goggles"
	path = /obj/item/clothing/glasses/powered/science
	allowed_roles = list(JOBS_SCIENCE)

/datum/gear/eyes/security
	display_name = "Security HUD"
	path = /obj/item/clothing/glasses/hud/security
	allowed_roles = list(JOBS_SECURITY)

/datum/gear/eyes/medical
	display_name = "Medical HUD"
	path = /obj/item/clothing/glasses/hud/health
	allowed_roles = list(JOBS_MEDICAL)

/datum/gear/eyes/shades
	display_name = "Sunglasses, fat"
	path = /obj/item/clothing/glasses/sunglasses/big
	allowed_roles = list("Aegis Operative","Aegis Commander","Aegis Gunnery Sergeant","Captain","Head of Personnel","Quartermaster","Aegis Inspector","Aegis Medical Specialist")	//SYZYGY EDIT - Added medspec to list

/datum/gear/eyes/shades/prescriptionsun
	display_name = "sunglasses, presciption"
	path = /obj/item/clothing/glasses/sunglasses/prescription
	cost = 2
=======
/datum/gear/eyes/regular
	display_name = "glasses selection"
	path = /obj/item/clothing/glasses/regular
	flags = GEAR_HAS_TYPE_SELECTION
	cost = 0

/datum/gear/eyes/binoclard
	display_name = "binoclard glasses selection"
	path = /obj/item/clothing/glasses/binoclard_lenses
	flags = GEAR_HAS_TYPE_SELECTION
	cost = 0

/datum/gear/eyes/sunglasses
	display_name = "sunglasses selection"
	path = /obj/item/clothing/glasses/sunglasses
	flags = GEAR_HAS_TYPE_SELECTION
	cost = 1

/datum/gear/eyes/strapless
	display_name = "eyepatch, strapless"
	path = /obj/item/clothing/glasses/eyepatch_strapless
	cost = 0
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
