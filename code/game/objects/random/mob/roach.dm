/obj/spawner/mob/roaches
	name = "random roach"
	icon_state = "hostilemob-brown"
	tags_to_spawn = list(SPAWN_ROACH)

<<<<<<< HEAD
/obj/spawner/mob/roaches/low_chance
=======
/obj/random/mob/roaches/item_to_spawn()
	return pickweight(list(/mob/living/carbon/superior_animal/roach = 9,
				// /mob/living/carbon/superior_animal/roach/fat = 2,
				/mob/living/carbon/superior_animal/roach/tank = 2,
				/mob/living/carbon/superior_animal/roach/toxic = 2,
				/mob/living/carbon/superior_animal/roach/glowing = 2,
				/mob/living/carbon/superior_animal/roach/nanite = 2,
				/mob/living/carbon/superior_animal/roach/glowing = 1,
				/mob/living/carbon/superior_animal/roach/hunter = 4,
				/mob/living/carbon/superior_animal/roach/support = 4,
				/mob/living/carbon/superior_animal/roach/fuhrer = 0.5))

/obj/random/mob/roaches/low_chance
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "low chance random roach"
	icon_state = "hostilemob-brown-low"
	spawn_nothing_percentage = 60
	spawn_blacklisted = TRUE

/obj/spawner/mob/roaches/cluster
	name = "cluster of roaches"
	icon_state = "hostilemob-brown-cluster"
	alpha = 128
	min_amount = 3
	max_amount = 9
	spread_range = 0

<<<<<<< HEAD
/obj/spawner/mob/roaches/cluster/low_chance
	name = "low chance cluster of roaches"
	icon_state = "hostilemob-brown-cluster-low"
	spawn_nothing_percentage = 60
	spawn_blacklisted = TRUE

// For Scrap Beacon
/obj/spawner/mob/roaches/cluster/beacon
	tags_to_spawn = list(SPAWN_ROACH_NANITE)
=======
/obj/random/cluster/roaches/item_to_spawn()
	return /obj/random/mob/roaches

/obj/random/cluster/roaches_hoard
	name = "hoard of roaches"
	icon_state = "hostilemob-brown-cluster"
	alpha = 128
	min_amount = 20
	max_amount = 30
	spread_range = 0

/obj/random/cluster/roaches_hoard/item_to_spawn()
	return /obj/random/mob/roaches

/obj/random/cluster/roaches/low_chance
	name = "low chance cluster of roaches"
	icon_state = "hostilemob-brown-cluster-low"
	spawn_nothing_percentage = 60

/obj/random/cluster/roaches/lower_chance
	name = "lower chance cluster of roaches"
	icon_state = "hostilemob-brown-cluster-low"
	spawn_nothing_percentage = 80

// For Scrap Beacon
/obj/random/cluster/roaches/beacon/item_to_spawn()
	return /mob/living/carbon/superior_animal/roach/nanite
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
