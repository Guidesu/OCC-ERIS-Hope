// Uniform slot
/datum/gear/uniform
	display_name = "wedding dress"
	path = /obj/item/clothing/under/bride_white
	slot = slot_w_uniform
	sort_category = "Uniforms and Casual Dress"
	cost = 0

/datum/gear/uniform/tracksuit
	display_name = "track suit"
	path = /obj/item/clothing/under/track_suit
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/casualwear
	display_name = "casualwear selection"
	path = /obj/item/clothing/under/top
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/hawaiian
	display_name = "Hawaiian-shirt selection"
	path = /obj/item/clothing/under/hawaiian
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/dismas
	display_name = "highwayman clothes"
	path = /obj/item/clothing/under/dismas

/datum/gear/uniform/cheongsam
	display_name = "cheongsam selection"
	path = /obj/item/clothing/under/cheongsam
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/dress
	display_name = "dress selection"
	path = /obj/item/clothing/under/plaid
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/casualdress
	display_name = "casual dress selection"
	path = /obj/item/clothing/under/dress/casual
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/gorkajumpsuit
	display_name = "gorka jumpsuit selection"
	path = /obj/item/clothing/under/gorka
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/gorkapants
	display_name = "gorka pants selection"
	path = /obj/item/clothing/under/gorkapants
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/bdu
	display_name = "BDU selection"
	path = /obj/item/clothing/under/bdu
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/jeans
	display_name = "jeans selection"
	path = /obj/item/clothing/under/jeans
	flags = GEAR_HAS_TYPE_SELECTION

<<<<<<< HEAD
/datum/gear/uniform/jumpsuit/rainbow
	display_name = "jumpsuit, rainbow"
	path = /obj/item/clothing/under/rainbow

/datum/gear/uniform/jumpsuit/color_presets
	display_name = "jumpsuit, color presets"
	path = /obj/item/clothing/under/aqua
	cost = 2

/datum/gear/uniform/jumpsuit/color_presets/New()
	..()
	var/jumpsuit = list(
		"Black"			=	/obj/item/clothing/under/color/black,
		"White"			=	/obj/item/clothing/under/color/white,
		"Blue"			=	/obj/item/clothing/under/color/blue,
		"Green"			=	/obj/item/clothing/under/color/green,
		"Grey"			=	/obj/item/clothing/under/color/grey,
		"Pink"			=	/obj/item/clothing/under/color/pink,
		"Yellow"		=	/obj/item/clothing/under/color/yellow,
		"Light-Blue"	=	/obj/item/clothing/under/lightblue,
		"Red"			=	/obj/item/clothing/under/color/red,
		"Aqua"			=	/obj/item/clothing/under/aqua,
		"Purple"		=	/obj/item/clothing/under/purple,
		"Light-Purple"	=	/obj/item/clothing/under/lightpurple,
		"Light-Green"	=	/obj/item/clothing/under/lightgreen,
		"Light-Brown"	=	/obj/item/clothing/under/lightbrown,
		"Brown"			=	/obj/item/clothing/under/brown,
		"Yellow-Green"	=	/obj/item/clothing/under/yellowgreen,
		"Dark-Blue"		=	/obj/item/clothing/under/darkblue,
		"Light-Red"		=	/obj/item/clothing/under/lightred,
		"Dark-Red"		=	/obj/item/clothing/under/darkred,
	)
	gear_tweaks += new /datum/gear_tweak/path(jumpsuit)

/datum/gear/uniform/jumpsuit/colorable
	display_name = "jumpsuit, colorable"
	flags = GEAR_HAS_COLOR_SELECTION
	path = /obj/item/clothing/under/color/white

/datum/gear/uniform/leisure
	display_name = "leisure suits"
	path = /obj/item/clothing/under/leisure

/datum/gear/uniform/leisure/New()
	..()
	var/leisure = list(
		"Brown Jacket"			=	/obj/item/clothing/under/leisure,
		"White Blazer"			=	/obj/item/clothing/under/leisure/white,
		"Patterned Pullover"	=	/obj/item/clothing/under/leisure/pullover
	)
	gear_tweaks += new /datum/gear_tweak/path(leisure)

/datum/gear/uniform/dress
	display_name = "dresses"
	path = /obj/item/clothing/under/dress

/datum/gear/uniform/dress/New()
	..()
	var/dress = list(
		"Gray Dress"			=	/obj/item/clothing/under/dress,
		"Blue Dress"			=	/obj/item/clothing/under/dress/blue,
		"Red Dress"				=	/obj/item/clothing/under/dress/red
	)
	gear_tweaks += new /datum/gear_tweak/path(dress)

/datum/gear/uniform/security_skirt
	display_name = "jumpskirt, operative"
	path = /obj/item/clothing/under/rank/security/skirt
	allowed_roles = list("Aegis Operative")

/datum/gear/uniform/medspec_skirt
	display_name = "jumpskirt, medical specialist"
	path = /obj/item/clothing/under/rank/medspec/skirt
	allowed_roles = list("Aegis Medical Specialist")

/datum/gear/uniform/warden_skirt
	display_name = "jumpskirt, warden"
	path = /obj/item/clothing/under/rank/warden/skirt
	allowed_roles = list("Aegis Gunnery Sergeant")

/datum/gear/uniform/hos_skirt
	display_name = "jumpskirt, commander"
	path = /obj/item/clothing/under/rank/ih_commander/skirt
	allowed_roles = list("Aegis Commander")
=======
/datum/gear/uniform/jumpsuit
	display_name = "jumpsuit selection"
	path = /obj/item/clothing/under/color
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/jumpsuit2
	display_name = "jumpsuit, customized"
	path = /obj/item/clothing/under/custom
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/jumpskirt
	display_name = "jumpskirt selection"
	path = /obj/item/clothing/under/colorskirt
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/jumpskirt2
	display_name = "jumpskirt, customized"
	path = /obj/item/clothing/under/customskirt
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/black_suit_skirt
	display_name = "black suit skirt"
	path = /obj/item/clothing/under/suit_jacket/blackskirt

/datum/gear/uniform/fancy_redish_suit
	display_name = "expensive brown suit"
	path =/obj/item/clothing/under/fancy_redish_suit

/datum/gear/uniform/latex_maid
	display_name = "latex maid dress"
	path = /obj/item/clothing/under/costume/kinky/latex_maid

/datum/gear/uniform/classy_maid
	display_name = "maid dress"
	path = /obj/item/clothing/under/costume/maid

/datum/gear/uniform/sexy_maid
	display_name = "sexy maid dress"
	path = /obj/item/clothing/under/sexymaid

/datum/gear/uniform/modularsuit
	display_name = "modular suit selection"
	path = /obj/item/clothing/under/modular
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/onepiecesuit
	display_name = "one piece suit selection"
	path = /obj/item/clothing/under/suit_jacket
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/overalls
	display_name = "overalls selection"
	path = /obj/item/clothing/under/overalls
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/pants
	display_name = "pants selection"
	path = /obj/item/clothing/under/pants
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/shorts
	display_name = "shorts selection"
	path = /obj/item/clothing/under/shorts
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/skirt
	display_name = "skirt selection"
	path = /obj/item/clothing/under/skirt
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/swimsuit
	display_name = "swimsuit selection"
	path = /obj/item/clothing/under/swimsuit
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/texansuit
	display_name = "ivory texan suit"
	path = /obj/item/clothing/under/top/dimmadome

/datum/gear/uniform/turtleneck
	display_name = "turtleneck selection"
	path = /obj/item/clothing/under/turtleneck
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/leisure
    display_name = "leisure suits"
    path = /obj/item/clothing/under/leisure

/datum/gear/uniform/leisure/New()
	..()
	var/leisure = list(
		"Brown Jacket"			=	/obj/item/clothing/under/leisure,
		"White Blazer"			=	/obj/item/clothing/under/leisure/white,
		"Patterned Pullover"	=	/obj/item/clothing/under/leisure/pullover
	)
	gear_tweaks += new /datum/gear_tweak/path(leisure)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/gear/uniform/stylish_suits
    display_name = "stylish suits"
    path = /obj/item/clothing/under/white

/datum/gear/uniform/stylish_suits/New()
	..()
	var/stylish = list(
		"Ivory Suit"				=	/obj/item/clothing/under/white,
		"Blood-red Suit"			=	/obj/item/clothing/under/red,
		"Questionable Suit"			=	/obj/item/clothing/under/green,
		"Ashen Suit"				=	/obj/item/clothing/under/grey,
		"Charcoal Suit"				=	/obj/item/clothing/under/black,
	)
	gear_tweaks += new /datum/gear_tweak/path(stylish)

/datum/gear/uniform/dress
    display_name = "dresses"
    path = /obj/item/clothing/under/dress

<<<<<<< HEAD
/*/datum/gear/uniform/suit  //amish
	display_name = "suit, amish"
	path = /obj/item/clothing/under/sl_suit*/

/datum/gear/uniform/scrubs/color_presets
	display_name = "scrubs, color presets"
	path = /obj/item/clothing/under/rank/medical/blue

/datum/gear/uniform/scrubs/color_presets/New()
	..()
	var/jumpsuit = list(
		"Green"			=	/obj/item/clothing/under/rank/medical/green,
	)
	gear_tweaks += new /datum/gear_tweak/path(jumpsuit)

/datum/gear/uniform/neon
	display_name = "neon tracksuits, color presets"
	path = /obj/item/clothing/under/neon

/datum/gear/uniform/neon/New()
	..()
	var/neon = list(
		"green"			=	/obj/item/clothing/under/neon,
		"yellow"			=	/obj/item/clothing/under/neon/yellow,
		"blue"	=	/obj/item/clothing/under/neon/blue,
		"red" = /obj/item/clothing/under/neon/red
	)
	gear_tweaks += new /datum/gear_tweak/path(neon)

/datum/gear/uniform/cyber
	display_name = "augmented jumpsuit"
	path = /obj/item/clothing/under/cyber

/datum/gear/uniform/jersey
	display_name = "revealing jersey"
	path = /obj/item/clothing/under/jersey

/datum/gear/uniform/generic
	display_name = "generic outfit, color presets"
	path = /obj/item/clothing/under/genericb

/datum/gear/uniform/generic/New()
	..()
	var/generic = list(
		"blue" = /obj/item/clothing/under/genericb,
		"red" = /obj/item/clothing/under/genericr,
		"white" = /obj/item/clothing/under/genericw
	)
	gear_tweaks += new /datum/gear_tweak/path(generic)

/datum/gear/uniform/tuxedo
	display_name = "black tuxedo"
	path = /obj/item/clothing/under/tuxedo

/*/datum/gear/uniform/uniform_hop
	display_name = "uniform, HoP's dress"
	path = /obj/item/clothing/under/dress/dress_hop
	allowed_roles = list("Head of Personnel")*/
=======
/datum/gear/uniform/dress/New()
	..()
	var/dress = list(
		"Gray Dress"			=	/obj/item/clothing/under/dress,
		"Blue Dress"			=	/obj/item/clothing/under/dress/blue,
		"Red Dress"				=	/obj/item/clothing/under/dress/red,
		"White Dress" 			=	/obj/item/clothing/under/dress/white,
		"Black Dress" 			=	/obj/item/clothing/under/dress/black
	)
	gear_tweaks += new /datum/gear_tweak/path(dress)

/datum/gear/uniform/cyber
	display_name = "augmented jumpsuit"
	path = /obj/item/clothing/under/cyber

/datum/gear/uniform/helltaker
	display_name = "black charming outfit"
	path = /obj/item/clothing/under/helltaker

/datum/gear/uniform/helltaker_m
	display_name = "white charming outfit"
	path = /obj/item/clothing/under/helltaker_m

/datum/gear/uniform/johnny
	display_name = "rockerboy clothes"
	path = /obj/item/clothing/under/johnny

/datum/gear/uniform/raider
	display_name = "leather outfit"
	path = /obj/item/clothing/under/raider

/datum/gear/uniform/aerostatic_suit
	display_name = "dark comfortable clothing"
	path = /obj/item/clothing/under/aerostatic_suit

/datum/gear/uniform/jamrock_suit
	display_name = "brown comfortable clothing"
	path = /obj/item/clothing/under/jamrock_suit

/datum/gear/uniform/hunterformal
	display_name = "hunting lodge formal clothing"
	path = /obj/item/clothing/under/costume/misc/hunterformal
	slot = slot_w_uniform
	allowed_roles = list("Lodge Hunter", "Lodge Hunt Master", "Lodge Herbalist")

/datum/gear/uniform/neon
	display_name = "neon tracksuits, color presets"
	path = /obj/item/clothing/under/neon
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/uniform/bodysuit
	display_name = "eva skinsuit"
	path = /obj/item/clothing/under/bodysuit

/datum/gear/uniform/skintight
	display_name = "skintight bodysuit"
	path = /obj/item/clothing/under/skintight

/datum/gear/uniform/greyturtleneck
	display_name = "grey turtleneck"
	path = /obj/item/clothing/under/greyturtleneck

/datum/gear/uniform/generic
	display_name = "generic outfit, color presets"
	path = /obj/item/clothing/under/genericb

/datum/gear/uniform/generic/New()
	..()
	var/generic = list(
		"blue" = /obj/item/clothing/under/genericb,
		"red" = /obj/item/clothing/under/genericr,
		"white" = /obj/item/clothing/under/genericw
	)
	gear_tweaks += new /datum/gear_tweak/path(generic)

/datum/gear/uniform/jersey
	display_name = "tacky jersey"
	path = /obj/item/clothing/under/costume/misc/jersey

/datum/gear/uniform/sports
	display_name = "white tank top"
	path = /obj/item/clothing/under/sports
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
