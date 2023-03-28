/obj/spawner/rations
	name = "random preserved rations"
	icon_state = "food-green"
	tags_to_spawn = list(SPAWN_RATIONS)

<<<<<<< HEAD
/obj/spawner/rations/low_chance
=======
/obj/random/rations/item_to_spawn()
	return pickweight(list(/obj/item/reagent_containers/food/snacks/openable/chips = 2,\
				/obj/item/reagent_containers/food/snacks/candy = 2,\
				/obj/item/reagent_containers/food/snacks/openable/tastybread = 2,\
				/obj/item/reagent_containers/food/snacks/openable/no_raisin = 2,\
				/obj/item/reagent_containers/food/snacks/openable/liquidfood = 4,
				/obj/item/reagent_containers/food/snacks/donkpocket/sinpocket = 1,\
				/obj/item/storage/fancy/crayons = 0.1))

/obj/random/rations/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance preserved rations"
	icon_state = "food-green-low"
	spawn_nothing_percentage = 60

<<<<<<< HEAD

/obj/spawner/junkfood
=======
/obj/random/junkfood
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "random junkfood"
	icon_state = "food-red"
	has_postspawn = FALSE
	tags_to_spawn = list(SPAWN_JUNKFOOD)

<<<<<<< HEAD
/obj/spawner/junkfood/low_chance
=======
/obj/random/junkfood/item_to_spawn()
	return pickweight(list(/obj/item/reagent_containers/food/snacks/openable/chips = 3,
				/obj/item/reagent_containers/food/snacks/candy = 3,
				/obj/item/reagent_containers/food/snacks/cheesiehonkers = 3,
				/obj/item/reagent_containers/food/snacks/openable/tastybread = 3,
				/obj/item/reagent_containers/food/snacks/openable/no_raisin = 3,
				/obj/item/reagent_containers/food/snacks/openable/spacetwinkie = 3,
				/obj/item/reagent_containers/food/drinks/dry_ramen = 2,
				/obj/item/reagent_containers/food/snacks/hotdog = 1,
				/obj/item/reagent_containers/food/snacks/openable/liquidfood = 2,
				/obj/item/reagent_containers/food/snacks/pie = 1,
				/obj/item/reagent_containers/food/snacks/sandwich = 1))

/obj/random/junkfood/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance junkfood"
	icon_state = "food-red-low"
	spawn_nothing_percentage = 60

<<<<<<< HEAD
/obj/spawner/junkfood/rotten
=======
/obj/random/junkfood/onlypizza
	name = "random pizza"

/obj/random/junkfood/onlypizza/item_to_spawn()
	return pick(/obj/item/pizzabox/margherita,\
				/obj/item/pizzabox/mushroom,\
				/obj/item/pizzabox/meat,\
				/obj/item/pizzabox/vegetable,\
				/obj/item/pizzabox/hawaiianpizza)

/obj/random/junkfood/onlyburger
	name = "random burger"

/obj/random/junkfood/onlyburger/item_to_spawn()
	return pick(/obj/item/reagent_containers/food/snacks/bigbiteburger,\
				/obj/item/reagent_containers/food/snacks/cheeseburger,\
				/obj/item/reagent_containers/food/snacks/jellyburger,\
				/obj/item/reagent_containers/food/snacks/tofuburger)

/obj/random/junkfood/onlycake
	name = "random cake"

/obj/random/junkfood/onlycake/item_to_spawn()
	return pick(/obj/item/reagent_containers/food/snacks/sliceable/applecake,\
			/obj/item/reagent_containers/food/snacks/sliceable/birthdaycake,\
			/obj/item/reagent_containers/food/snacks/sliceable/carrotcake,\
			/obj/item/reagent_containers/food/snacks/sliceable/cheesecake,\
			/obj/item/reagent_containers/food/snacks/sliceable/chocolatecake,\
			/obj/item/reagent_containers/food/snacks/sliceable/lemoncake,\
			/obj/item/reagent_containers/food/snacks/sliceable/limecake,\
			/obj/item/reagent_containers/food/snacks/sliceable/orangecake,\
			/obj/item/reagent_containers/food/snacks/sliceable/plaincake)

/obj/random/junkfood/rotten
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "random spoiled food"
	icon_state = "food-red"
	has_postspawn = TRUE

/obj/spawner/junkfood/rotten/low_chance
	name = "low chance spoiled food"
	icon_state = "food-red-low"
	spawn_nothing_percentage = 60

<<<<<<< HEAD
/obj/spawner/junkfood/rotten/post_spawn(list/spawns)
=======
/obj/random/junkfood/rotten/post_spawn(list/spawns)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	for(var/obj/item/reagent_containers/food in spawns)
		if(!food.reagents)
			return
		if(prob(80))
			food.reagents.add_reagent("toxin", 25)
		if(prob(30)) // So sometimes the rot is visible.
			food.make_old()
	return spawns

<<<<<<< HEAD
/obj/spawner/pizza
	name = "random pizza"
	icon_state = "food-red"
	tags_to_spawn = list(SPAWN_PIZZA)

/obj/spawner/pizza/low_chance
	name = "low chance pizza"
	icon_state = "food-red-low"
	spawn_nothing_percentage = 60

/obj/spawner/soda
	name = "random soda"
	icon_state = "food-red"
	tags_to_spawn = list(SPAWN_DRINK_SODA)

/obj/spawner/soda/low_chance
	name = "low chance soda"
	icon_state = "food-red-low"
	spawn_nothing_percentage = 60
=======

/obj/random/rations/crayon
	name = "random crayon rations"
	icon_state = "food-green"

/obj/random/rations/crayon/item_to_spawn()
	return pickweight(list(/obj/item/pen/crayon/red = 2,\
				/obj/item/pen/crayon/orange = 2,\
				/obj/item/pen/crayon/yellow = 2,\
				/obj/item/pen/crayon/green = 2,\
				/obj/item/pen/crayon/blue = 2,\
				/obj/item/pen/crayon/purple = 2,\
				/obj/item/pen/crayon/mime = 0.2,\
				/obj/item/pen/crayon/rainbow = 0.2,\
				/obj/item/storage/fancy/crayons = 1))

/obj/random/rations/roachcube
	name = "random roachcube rations"
	icon_state = "food-green"

/obj/random/rations/roachcube/item_to_spawn()
	return pickweight(list(/obj/item/reagent_containers/food/snacks/cube/roach = 4,\
						/obj/item/reagent_containers/food/snacks/cube/roach/fuhrer = 1,\
						/obj/item/reagent_containers/food/snacks/cube/roach/jager = 3,\
						/obj/item/reagent_containers/food/snacks/cube/roach/kraftwerk = 2,\
						/obj/item/reagent_containers/food/snacks/cube/roach/roachling = 5,\
						/obj/item/reagent_containers/food/snacks/cube/roach/seuche = 2,\
						/obj/item/reagent_containers/food/snacks/cube/roach/panzer = 4,\
						/obj/item/reagent_containers/food/snacks/cube/roach/elektromagnetisch = 1,\
						/obj/item/reagent_containers/food/snacks/cube/roach/glowing = 2,\
						/obj/item/reagent_containers/food/snacks/cube/roach/grestrahlte = 2))



>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
