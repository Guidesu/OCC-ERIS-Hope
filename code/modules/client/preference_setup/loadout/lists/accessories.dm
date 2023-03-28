/datum/gear/accessory
	display_name = "wallet"
	path = /obj/item/storage/wallet
	slot = slot_accessory_buffer
	sort_category = "Accessories"
	cost = 0

/datum/gear/accessory/armband
	display_name = "armband selection"
	path = /obj/item/clothing/accessory/armband
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/sash
	display_name = "colorable sash"
	path = /obj/item/clothing/accessory/sash/color
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/dropstraps
	display_name = "drop straps"
	path = /obj/item/clothing/accessory/dropstraps

<<<<<<< HEAD
/datum/gear/accessory/cargo
	display_name = "armband, cargo"
	path = /obj/item/clothing/accessory/armband/cargo
	allowed_roles = list(JOBS_CARGO)

/datum/gear/accessory/emt
	display_name = "armband, EMT"
	path = /obj/item/clothing/accessory/armband/medgreen
	allowed_roles = list(JOBS_MEDICAL)

/datum/gear/accessory/engineering
	display_name = "armband, engineering"
	path = /obj/item/clothing/accessory/armband/engine
	allowed_roles = list(JOBS_ENGINEERING)
=======
/datum/gear/accessory/legbrace
	display_name = "leg brace"
	path = /obj/item/clothing/accessory/legbrace

/datum/gear/accessory/locket
	display_name = "locket"
	path = /obj/item/clothing/accessory/locket

/datum/gear/accessory/necklace
	display_name = "necklace selection"
	path = /obj/item/clothing/accessory/necklace
	flags = GEAR_HAS_TYPE_SELECTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/accessory/choker
	display_name = "choker selection"
	path = /obj/item/clothing/accessory/choker
	flags = GEAR_HAS_TYPE_SELECTION

<<<<<<< HEAD
/datum/gear/accessory/medical
	display_name = "armband, medical"
	path = /obj/item/clothing/accessory/armband/med
	allowed_roles = list(JOBS_MEDICAL)

/datum/gear/accessory/science
	display_name = "armband, science"
	path = /obj/item/clothing/accessory/armband/science
	allowed_roles = list(JOBS_SCIENCE)

/datum/gear/accessory/holster
	display_name = "holster, armpit"
	path = /obj/item/clothing/accessory/holster/armpit
	allowed_roles = list("Captain", "Head of Personnel", JOBS_SECURITY)

/datum/gear/accessory/holster/New()
	..()
	var/ties = list(
		"Armpit"	=	/obj/item/clothing/accessory/holster/armpit,
		"Hip"		=	/obj/item/clothing/accessory/holster/hip,
		"Waist"		=	/obj/item/clothing/accessory/holster/waist,
	)
	gear_tweaks += new/datum/gear_tweak/path(ties)
=======
/datum/gear/accessory/bracelet
	display_name = "bracelet selection"
	path = /obj/item/clothing/accessory/bracelet
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/tacticool_shirt
	display_name = "UBAC selection"
	path = /obj/item/clothing/accessory/tacticool
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/neckbrace
	display_name = "neck brace"
	path = /obj/item/clothing/accessory/neckbrace

/datum/gear/accessory/scarf
	display_name = "scarf selection"
	path = /obj/item/clothing/accessory/scarf/
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/shemagh
	display_name = "colorable shemagh"
	path = /obj/item/clothing/accessory/shemagh/recolor
	flags = GEAR_HAS_COLOR_SELECTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/accessory/tie
	display_name = "colorable tie"
	path = /obj/item/clothing/accessory/tie/color
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/hawaiianshirt
	display_name = "hawaiian shirt selection"
	path = /obj/item/clothing/accessory/hawaiian
	flags = GEAR_HAS_TYPE_SELECTION

<<<<<<< HEAD
/datum/gear/accessory/tie/horrible
	display_name = "tie, socially disgraceful"
	path = /obj/item/clothing/accessory/horrible

/datum/gear/accessory/wallet
	display_name = "wallet, colour select"
	path = /obj/item/storage/wallet
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/scarf
	display_name = "scarf selection"
	path = /obj/item/clothing/mask/scarf
	slot = slot_wear_mask
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/bandana
	display_name = "bandana selection"
	path = /obj/item/clothing/mask/bandana
	slot = slot_wear_mask
	flags = GEAR_HAS_TYPE_SELECTION
=======
/datum/gear/accessory/shirt
	display_name = "colorable shirt selection"
	path = /obj/item/clothing/accessory/shirt
	flags = GEAR_HAS_TYPE_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/sweater_color
	display_name = "colorable sweater selection"
	path = /obj/item/clothing/accessory/sweater
	flags = GEAR_HAS_TYPE_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/kneepad
	display_name = "kneepad selection"
	path = /obj/item/clothing/accessory/kneepads
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/capes
	display_name = "cape selection"
	path = /obj/item/clothing/accessory/cape
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/tacticalponcho
	display_name = "tactical poncho selection"
	path = /obj/item/clothing/accessory/tacticalponcho
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/tacticalponchohood
	display_name = "tactical poncho hood selection"
	path = /obj/item/clothing/head/tacticalhood
	flags = GEAR_HAS_TYPE_SELECTION
	slot = slot_head

/datum/gear/accessory/poncho_color
	display_name = "colorable poncho selection"
	path = /obj/item/clothing/accessory/colorponcho
	flags = GEAR_HAS_TYPE_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/ponchohood_color
	display_name = "colorable poncho hood"
	path = /obj/item/clothing/head/tacticalhood_color
	flags = GEAR_HAS_TYPE_SELECTION | GEAR_HAS_COLOR_SELECTION
	slot = slot_head

/datum/gear/accessory/sweatervest
	display_name = "sweater vest selection"
	path = /obj/item/clothing/accessory/swvest
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/waistcoat
	display_name = "colorable waistcoat selection"
	path = /obj/item/clothing/accessory/waistcoat/color
	flags = GEAR_HAS_TYPE_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/blackshieldpatch
	display_name = "blackshield arm patch"
	path = /obj/item/clothing/accessory/patches/blackshield

/datum/gear/accessory/pilotharness
	display_name = "pilot harness"
	path = /obj/item/clothing/accessory/pilotwebbing
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/pass
	display_name = "passcard - work visa - passport  selection"
	path = /obj/item/clothing/accessory/passcard
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/accessory/badge
	display_name = "badge (colorable)"
	path = /obj/item/clothing/accessory/pin
	flags = GEAR_HAS_TYPE_SELECTION | GEAR_HAS_COLOR_SELECTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
