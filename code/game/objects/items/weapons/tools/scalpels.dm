/obj/item/tool/scalpel
	name = "scalpel"
	desc = "Cut, cut, and once more cut."
	icon_state = "scalpel_t3"
	flags = CONDUCT
	force = WEAPON_FORCE_PAINFUL
	armor_penetration = ARMOR_PEN_SHALLOW
	sharp = TRUE
	edge = TRUE
	w_class = ITEM_SIZE_TINY
	worksound = WORKSOUND_HARD_SLASH
	slot_flags = SLOT_EARS
	throw_speed = WEAPON_FORCE_WEAK
<<<<<<< HEAD
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	matter = list(MATERIAL_STEEL = 4)
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	tool_qualities = list(QUALITY_CUTTING = 30, QUALITY_WIRE_CUTTING = 10)
	spawn_tags = SPAWN_TAG_SURGERY_TOOL
=======
	max_health = 100
	origin_tech = list(TECH_MATERIAL = 1, TECH_BIO = 1)
	matter = list(MATERIAL_STEEL = 4)
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	tool_qualities = list(QUALITY_CUTTING = 35, QUALITY_WIRE_CUTTING = 10)
	price_tag = 45
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/tool/scalpel/advanced
	name = "advanced scalpel"
	desc = "Made of more expensive materials, sharper and generally more reliable."
	icon_state = "scalpel_t4"
	matter = list(MATERIAL_STEEL = 5, MATERIAL_PLASTEEL = 1)
<<<<<<< HEAD
	tool_qualities = list(QUALITY_CUTTING = 40, QUALITY_WIRE_CUTTING = 10)
	degradation = 0.12
	max_upgrades = 4
	rarity_value = 20

/obj/item/tool/scalpel/laser
	name = "laser scalpel"
	desc = "A scalpel which uses a directed laser to slice instead of a blade, for more precise surgery while also cauterizing as it cuts."
=======
	tool_qualities = list(QUALITY_CUTTING = 45, QUALITY_WIRE_CUTTING = 10)
	degradation = 0.12
	max_upgrades = 4
	price_tag = 300

/obj/item/tool/scalpel/advanced/si
	icon_state = "scalpel_t4_SI"

/obj/item/tool/scalpel/laser
	name = "laser scalpel"
	desc = "A scalpel augmented with a directed laser, for more precise cutting while instantly searing bleeding cuts through laser cauterization."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "scalpel_t5"
	damtype = BURN
	force = WEAPON_FORCE_DANGEROUS
	armor_penetration = ARMOR_PEN_MODERATE
<<<<<<< HEAD
	matter = list(MATERIAL_STEEL = 4, MATERIAL_PLASTIC = 4)
	tool_qualities = list(QUALITY_CUTTING = 40, QUALITY_WIRE_CUTTING = 20, QUALITY_LASER_CUTTING = 40, QUALITY_CAUTERIZING = 20)
=======
	matter = list(MATERIAL_PLASTEEL = 1, MATERIAL_PLASTIC = 2, MATERIAL_SILVER = 1)
	tool_qualities = list(QUALITY_CUTTING = 60, QUALITY_WIRE_CUTTING = 20, QUALITY_LASER_CUTTING = 60, QUALITY_CAUTERIZING = 20)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	degradation = 0.11
	use_power_cost = 0.12
	suitable_cell = /obj/item/cell/small
	max_upgrades = 4
<<<<<<< HEAD
	rarity_value = 30

// Laser cutting overrides normal cutting
/obj/item/tool/scalpel/laser/get_tool_type(mob/living/user, list/required_qualities, atom/use_on, datum/callback/CB)
	if(QUALITY_LASER_CUTTING in required_qualities)
		required_qualities -= QUALITY_CUTTING
	return ..(user, required_qualities, use_on, CB)

//A makeshift knife, for doing all manner of cutting and stabbing tasks in a half-assed manner
/obj/item/tool/shiv
	name = "shiv"
	desc = "A pointy piece of glass, abraded to an edge and wrapped in tape for a handle. Could become a decent tool or weapon with right tool mods."
=======
	price_tag = 550

/obj/item/tool/scalpel/laser/si
	icon_state = "scalpel_t5_SI"
	use_power_cost = 0.1

/obj/item/tool/scalpel/laser/si/robo
	cell = /obj/item/cell/small/moebius/nuclear

//A makeshift knife, for doing all manner of cutting and stabbing tasks in a half-assed manner
/obj/item/tool/knife/shiv
	name = "shiv"
	desc = "A pointy piece of glass, abraded to an edge and wrapped in tape for a handle. Could become a decent tool or weapon with right tool mods."
	icon = 'icons/obj/tools.dmi'
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "impro_shiv"
	worksound = WORKSOUND_HARD_SLASH
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	matter = list(MATERIAL_GLASS = 1)
	sharp = TRUE
	edge = TRUE
	force = WEAPON_FORCE_NORMAL
	w_class = ITEM_SIZE_TINY
	slot_flags = SLOT_EARS
	tool_qualities = list(QUALITY_CUTTING = 15, QUALITY_WIRE_CUTTING = 5, QUALITY_DRILLING = 5)
	degradation = 4 //Gets worse with use
	max_upgrades = 5 //all makeshift tools get more mods to make them actually viable for mid-late game
<<<<<<< HEAD
	spawn_tags = SPAWN_TAG_JUNKTOOL
=======
	price_tag = 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
