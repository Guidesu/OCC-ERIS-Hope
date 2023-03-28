// Shoelocker
/datum/gear/shoes
	display_name = "workboots"
	path = /obj/item/clothing/shoes/workboots
	slot = slot_shoes
	sort_category = "Shoes and Footwear"
	cost = 0

/datum/gear/trackshoes
	display_name = "track shoes"
	path = /obj/item/clothing/shoes/track_shoes
	slot = slot_shoes
	sort_category = "Shoes and Footwear"

/*
/datum/gear/shoes/sneakers
	display_name = "sneaker selection"
	path = /obj/item/clothing/shoes/sneakers
	flags = GEAR_HAS_TYPE_SELECTION
*/

/datum/gear/shoes/cowboys
	display_name = "cowboy boots selection"
	path = /obj/item/clothing/shoes/cowboy
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/shoes/dress
	display_name = "dress shoes selection"
	path = /obj/item/clothing/shoes/laceup
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/shoes/dresscustom
	display_name = "dress shoes, customized"
	path = /obj/item/clothing/shoes/customlaceup
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/shoes/flats
	display_name = "flats selection"
	path = /obj/item/clothing/shoes/flats
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/shoes/flatscustom
	display_name = "flats, customized"
	path = /obj/item/clothing/shoes/customflats
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/shoes/highheels
	display_name = "high heels selection"
	path = /obj/item/clothing/shoes/highheels
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/shoes/hitops
	display_name = "high-tops selection"
	path = /obj/item/clothing/shoes/hitops
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/shoes/hitopscustom
	display_name = "high-tops, customized"
	path = /obj/item/clothing/shoes/customhitops
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/shoes/jackboots
	display_name = "jackboots"
	path = /obj/item/clothing/shoes/jackboots

/datum/gear/shoes/brownjackboots
	display_name = "brown jackboots"
	path = /obj/item/clothing/shoes/jackboots/german

/datum/gear/shoes/redboot
	display_name = "red boots"
	path = /obj/item/clothing/shoes/jackboots/redboot

/datum/gear/shoes/longboot
	display_name = "long boots"
	path = /obj/item/clothing/shoes/jackboots/longboot

/datum/gear/shoes/duty
	display_name = "duty jackboots"
	path = /obj/item/clothing/shoes/jackboots/duty

/datum/gear/shoes/leather
	display_name = "leather shoes"
	path = /obj/item/clothing/shoes/leather

/datum/gear/shoes/reinforced
	display_name = "reinforced shoes"
	path = /obj/item/clothing/shoes/reinforced

/datum/gear/shoes/aerostatic_boots
	display_name = "aerostatic boots"
	path = /obj/item/clothing/shoes/aerostatic_boots

/datum/gear/shoes/render_boots
	display_name = "lizardskin shoes"
	cost = 2//somewhat armored
	path =/obj/item/clothing/shoes/render

/datum/gear/shoes/sandals
	display_name = "sandals"
	path = /obj/item/clothing/shoes/sandal

<<<<<<< HEAD

/datum/gear/shoes/lacey
	display_name = "shoes, classy"
	path = /obj/item/clothing/shoes/reinforced

/*//Same with /datum/gear/shoes/lacey

/datum/gear/shoes/dress
	display_name = "shoes, dress"
	path = /obj/item/clothing/shoes/reinforced*/

/datum/gear/shoes/leather
	display_name = "shoes, leather"
	path = /obj/item/clothing/shoes/leather

/datum/gear/shoes/rainbow
	display_name = "shoes, rainbow"
	path = /obj/item/clothing/shoes/color/rainbow

/datum/gear/shoes/colorable
	display_name = "shoes, colorable"
	flags = GEAR_HAS_COLOR_SELECTION
	path = /obj/item/clothing/shoes/color

/datum/gear/shoes/color_presets
	display_name = "shoes, color presets"
	path = /obj/item/clothing/shoes/color/black

/datum/gear/shoes/color_presets/New()
	..()
	var/shoes = list(
		"White"			=	/obj/item/clothing/shoes/color/white,
		"Black"			=	/obj/item/clothing/shoes/color/black,
		"Brown"			=	/obj/item/clothing/shoes/color/brown,
		"Red"			=	/obj/item/clothing/shoes/color/red,
		"Orange"		=	/obj/item/clothing/shoes/color/orange,
		"Yellow"		=	/obj/item/clothing/shoes/color/yellow,
		"Green"			=	/obj/item/clothing/shoes/color/green,
		"Blue"			=	/obj/item/clothing/shoes/color/blue,
		"Purple"		=	/obj/item/clothing/shoes/color/purple,
	)
	gear_tweaks += new /datum/gear_tweak/path(shoes)
=======
/datum/gear/shoes/shoes
	display_name = "shoes basic selection"
	path = /obj/item/clothing/shoes/color
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/shoes/shoescustom
	display_name = "shoes, customized"
	path = /obj/item/clothing/shoes/custom
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/shoes/winterboots
	display_name = "winter boots"
	path = /obj/item/clothing/shoes/winter
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
