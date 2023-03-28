/obj/item/tool/saw //tier 2
	name = "metal saw"
	desc = "For cutting wood and other objects to pieces. Or sawing bones, in case of emergency."
	icon_state = "metal_saw"
	force = WEAPON_FORCE_NORMAL
	throwforce = WEAPON_FORCE_NORMAL
	worksound = WORKSOUND_SIMPLE_SAW
	flags = CONDUCT
	w_class = ITEM_SIZE_NORMAL
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 1)
	attack_verb = list("attacked", "slashed", "sawed", "cut")
	sharp = TRUE
	edge = TRUE
	tool_qualities = list(QUALITY_SAWING = 35, QUALITY_CUTTING = 20, QUALITY_WIRE_CUTTING = 20)
	price_tag = 20
	embed_mult = 1 //Serrated blades catch on bone more easily

<<<<<<< HEAD
/obj/item/tool/saw/improvised //tier 1
	name = "choppa"
	desc = "A wicked serrated blade made of whatever nasty sharp things you could find. It would make a pretty decent weapon, given there are more space for some tool mods too."
	icon_state = "impro_saw"
	force = WEAPON_FORCE_PAINFUL //doubles as makeshift melee weapon, thus must have more damage than tier 2 saw
	tool_qualities = list(QUALITY_SAWING = 15, QUALITY_CUTTING = 10, QUALITY_WIRE_CUTTING = 10)
	degradation = 1
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
	spawn_tags = SPAWN_TAG_JUNKTOOL
	rarity_value = 3

=======
/obj/item/tool/saw/bs
	name = "bluespace metal saw"
	icon_state = "bs_metal_saw"
	tool_qualities = list(QUALITY_SAWING = 100, QUALITY_CUTTING = 100, QUALITY_WIRE_CUTTING = 100)

/obj/item/tool/saw/onestar_saw
	name = "Greyson Positronic saw"
	desc = "A rather robust hand saw for cutting down trees quickly and cleanly."
	icon_state = "one_star_metal_saw"
	force = WEAPON_FORCE_PAINFUL
	tool_qualities = list(QUALITY_SAWING = 60, QUALITY_CUTTING = 45, QUALITY_WIRE_CUTTING = 25)
	degradation = 2
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTIC = 1, MATERIAL_PLATINUM = 2)
	max_upgrades = 2
	workspeed = 1.2
	price_tag = 500 //Still just a saw.
	allow_greyson_mods = TRUE

/obj/item/tool/saw/improvised
	name = "choppa"
	desc = "An improvised saw made of twisted, wicked metal. The serrated blade, with ample space for tool mods, is great for cutting."
	icon_state = "impro_saw"
	force = WEAPON_FORCE_PAINFUL //doubles as makeshift melee weapon, thus must have more damage than tier 2 saw
	tool_qualities = list(QUALITY_SAWING = 15, QUALITY_CUTTING = 10, QUALITY_WIRE_CUTTING = 10)
	degradation = 1
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
	price_tag = 7

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/tool/saw/circular //tier 3
	name = "circular saw"
	desc = "For heavy duty cutting. Drains power quicker than normal saws."
	icon_state = "saw"
	hitsound = WORKSOUND_CIRCULAR_SAW
	worksound = WORKSOUND_CIRCULAR_SAW
<<<<<<< HEAD
	force = WEAPON_FORCE_DANGEROUS * 1.15
=======
	force = WEAPON_FORCE_ROBUST
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	armor_penetration = ARMOR_PEN_MODERATE
	matter = list(MATERIAL_STEEL = 5, MATERIAL_PLASTIC = 2)
	tool_qualities = list(QUALITY_SAWING = 45, QUALITY_CUTTING = 30, QUALITY_WIRE_CUTTING = 30)
	price_tag = 240

<<<<<<< HEAD
	use_power_cost = 0.15
	suitable_cell = /obj/item/cell/small
	spawn_tags = SPAWN_TAG_SURGERY_TOOL

/obj/item/tool/saw/circular/advanced //tier 4, focusing on armor penetration
=======
	use_power_cost = 0.45
	suitable_cell = /obj/item/cell/small

/obj/item/tool/saw/circular/medical
	name = "medical circular saw"
	desc = "For clean bone cutting but doesn't seem all that durable. Spins slower than the normal saw to allow for higher surgical precision."
	icon_state = "saw_medical"
	force = WEAPON_FORCE_PAINFUL
	matter = list(MATERIAL_STEEL = 6, MATERIAL_PLASTIC = 4, MATERIAL_PLASTEEL = 2)
	tool_qualities = list(QUALITY_SAWING = 60, QUALITY_CUTTING = 40, QUALITY_WIRE_CUTTING = 40)
	use_power_cost = 0.05
	degradation = 2.65
	suitable_cell = /obj/item/cell/small
	price_tag = 290

/obj/item/tool/saw/circular/medical/si
	icon_state = "saw_si"

/obj/item/tool/saw/circular/advanced
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "advanced circular saw"
	desc = "You think you can cut anything with it. More power efficient than a regular circular saw."
	icon_state = "advanced_saw"
<<<<<<< HEAD
	force = WEAPON_FORCE_ROBUST
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	armor_penetration = ARMOR_PEN_DEEP
	matter = list(MATERIAL_STEEL = 6, MATERIAL_PLASTEEL = 1, MATERIAL_PLASTIC = 2)
	tool_qualities = list(QUALITY_SAWING = 50, QUALITY_CUTTING = 40, QUALITY_WIRE_CUTTING = 40)
	degradation = 0.7
<<<<<<< HEAD
	use_power_cost = 0.22
	max_upgrades = 4
	spawn_blacklisted = TRUE
	rarity_value = 20

/obj/item/tool/saw/chain //tier 4, focusing on damage, fuel variant
	name = "chainsaw"
	desc = "You can cut trees, people, walls and zombies with it, just watch out for fuel."
	icon_state = "chainsaw"
	hitsound = WORKSOUND_CHAINSAW
	worksound = WORKSOUND_CHAINSAW
	force = WEAPON_FORCE_BRUTAL //Rip and tear!
	armor_penetration = ARMOR_PEN_SHALLOW
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 2)
	tool_qualities = list(QUALITY_SAWING = 60, QUALITY_CUTTING = 50, QUALITY_WIRE_CUTTING = 20) //not the best choice to cut wires
	w_class = ITEM_SIZE_BULKY
	max_upgrades = 4
=======
	use_power_cost = 0.29
	max_upgrades = 4
	price_tag = 450

/obj/item/tool/saw/chain //tier 4, focusing on damage, fuel variant
	name = "chainsaw"
	desc = "You can cut trees, people, walls, and zombies with it, just watch out for fuel."
	icon_state = "chainsaw"
	hitsound = WORKSOUND_CHAINSAW
	worksound = WORKSOUND_CHAINSAW
	force = WEAPON_FORCE_WEAK
	switched_on_forcemult = 4 //28 total
	w_class = ITEM_SIZE_NORMAL
	armor_penetration = ARMOR_PEN_SHALLOW
	matter = list(MATERIAL_STEEL = 3, MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 2)
	tool_qualities = list(QUALITY_SAWING = 5, QUALITY_CUTTING = 5, QUALITY_WIRE_CUTTING = 5) //barely usable when off, but allows mods to be applied
	switched_off_qualities = list(QUALITY_CUTTING = 5)
	max_upgrades = 3
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	use_fuel_cost = 0.1
	toggleable = TRUE
	switched_on_qualities = list(QUALITY_SAWING = 60, QUALITY_CUTTING = 50, QUALITY_WIRE_CUTTING = 20)
	max_fuel = 80
<<<<<<< HEAD
	rarity_value = 96
	spawn_tags = SPAWN_TAG_TOOL_ADVANCED
=======
	price_tag = 550

/obj/item/tool/saw/chain/turn_on(mob/user)
	.=..()
	if(.)
		to_chat(user, SPAN_NOTICE("You rev up the [src]."))
		playsound(loc, 'sound/items/chainsaw_on.ogg', 40)
		START_PROCESSING(SSobj, src)

/obj/item/tool/saw/chain/turn_off()
	playsound(loc, 'sound/items/chainsaw_off.ogg', 80)
	..()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/tool/saw/hyper //tier 4, focusing on damage, cell variant
	name = "TM hypersaw"
	desc = "This eco-friendly chainsaw will Rip and Tear until it is done."
	icon_state = "hypersaw"
<<<<<<< HEAD
	hitsound = WORKSOUND_CHAINSAW
	worksound = WORKSOUND_CHAINSAW
	force = WEAPON_FORCE_BRUTAL
	armor_penetration = ARMOR_PEN_SHALLOW
	matter = list(MATERIAL_SILVER = 2, MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 3)
	tool_qualities = list(QUALITY_SAWING = 60, QUALITY_CUTTING = 50, QUALITY_WIRE_CUTTING = 20)
	w_class = ITEM_SIZE_BULKY
	max_upgrades = 4
	degradation = 0.7
	use_power_cost = 1
	suitable_cell = /obj/item/cell/medium
	rarity_value = 96
	spawn_tags = SPAWN_TAG_TOOL_ADVANCED
=======
	item_state = "hypersaw"
	switched_on_item_state = "hypersaw"
	switched_on_icon_state = "hypersaw"
	wielded_icon = "hypersaw_on"
	hitsound = WORKSOUND_CHAINSAW
	worksound = WORKSOUND_CHAINSAW
	force = WEAPON_FORCE_WEAK
	switched_on_forcemult = 4 //28 total
	w_class = ITEM_SIZE_NORMAL
	armor_penetration = ARMOR_PEN_SHALLOW
	matter = list(MATERIAL_SILVER = 2, MATERIAL_PLASTEEL = 10, MATERIAL_PLASTIC = 3)
	tool_qualities = list(QUALITY_SAWING = 5, QUALITY_CUTTING = 5, QUALITY_WIRE_CUTTING = 5) //barely usable when off, but allows mods to be applied
	switched_off_qualities = list(QUALITY_CUTTING = 5)
	max_upgrades = 2
	degradation = 0.7
	use_power_cost = 1
	toggleable = TRUE
	switched_on_qualities = list(QUALITY_SAWING = 60, QUALITY_CUTTING = 50, QUALITY_WIRE_CUTTING = 20)
	suitable_cell = /obj/item/cell/medium
	price_tag = 720

/obj/item/tool/saw/hyper/turn_on(mob/user)
	if (cell && cell.charge >= 1)
		item_state = "[initial(item_state)]_on"
		to_chat(user, SPAN_NOTICE("You rev up the [src]."))
		playsound(loc, 'sound/items/chainsaw_on.ogg', 40)
		..()

	else if (!cell || cell.charge <= 0)
		item_state = initial(item_state)
		to_chat(user, SPAN_WARNING("[src]'s battery is dead or missing."))

/obj/item/tool/saw/hyper/turn_off(mob/user)
	playsound(loc, 'sound/items/chainsaw_off.ogg', 80)
	to_chat(user, SPAN_NOTICE("You turn the [src] off."))
	..()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
