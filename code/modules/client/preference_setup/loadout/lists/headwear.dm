/datum/gear/head
	display_name = "ushanka"
	path = /obj/item/clothing/head/ushanka
	slot = slot_head
	sort_category = "Hats and Headwear"

<<<<<<< HEAD
/datum/gear/head/bandana_green
	display_name = "bandana, green"
	path = /obj/item/clothing/head/bandana/green

/datum/gear/head/bandana_orange
	display_name = "bandana, orange"
	path = /obj/item/clothing/head/bandana/orange
=======
/datum/gear/head/bandana
	display_name = "bandana head selection"
	path = /obj/item/clothing/head/bandana
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/beanie
	display_name = "beanie selection"
	path = /obj/item/clothing/head/beanie
	flags = GEAR_HAS_TYPE_SELECTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/head/beretselect
	display_name = "beret selection"
	path = /obj/item/clothing/head/beret
	flags = GEAR_HAS_TYPE_SELECTION

<<<<<<< HEAD
/datum/gear/head/beret/purp
	display_name = "beret, purple"
	path = /obj/item/clothing/head/beret/purple

/datum/gear/head/beret/bsec
	display_name = "beret, navy (officer)"
	path = /obj/item/clothing/head/beret/sec/navy/officer
	allowed_roles = list("Aegis Operative","Aegis Commander","Aegis Gunnery Sergeant")

/datum/gear/head/beret/bsec_warden
	display_name = "beret, navy (warden)"
	path = /obj/item/clothing/head/beret/sec/navy/warden
	allowed_roles = list("Aegis Commander","Aegis Gunnery Sergeant")

/datum/gear/head/beret/bsec_hos
	display_name = "beret, navy (hos)"
	path = /obj/item/clothing/head/beret/sec/navy/hos
	allowed_roles = list("Aegis Commander")

/datum/gear/head/beret/eng
	display_name = "beret, engie-orange"
	path = /obj/item/clothing/head/beret/engineering
	allowed_roles = list(JOBS_ENGINEERING)

/datum/gear/head/beret/sec
	display_name = "beret, red (security)"
	path = /obj/item/clothing/head/beret/sec
	allowed_roles = list(JOBS_SECURITY)

/datum/gear/head/cap/flat
	display_name = "cap, brown-flat"
	path = /obj/item/clothing/head/flatcap

/datum/gear/head/cap/corp
	display_name = "cap, corporate (Security)"
	path = /obj/item/clothing/head/soft/sec/corp
	allowed_roles = list("Aegis Operative","Aegis Commander","Aegis Gunnery Sergeant", "Inspector")

/datum/gear/head/cap/rainbow
	display_name = "cap, rainbow"
	path = /obj/item/clothing/head/soft/rainbow

/datum/gear/head/cap/sec
	display_name = "cap, security (Security)"
	path = /obj/item/clothing/head/soft/sec
	allowed_roles = list(JOBS_SECURITY)

/datum/gear/head/cap/color_presets
	display_name = "cap, color presets"
	path = /obj/item/clothing/head/soft/blue

/datum/gear/head/cap/color_presets/New()
	..()
	var/cap = list(
		"White"			=	/obj/item/clothing/head/soft/mime,
		"Grey"			=	/obj/item/clothing/head/soft/grey,
		"Brown-Flat"	=	/obj/item/clothing/head/flatcap,
		"Red"			=	/obj/item/clothing/head/soft/red,
		"Orange"		=	/obj/item/clothing/head/soft/orange,
		"Yellow"		=	/obj/item/clothing/head/soft/yellow,
		"Green"			=	/obj/item/clothing/head/soft/green,
		"Blue"			=	/obj/item/clothing/head/soft/blue,
		"Blue Station"	=	/obj/item/clothing/head/mailman,
		"Purple"		=	/obj/item/clothing/head/soft/purple,
	)
	gear_tweaks += new /datum/gear_tweak/path(cap)

/datum/gear/head/hairflower
	display_name = "hair flower pin, red"
	path = /obj/item/clothing/head/hairflower

/datum/gear/head/hardhat/color_presets
	display_name = "hardhat, color presets"
	path = /obj/item/clothing/head/hardhat/blue
	cost = 2

/datum/gear/head/hardhat/color_presets/New()
	..()
	var/hardhat = list(
		"Red"		=	/obj/item/clothing/head/hardhat/red,
		"Orange"	=	/obj/item/clothing/head/hardhat/orange,
		"Yellow"	=	/obj/item/clothing/head/hardhat,
		"Blue"		=	/obj/item/clothing/head/hardhat/blue,
	)
	gear_tweaks += new /datum/gear_tweak/path(hardhat)
=======
/datum/gear/head/beretselect_fancy
	display_name = "fashionable beret selection"
	path = /obj/item/clothing/head/beret/fashion
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/beretcustom
	display_name = "beret, customized"
	path = /obj/item/clothing/head/beret/custom
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/bikerhelmet
	display_name = "biker helmet selection"
	path = /obj/item/clothing/head/helmet/biker
	flags = GEAR_HAS_TYPE_SELECTION
	cost = 2 //Has some good armor
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/head/boater
	display_name = "boater hat"
	path = /obj/item/clothing/head/boaterhat

/datum/gear/head/bowler
	display_name = "bowler hat selection"
	path = /obj/item/clothing/head/bowler
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/cap
	display_name = "cap selection"
	path = /obj/item/clothing/head/soft/
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/capcustom
	display_name = "cap, customized"
	path = /obj/item/clothing/head/customcap
	slot = slot_head
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/head/cowboy
	display_name = "cowboy hat selection"
	path = /obj/item/clothing/head/cowboy
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/fedora
	display_name = "fedora selection"
	path = /obj/item/clothing/head/fedora
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/fez
	display_name = "fez"
	path = /obj/item/clothing/head/fez

/datum/gear/head/hardhat
	display_name = "hardhat selection"
	path = /obj/item/clothing/head/hardhat/

/datum/gear/head/hardhat/New()
	..()
	var/hardhat = list(
		"yellow hardhat"			=	/obj/item/clothing/head/hardhat/yellow,
		"red hardhat"				=	/obj/item/clothing/head/hardhat/red,
		"orange hardhat"			=	/obj/item/clothing/head/hardhat/orange,
		"blue hardhat"				=	/obj/item/clothing/head/hardhat/blue,
	)
	gear_tweaks += new /datum/gear_tweak/path(hardhat)

/datum/gear/head/sombrero
	display_name = "sombrero"
	path = /obj/item/clothing/head/sombrero

/datum/gear/head/tophat
	display_name = "top hat selection"
	path = /obj/item/clothing/head/tophat
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/turban
	display_name = "turban"
	path = /obj/item/clothing/head/turban

/datum/gear/head/fishbowl
	display_name = "fishbowl helmet"
	path = /obj/item/clothing/head/costume/misc/fishbowl

/datum/gear/head/rice_hat
	display_name = "rice hat"
	path = /obj/item/clothing/head/rice_hat

/datum/gear/head/ranger
	display_name = "ranger hat"
	path = /obj/item/clothing/head/ranger

/datum/gear/head/tanker_helmet/color_presets
	display_name = "tanker/rugby helmet"
	path = /obj/item/clothing/head/armor/helmet/tanker

/datum/gear/head/ribbon
	display_name = "hair ribbon selection"
	path = /obj/item/clothing/head/ribbon
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/head/maid
	display_name = "maid headdress"
	path = /obj/item/clothing/head/maid

/datum/gear/head/anarchist
	display_name = "anarchist cap"
	path = /obj/item/clothing/head/costume/history/anarchist_cap

/datum/gear/head/papakha
	display_name = "black papakha"
	path = /obj/item/clothing/head/costume/history/anarchist

/datum/gear/head/livesey
	display_name = "Naval Surgeon Tricorne"
	path = /obj/item/clothing/head/costume/livesey

<<<<<<< HEAD
/datum/gear/head/ushanka
	display_name = "ushanka"
	path = /obj/item/clothing/head/ushanka

/datum/gear/head/cap/secfield
	display_name = "cap, Aegis field"
	path = /obj/item/clothing/head/soft/sec2soft
	allowed_roles = list("Aegis Operative","Aegis Commander","Aegis Gunnery Sergeant", "Inspector")

/datum/gear/head/cap/sarge
	display_name = "cap, Aegis sergeant"
	path = /obj/item/clothing/head/soft/sarge2soft
	allowed_roles = list("Aegis Commander","Aegis Gunnery Sergeant")

/datum/gear/head/cyberpunkgoggle
	display_name = "Type-34C Semi-Enclosed Headwear"
	path = /obj/item/clothing/head/armor/helmet/visor/cyberpunkgoggle
	cost = 2

/datum/gear/head/tanker_helmet/color_presets
	display_name = "tanker helmet, color presets"
	path = /obj/item/clothing/head/armor/helmet/tanker
	allowed_roles = list("Moebius Roboticist", "Guild Technician", "Technomancer", "Technomancer Exultant", ASSISTANT_TITLE)
	cost = 2

/datum/gear/head/tanker_helmet/color_presets/New()
	..()
	var/tanker_helmet = list(
		"Black"		=	/obj/item/clothing/head/armor/helmet/tanker,
		"Green"		=	/obj/item/clothing/head/armor/helmet/tanker/green,
		"Brown"		=	/obj/item/clothing/head/armor/helmet/tanker/brown,
		"Gray"		=	/obj/item/clothing/head/armor/helmet/tanker/gray,
	)
	gear_tweaks += new /datum/gear_tweak/path(tanker_helmet)
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
