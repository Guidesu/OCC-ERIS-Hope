/obj/spawner/closet
	name = "random closet"
	icon_state = "closet-grey"
	alpha = 128
	tags_to_spawn = list(SPAWN_CLOSET)

<<<<<<< HEAD
/obj/spawner/closet/low_chance
=======
/obj/random/closet/item_to_spawn()
	return pickweight(list(/obj/structure/closet = 4,
				/obj/structure/closet/firecloset = 8,
				/obj/structure/closet/emcloset = 6,
				/obj/structure/closet/wardrobe/color/black = 1,
				/obj/structure/closet/wardrobe/color/blue = 1,
				/obj/structure/closet/wardrobe/color/red = 1,
				/obj/structure/closet/wardrobe/color/green = 1,
				/obj/structure/closet/wardrobe/misc/prison = 1,
				/obj/structure/closet/wardrobe/color/yellow = 1,
				/obj/structure/closet/wardrobe/color/white = 1,
				/obj/structure/closet/wardrobe/color/mixed = 1,
				/obj/structure/closet/lasertag/red = 1,
				/obj/structure/closet/lasertag/blue = 1,
				/obj/structure/closet/toolcloset = 8,
				/obj/structure/closet/gimmick/russian = 0.5,
				/obj/structure/closet/jcloset = 1,
				/obj/structure/closet/malf/suits =  0.5,
				/obj/structure/closet/syndicate/personal = 0.1,
				/obj/structure/closet/bombcloset = 0.5,
				/obj/structure/closet/bombcloset/security = 0.4))

/obj/random/closet/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random closet"
	icon_state = "closet-grey-low"
	spawn_nothing_percentage = 60

/obj/spawner/closet/tech
	name = "random technical closet"
	icon_state = "closet-orange"
	tags_to_spawn = list(SPAWN_CLOSET_TECHNICAL)

/obj/spawner/closet/tech/low_chance
	name = "low chance random technical closet"
	icon_state = "closet-orange-low"
	spawn_nothing_percentage = 60

/obj/spawner/closet/wardrobe
	name = "random wardrobe closet"
	icon_state = "closet-blue"
	tags_to_spawn = list(SPAWN_WARDROBE)

<<<<<<< HEAD
/obj/spawner/closet/wardrobe/low_chance
=======

/obj/random/closet_wardrobe/item_to_spawn()
	return pick(/obj/structure/closet/wardrobe/color/black,
				/obj/structure/closet/wardrobe/color/green,
				/obj/structure/closet/wardrobe/misc/prison,
				/obj/structure/closet/wardrobe/color/yellow,
				/obj/structure/closet/wardrobe/color/white,
				/obj/structure/closet/wardrobe/color/red,
				/obj/structure/closet/wardrobe/color/blue,
				/obj/structure/closet/wardrobe/color/mixed)

/obj/random/closet_wardrobe/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random wardrobe closet"
	icon_state = "closet-blue-low"
	spawn_nothing_percentage = 60

/obj/spawner/closet/maintloot
	name = "random maint loot closet"
	icon_state = "closet-black"
	tags_to_spawn = list(SPAWN_CLOSET_RANDOM)
	exclusion_paths = list(/obj/structure/closet/random/hostilemobs/beacon)
	allow_blacklist = TRUE

/obj/spawner/closet/maintloot/low_chance
	name = "low chance random maint loot closet"
	icon_state = "closet-black-low"
	spawn_nothing_percentage = 60

// For Scrap Beacon
<<<<<<< HEAD
/obj/spawner/closet/maintloot/beacon
	exclusion_paths = list(/obj/structure/closet/random/hostilemobs)
=======
/obj/random/closet_maintloot/beacon/item_to_spawn()
	return pickweight(list(
				/obj/structure/closet/random_miscellaneous = 5,
				/obj/structure/closet/random_tech = 3,
				/obj/structure/closet/random_milsupply = 1,
				/obj/structure/closet/random_medsupply = 3,
				/obj/structure/closet/random_hostilemobs/beacon = 8
			))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
