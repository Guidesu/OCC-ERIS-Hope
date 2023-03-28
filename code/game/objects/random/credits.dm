//Spawns credits, has many subtypes
/obj/spawner/credits
	name = "random cash"
	icon_state = "cash-green"
<<<<<<< HEAD
	low_price = 100
	top_price = 1000

/obj/spawner/credits/item_to_spawn()
	return /obj/item/spacecash/bundle

/obj/spawner/credits/post_spawn(list/spawns)
	for(var/obj/item/spacecash/bundle/C in spawns)
		C.worth = rand(low_price, top_price) //Rand conveniently produces integers
=======
	var/min = 100
	var/max = 300
	has_postspawn = TRUE

/obj/random/credits/item_to_spawn()
	return /obj/item/spacecash/bundle

/obj/random/credits/post_spawn(var/list/spawns)
	for (var/obj/item/spacecash/bundle/C in spawns)
		C.worth = rand(min, max) //Rand conveniently produces integers
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		C.update_icon()

/obj/spawner/credits/low_chance
	name = "low chance random cash"
	icon_state = "cash-green-low"
	spawn_nothing_percentage = 75


/obj/spawner/credits/c50
	low_price = 1
	top_price = 50
	icon_state = "cash-black"

/obj/spawner/credits/c100
	low_price = 5
	top_price = 100
	icon_state = "cash-grey"

<<<<<<< HEAD
/obj/spawner/credits/c500
	low_price = 100
	top_price = 500
	icon_state = "cash-blue"

/obj/spawner/credits/c1000
	low_price = 500
	top_price = 1000
	icon_state = "cash-green"

/obj/spawner/credits/c5000
	low_price = 1000
	top_price = 5000
	icon_state = "cash-orange"

/obj/spawner/credits/c10000
	low_price = 5000
	top_price = 10000
=======
/obj/random/credits/c500
	min = 10
	max = 500
	icon_state = "cash-blue"

/obj/random/credits/c1000
	min = 50
	max = 1000
	icon_state = "cash-green"

/obj/random/credits/c5000
	min = 100
	max = 5000
	icon_state = "cash-orange"

/obj/random/credits/c10000
	min = 500
	max = 10000
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "cash-red"
