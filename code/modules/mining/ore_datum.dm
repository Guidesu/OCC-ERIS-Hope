var/global/list/ore_data = list()

/ore
	var/name
	var/display_name
	var/alloy
	var/smelts_to
	var/compresses_to
	var/result_amount     // How much ore?
	var/spread = 1	      // Does this type of deposit spread?
	var/spread_chance     // Chance of spreading in any direction
	var/ore	              // Path to the ore produced when tile is mined.
	var/scan_icon         // Overlay for ore scanners.
	// Xenoarch stuff. No idea what it's for, just refactored it to be less awful.
	var/list/xarch_ages = list(
		"thousand" = 999,
		"million" = 999
		)
	var/xarch_source_mineral = "iron"

/ore/New()
	. = ..()
	if(!display_name)
		display_name = name

/ore/uranium
	name = ORE_URANIUM
	display_name = "pitchblende"
	smelts_to = MATERIAL_URANIUM
	result_amount = 10
	spread_chance = 10
<<<<<<< HEAD
	ore = /obj/item/ore/uranium
=======
	ore = /obj/item/stack/ore/uranium
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_uncommon"
	xarch_ages = list(
		"thousand" = 999,
		"million" = 704
		)
	xarch_source_mineral = "potassium"

/ore/hematite
	name = ORE_IRON
	display_name = "hematite"
	smelts_to = MATERIAL_IRON
	alloy = TRUE
	result_amount = 10
	spread_chance = 25
<<<<<<< HEAD
	ore = /obj/item/ore/iron
=======
	ore = /obj/item/stack/ore/iron
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_common"

/ore/coal
	name = ORE_CARBON
	display_name = "raw carbon"
	smelts_to = MATERIAL_PLASTIC
	alloy = TRUE
	result_amount = 10
	spread_chance = 25
<<<<<<< HEAD
	ore = /obj/item/ore/coal
=======
	ore = /obj/item/stack/ore/coal
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_common"

/ore/glass
	name = ORE_SAND
	display_name = "sand"
	smelts_to = MATERIAL_GLASS
	compresses_to = MATERIAL_SANDSTONE
<<<<<<< HEAD
	alloy = 1 //Syzygy edit - Boroscilicate glass

/ore/phoron
	name = "phoron"
	display_name = "phoron crystals"
	compresses_to = "phoron"
	alloy = 1
	//smelts_to = something that explodes violently on the conveyor, huhuhuhu
	result_amount = 8
	spread_chance = 25
	ore = /obj/item/ore/phoron
=======
	alloy = TRUE

/ore/plasma
	name = ORE_PLASMA
	display_name = "plasma crystals"
	compresses_to = MATERIAL_PLASMA
	alloy = TRUE
	//smelts_to = something that explodes violently on the conveyor, huhuhuhu
	result_amount = 8
	spread_chance = 25
	ore = /obj/item/stack/ore/plasma
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_uncommon"
	xarch_ages = list(
		"thousand" = 999,
		"million" = 999,
		"billion" = 13,
		"billion_lower" = 10
		)
	xarch_source_mineral = "phoron"

/ore/silver
	name = ORE_SILVER
	display_name = "native silver"
	smelts_to = MATERIAL_SILVER
	result_amount = 8
	spread_chance = 10
<<<<<<< HEAD
	ore = /obj/item/ore/silver
=======
	ore = /obj/item/stack/ore/silver
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_uncommon"

/ore/gold
	smelts_to = MATERIAL_GOLD
	name = ORE_GOLD
	display_name = "native gold"
	result_amount = 8
	spread_chance = 10
<<<<<<< HEAD
	ore = /obj/item/ore/gold
=======
	ore = /obj/item/stack/ore/gold
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_uncommon"
	xarch_ages = list(
		"thousand" = 999,
		"million" = 999,
		"billion" = 4,
		"billion_lower" = 3
		)

/ore/diamond
	name = ORE_DIAMOND
	display_name = "diamond"
	compresses_to = MATERIAL_DIAMOND
	result_amount = 5
	spread_chance = 10
<<<<<<< HEAD
	ore = /obj/item/ore/diamond
=======
	ore = /obj/item/stack/ore/diamond
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_rare"
	xarch_source_mineral = "nitrogen"

/ore/platinum
	name = ORE_PLATINUM
	display_name = "raw platinum"
	smelts_to = MATERIAL_PLATINUM
	compresses_to = MATERIAL_OSMIUM
	alloy = 1
	result_amount = 5
	spread_chance = 10
<<<<<<< HEAD
	ore = /obj/item/ore/osmium
=======
	ore = /obj/item/stack/ore/osmium
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	scan_icon = "mineral_rare"

/ore/hydrogen
	name = ORE_HYDROGEN
	display_name = "metallic hydrogen"
	smelts_to = MATERIAL_TRITIUM
	compresses_to = MATERIAL_MHYDROGEN
	scan_icon = "mineral_rare"
	spread_chance = 5
	result_amount = 5
	ore = /obj/item/stack/ore/hydrogen
