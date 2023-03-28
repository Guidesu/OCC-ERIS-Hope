// Suit slot
/datum/gear/suit
	display_name = "yellow apron"
	path = /obj/item/clothing/suit/rank/botanist
	slot = slot_wear_suit
	sort_category = "Suits and Overwear"
	cost = 0

<<<<<<< HEAD
/datum/gear/suit/jacket
	display_name = "jacket"
	path = /obj/item/clothing/suit/storage/toggle/bomber
	cost = 2 //higher price because it has some armor value
=======
/datum/gear/suit/hell_apron
	display_name = "lonestar black apron"
	path = /obj/item/clothing/suit/storage/helltaker_apron

/datum/gear/suit/bunnysuit
	display_name = "bunny suit"
	path = /obj/item/clothing/suit/costume/kinky/alyson
	cost = 2 // Pay the horni tax.

/datum/gear/suit/cloakselect
	display_name = "cloak selection"
	path = /obj/item/clothing/suit/hooded/cloak/simple
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/duster
	display_name = "duster selection"
	path = /obj/item/clothing/accessory/duster
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/flannel
	display_name = "flannel shirt selection"
	path = /obj/item/clothing/suit/storage/toggle/flannel
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/gorka
	display_name = "gorka jacket selection"
	path = /obj/item/clothing/suit/gorka/toggle/gorka
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/greatcoat
	display_name = "greatcoat selection"
	path = /obj/item/clothing/suit/greatcoat/general
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/overcoat
	display_name = "overcoat selection"
	path = /obj/item/clothing/suit/storage/greatcoat/overcoatblack
	flags = GEAR_HAS_TYPE_SELECTION
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/suit/jacket/New()
	..()
	var/jacket = list(
		"Bomber"		=	/obj/item/clothing/suit/storage/toggle/bomber,
		"Leather"		=	/obj/item/clothing/suit/storage/leather_jacket,
		"White"			=	/obj/item/clothing/suit/storage/drive_jacket,
		"Violet"		=	/obj/item/clothing/suit/storage/violet_jacket,
		"Tunnelsnake"	=	/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake_snake,
		"Sleek"			=	/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake,
		"Jaeger"		=	/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake_jager
	)
	gear_tweaks += new /datum/gear_tweak/path(jacket)

/datum/gear/suit/hazard_vest
	display_name = "hazard vest"
	path = /obj/item/clothing/suit/storage/hazardvest

<<<<<<< HEAD
/datum/gear/suit/hoodie
	display_name = "hoodie"
	path = /obj/item/clothing/suit/storage/toggle/hoodie/black
=======
/datum/gear/suit/hoodies
	display_name = "hoodie selection"
	path = /obj/item/clothing/suit/storage/toggle/hoodie
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/majima
	display_name = "Tojo jacket"
	path = /obj/item/clothing/suit/storage/tojo

/datum/gear/suit/jacketbasic
	display_name = "jacket basic selection"
	path = /obj/item/clothing/suit/storage/toggle/leather
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/bombers
	display_name = "jacket bomber selection"
	path = /obj/item/clothing/suit/storage/toggle/bomber
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/miljacket
	display_name = "jacket military selection"
	path = /obj/item/clothing/suit/storage/miljacket
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/soyfedjacket
	display_name = "old SolFed military jacket"
	path = /obj/item/clothing/suit/storage/toggle/miljacket_soyfed

/datum/gear/suit/punk_vest
	display_name = "punk vest"
	path = /obj/item/clothing/suit/storage/punkvest

/datum/gear/suit/texan
	display_name = "ivory texan jacket"
	path = /obj/item/clothing/suit/storage/texan

/datum/gear/suit/trackjacket
	display_name = "jacket sport selection"
	path = /obj/item/clothing/suit/storage/toggle/track
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/kimono
	display_name = "kimono"
	path = /obj/item/clothing/suit/fluff/kimono

/datum/gear/suit/miko
	display_name = "purple miko dress"
	path = /obj/item/clothing/suit/fluff/miko
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/suit/hoodie/New()
	..()
	var/jacket = list(
		"Black"		=	/obj/item/clothing/suit/storage/toggle/hoodie/black,
		"Grey"		=	/obj/item/clothing/suit/storage/toggle/hoodie,
	)
	gear_tweaks += new /datum/gear_tweak/path(jacket)

/datum/gear/suit/labcoat
	display_name = "labcoat"
	path = /obj/item/clothing/suit/storage/toggle/labcoat

/datum/gear/suit/labcoat_purple
	display_name = "purple labcoat"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/purple

/datum/gear/suit/formal_labcoat
	display_name = "formal labcoat"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/poofy

/datum/gear/suit/peacoat
	display_name = "peacoat"
	path = /obj/item/clothing/suit/storage/toggle/peacoat

/datum/gear/suit/poncho
	display_name = "poncho selection"
	path = /obj/item/clothing/suit/poncho
<<<<<<< HEAD
	cost = 1

/datum/gear/suit/poncho/tactical
	display_name = "poncho, blue"
	path = /obj/item/clothing/suit/poncho/tactical
	cost = 1

/datum/gear/suit/coat
	display_name = "Modern overcoat"
	path = /obj/item/clothing/suit/storage/cyberpunksleek
	cost = 2

/datum/gear/suit/coat/New()
	..()
	var/coat = list(
		"Green"			=	/obj/item/clothing/suit/storage/cyberpunksleek/green,
		"Black"			=	/obj/item/clothing/suit/storage/cyberpunksleek/black,
		"White"			=	/obj/item/clothing/suit/storage/cyberpunksleek/white,
		"Brown"			=	/obj/item/clothing/suit/storage/cyberpunksleek
	)
	gear_tweaks += new /datum/gear_tweak/path(coat)

/datum/gear/suit/longcoat
	display_name = "Modern long overcoat"
	path = /obj/item/clothing/suit/storage/cyberpunksleek_long
	cost = 2

/datum/gear/suit/longcoat/New()
	..()
	var/longcoat = list(
		"Green"			=	/obj/item/clothing/suit/storage/cyberpunksleek_long/green,
		"Black"			=	/obj/item/clothing/suit/storage/cyberpunksleek_long/black,
		"White"			=	/obj/item/clothing/suit/storage/cyberpunksleek_long/white,
		"Brown"			=	/obj/item/clothing/suit/storage/cyberpunksleek_long
	)
	gear_tweaks += new /datum/gear_tweak/path(longcoat)

/datum/gear/suit/bladerunner
	display_name = "old leather coat"
	path = /obj/item/clothing/suit/storage/bladerunner
	cost = 2

/datum/gear/suit/bomj
	display_name = "bomj coat"
	path = /obj/item/clothing/suit/storage/bomj
	cost = 2
=======
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/puffer
	display_name = "puffer selection"
	path = /obj/item/clothing/suit/storage/puffer
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/dresscoat
	display_name = "dresscoat selection"
	path = /obj/item/clothing/suit/storage/vic_dresscoat
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/snowsuit
	display_name = "snowsuit"
	path = /obj/item/clothing/suit/storage/snowsuit

/datum/gear/suit/wintercoat
	display_name = "winter coat"
	path = /obj/item/clothing/suit/hooded/wintercoat

/datum/gear/suit/htwaistcoat
	display_name = "charming waistcoat"
	path = /obj/item/clothing/suit/storage/wcoat/helltaker

/datum/gear/suit/modular
	display_name = "suit jacket selection"
	path = /obj/item/clothing/suit/storage/suitjacket
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/sweater
	display_name = "sweater selection"
	path = /obj/item/clothing/suit/sweater
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/suit/punkvest
	display_name = "punk vest"
	path = /obj/item/clothing/suit/punkvest

/datum/gear/suit/windbreaker
	display_name = "windbreaker"
	path = /obj/item/clothing/suit/storage/toggle/windbreaker

/datum/gear/suit/cyberpunkvest
	display_name = "cyberpunk vest"
	path = /obj/item/clothing/suit/punkvest/cyber

/datum/gear/suit/aerostatic_bomber_jacket
	display_name = "red bomber jacket"
	path = /obj/item/clothing/suit/storage/aerostatic_bomber_jacket

/datum/gear/suit/jamrock_blazer
	display_name = "jamrock blazer"
	path = /obj/item/clothing/suit/storage/jamrock_blazer

/datum/gear/suit/triad
	display_name = "triad jacket"
	path = /obj/item/clothing/suit/storage/triad

/datum/gear/suit/akira
	display_name = "red jacket"
	path = /obj/item/clothing/suit/storage/akira
/*
/datum/gear/suit/radhat
	display_name = "radiation hood"
	path = /obj/item/clothing/head/radiation

/datum/gear/suit/radsuit
	display_name = "radiation suit"
	path = /obj/item/clothing/suit/radiation

/datum/gear/suit/expeditionhat
	display_name = "expedition hood"
	path = /obj/item/clothing/head/helmet/space/anomaly
	cost = 2 //Some good armor but slowdown

/datum/gear/suit/expeditionsuit
	display_name = "expedition suit"
	path = /obj/item/clothing/suit/space/anomaly
	cost = 2 //Some good armor but slowdown
*/
/datum/gear/suit/boxer_jacket
	display_name = "boxer jacket"
	path = /obj/item/clothing/suit/storage/boxer_jacket
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
