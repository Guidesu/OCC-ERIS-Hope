/obj/spawner/material
	name = "random material"
	icon_state = "material-grey"
	tags_to_spawn = list(SPAWN_MATERIAL)
	restricted_tags = list(SPAWN_MATERIAL_JUNK)

/obj/spawner/material/building
	name = "random building material"
	icon_state = "material-grey"
<<<<<<< HEAD
	tags_to_spawn = list(SPAWN_MATERIAL_BUILDING)
=======
	spawn_nothing_percentage = 20
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/spawner/material/building/low_chance
	name = "low chance random building material"
	icon_state = "material-grey-low"
	spawn_nothing_percentage = 60

/obj/spawner/material/resources
	name = "random resource material"
	icon_state = "material-green"
<<<<<<< HEAD
	tags_to_spawn = list(SPAWN_MATERIAL_RESOURCES)

/obj/spawner/material/resources/low_chance
=======
	spawn_nothing_percentage = 20

/obj/random/material_resources/item_to_spawn()
	return pickweight(list(/obj/item/stack/material/steel/random = 5,\
				/obj/item/stack/material/glass/random = 4,\
				/obj/item/stack/material/glass/plasmaglass/random = 3,\
				/obj/item/stack/material/iron/random = 2,\
				/obj/item/stack/material/diamond/random = 0.5,\
				/obj/item/stack/material/plasma/random = 3,\
				/obj/item/stack/material/gold/random = 2,\
				/obj/item/stack/material/uranium/random = 1,\
				/obj/item/stack/material/silver/random = 2))

/obj/random/material_resources/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random resource material"
	icon_state = "material-green-low"
	spawn_nothing_percentage = 60

/obj/spawner/material/resources/rare
	name = "random rare material"
	icon_state = "material-orange"
<<<<<<< HEAD
	tags_to_spawn = list(SPAWN_MATERIAL_RESOURCES_RARE)

/obj/spawner/material/resources/rare/low_chance
=======
	spawn_nothing_percentage = 20

/obj/random/material_rare/item_to_spawn()
	return pickweight(list(/obj/item/stack/material/diamond/random = 1,\
				/obj/item/stack/material/gold/random = 2,\
				/obj/item/stack/material/uranium/random = 1,\
				/obj/item/stack/material/silver/random = 2,\
				/obj/item/stack/material/glass/plasmaglass/random = 2))

/obj/random/material_rare/always_spawn
	name = "random always spawn rare material"
	icon_state = "material-orange"
	spawn_nothing_percentage = 0

/obj/random/material_rare/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random rare material"
	icon_state = "material-orange-low"
	spawn_nothing_percentage = 60

<<<<<<< HEAD
/obj/spawner/material/ore
	name = "random ore"
	icon_state = "material-black"
	tags_to_spawn = list(SPAWN_ORE)
	restricted_tags = list()

/obj/spawner/material/ore/low_chance
	name = "low chance random ore"
	icon_state = "material-black-low"
	spawn_nothing_percentage = 60
=======
/obj/random/material_ore
	name = "random ore"
	icon_state = "material-black"
	spawn_nothing_percentage = 20

/obj/random/material_handyman
	spawn_nothing_percentage = 0

/obj/random/material_handyman/item_to_spawn()
	return pickweight(list(/obj/item/stack/material/diamond/random = 1,\
				/obj/item/stack/material/gold/random = 2,\
				/obj/item/stack/material/uranium/random = 1,\
				/obj/item/stack/material/silver/random = 2,\
				/obj/item/stack/material/platinum/random = 2,\
				/obj/item/stack/material/plasteel/random = 2))

/obj/random/material_ore/item_to_spawn()
	return pickweight(list(/obj/item/stack/ore/coal = 4,\
				/obj/item/stack/ore/glass = 5,\
				/obj/item/stack/ore/gold = 3,\
				/obj/item/stack/ore/hydrogen = 0.1,\
				/obj/item/stack/ore/iron = 4,\
				/obj/item/stack/ore/osmium = 1,\
				/obj/item/stack/ore/plasma = 2,\
				/obj/item/stack/ore/silver = 3,\
				/obj/item/stack/ore/uranium = 1,\
				/obj/item/stack/ore/diamond = 0.1))


/obj/random/material_ore/low_chance
	name = "low chance random ore"
	icon_state = "material-black-low"
	spawn_nothing_percentage = 60

/obj/random/material_ore_small
	name = "random small ore"
	icon_state = "material-black"
	spawn_nothing_percentage = 0

/obj/random/material_ore_small/item_to_spawn()
	return pickweight(list(/obj/item/stack/ore/coal/small = 2,\
				/obj/item/stack/ore/glass = 12,\
				/obj/item/stack/ore/gold/small = 2,\
				/obj/item/stack/ore/hydrogen/small = 1,\
				/obj/item/stack/ore/iron/small = 2,\
				/obj/item/stack/ore/osmium/small = 2,\
				/obj/item/stack/ore/plasma/small = 1,\
				/obj/item/stack/ore/silver/small = 2,\
				/obj/item/stack/ore/uranium/small = 1,\
				/obj/item/stack/ore/diamond/small = 1))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
