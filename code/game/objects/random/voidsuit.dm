/obj/spawner/voidsuit
	name = "random voidsuit"
	icon_state = "armor-blue"
	tags_to_spawn = list(SPAWN_VOID_SUIT)
	has_postspawn = FALSE

<<<<<<< HEAD
/obj/spawner/voidsuit/low_chance
=======
	var/damaged = FALSE
	has_postspawn = TRUE


/obj/random/voidsuit/item_to_spawn()
	return pickweight(list(/obj/item/clothing/suit/space/void = 2,
		/obj/item/clothing/suit/space/void/engineering = 2,
		/obj/item/clothing/suit/space/void/mining = 2,
		/obj/item/clothing/suit/space/void/medical = 2.3,
		/obj/item/clothing/suit/space/void/security = 1,
		/obj/item/clothing/suit/space/void/atmos = 1.5,
		/obj/item/clothing/suit/space/void/merc = 0.5))

/obj/random/voidsuit/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random voidsuit"
	icon_state = "armor-blue-low"
	spawn_nothing_percentage = 75

/obj/spawner/voidsuit/damaged
	name = "random damaged voidsuit"
	icon_state = "armor-red"
	has_postspawn = TRUE

/obj/spawner/voidsuit/damaged/low_chance
	name = "low chance random damaged voidsuit"
	icon_state = "armor-red-low"
	spawn_nothing_percentage = 75

/obj/spawner/voidsuit/post_spawn(list/spawns)
	for(var/obj/item/clothing/suit/space/void/suit in spawns)
		suit.create_breaches(pick(BRUTE, BURN), rand(10, 50))

<<<<<<< HEAD
/obj/spawner/armor_parts
	name = "random armor part"
	icon_state = "armor-black"
	tags_to_spawn = list(SPAWN_PART_ARMOR)

/obj/spawner/armor_parts/low_chance
	name = "low chance armor gun part"
	icon_state = "gun-black-low"
	spawn_nothing_percentage = 75
=======
/obj/random/voidsuit/post_spawn(var/list/spawns)
	for (var/obj/item/clothing/suit/space/void/suit in spawns)
		new /obj/item/clothing/shoes/magboots(loc)
		if (damaged)
			suit.create_breaches(pick(BRUTE, BURN), rand(10, 50))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
