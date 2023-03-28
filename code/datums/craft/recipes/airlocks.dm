/datum/craft_recipe/airlock
	category = "Airlocks"
	flags = CRAFT_ON_FLOOR|CRAFT_ONE_PER_TURF
	time = 150
	steps = list(
		list(CRAFT_MATERIAL, 10, MATERIAL_STEEL),
	)
	related_stats = list(STAT_MEC)
<<<<<<< HEAD

/datum/craft_recipe/airlock/assembly
	name = "standard airlock assembly"
=======
	requiredPerk = PERK_HANDYMAN

/datum/craft_recipe/airlock/standard
	name = "airlock assembly"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	result = /obj/structure/door_assembly
	//name_craft_menu = "Airlock assemblies"

<<<<<<< HEAD
/datum/craft_recipe/airlock/assembly/command
	name = "command airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_com
	// variation_type = CRAFT_VARIATION

/datum/craft_recipe/airlock/assembly/security
	name = "security airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_sec
	// variation_type = CRAFT_VARIATION

/datum/craft_recipe/airlock/assembly/engineering
	name = "engineering airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_eng
	// variation_type = CRAFT_VARIATION

/datum/craft_recipe/airlock/assembly/mining
	name = "mining airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_min
	// variation_type = CRAFT_VARIATION
=======
/datum/craft_recipe/airlock/airtight
	name = "airtight hatch assembly"
	result = /obj/structure/door_assembly/door_assembly_hatch
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/craft_recipe/airlock/assembly/atmospherics
	name = "atmospherics airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_atmo
	// variation_type = CRAFT_VARIATION

<<<<<<< HEAD
/datum/craft_recipe/airlock/assembly/research
	name = "research airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_research
	// variation_type = CRAFT_VARIATION

/datum/craft_recipe/airlock/assembly/medical
	name = "medical airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_med
	// variation_type = CRAFT_VARIATION

/datum/craft_recipe/airlock/assembly/maintenance
	name = "maintenance airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_mai
	// variation_type = CRAFT_VARIATION
=======
/datum/craft_recipe/airlock/command
	name = "command airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_com

/datum/craft_recipe/airlock/emergency_shutter
	name = "emergency shutter"
	result = /obj/structure/firedoor_assembly

/datum/craft_recipe/airlock/engineering
	name = "engineering airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_eng
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/craft_recipe/airlock/assembly/external
	name = "external airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_ext
	// variation_type = CRAFT_VARIATION

/datum/craft_recipe/airlock/assembly/freezer
	name = "freezer airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_fre
	// variation_type = CRAFT_VARIATION

<<<<<<< HEAD
/datum/craft_recipe/airlock/hatch/airtight
	name = "airtight hatch assembly"
	result = /obj/structure/door_assembly/door_assembly_hatch
=======
/datum/craft_recipe/airlock/high_security
	name = "high security airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_highsecurity

/datum/craft_recipe/airlock/maintenance
	name = "maintenance airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_mai
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/craft_recipe/airlock/hatch/maintenance
	name = "maintenance hatch assembly"
	result = /obj/structure/door_assembly/door_assembly_mhatch

<<<<<<< HEAD
/datum/craft_recipe/airlock/assembly/high_security
	name = "high security airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_highsecurity
	steps = list(
		list(CRAFT_MATERIAL, 10, MATERIAL_PLASTEEL)
	)


/datum/craft_recipe/airlock/shutter/emergency_shutter
	name = "emergency shutter"
	result = /obj/structure/firedoor_assembly
=======
/datum/craft_recipe/airlock/medical
	name = "medical airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_med

/datum/craft_recipe/airlock/mining
	name = "mining airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_min
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/craft_recipe/airlock/assembly/multitile
	name = "multi-tile airlock assembly"
	result = /obj/structure/door_assembly/multi_tile
	steps = list(
		list(CRAFT_MATERIAL, 20, MATERIAL_STEEL)
	)
<<<<<<< HEAD
	// variation_type = CRAFT_VARIATION
=======

/datum/craft_recipe/airlock/research
	name = "research airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_research

/datum/craft_recipe/airlock/security
	name = "security airlock assembly"
	result = /obj/structure/door_assembly/door_assembly_sec
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
