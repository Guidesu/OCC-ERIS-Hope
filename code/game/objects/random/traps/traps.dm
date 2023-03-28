<<<<<<< HEAD
/obj/spawner/traps
	name = "random trap"
	icon_state = "trap-red"
	alpha = 128
	tags_to_spawn = list(SPAWN_TRAP_ARMED)
	check_density = FALSE
=======
/obj/random/traps
	name = "random trap"
	icon_state = "trap-red"
	alpha = 128

/obj/random/traps/item_to_spawn()
	var/list/possible_traps = list(/obj/structure/wire_splicing = 1,
	/obj/item/mine/armed = 0.15,
	/obj/item/mine/improvised/armed = 0.30,
	/obj/item/beartrap/armed = 0.45,
	/obj/item/beartrap/makeshift/armed = 0.8)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/spawner/traps/valid_candidates()
	var/list/possible_traps = ..()
	//Check that its possible to spawn the chosen trap at this location
	for(var/trap in possible_traps)
		if(spread_range && istype(loc, /turf))
			var/list/point_to_spawn = find_smart_point(trap)
			if(point_to_spawn.len)
				continue
		else if(can_spawn_trap(loc, trap))
			continue
		possible_traps -= trap
	if(possible_traps.len == 0)//Occulus edit - fixing CI on wire fix
		possible_traps += /obj/item/beartrap //Occulus edit - fixing CI on wire fix
	return possible_traps

/obj/spawner/traps/low_chance
	icon_state = "trap-red-low"
	spawn_nothing_percentage = 75

<<<<<<< HEAD
/obj/spawner/traps/wire_splicing
=======
/obj/random/traps/low_chance
	icon_state = "trap-red-low"
	spawn_nothing_percentage = 80

/obj/random/traps/wire_splicing
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "wire splicing"
	icon_state = "trap-orange"
	alpha = 128
	tags_to_spawn = list(SPAWN_TRAP_WIRE)

/obj/spawner/traps/wire_splicing/low_chance
	name = "low chance wire splicing"
	icon_state = "trap-orange-low"
	spawn_nothing_percentage = 70

//Checks if a trap can spawn in this location
/proc/can_spawn_trap(turf/T, trap)
	.=TRUE
	if(locate(trap) in T)
		return FALSE
<<<<<<< HEAD
	if(ispath(trap, /obj/structure/wire_splicing))
		if(locate(/obj/structure/cable) in dview(3, T))
			return
		else
			return FALSE

/obj/spawner/traps/find_smart_point(path)
	var/list/spawn_points = ..()
	if(!spawn_points.len)
		return spawn_points
	var/list/trap_points = list()
	for(var/turf/T in spawn_points)
		if(can_spawn_trap(T, path))
			trap_points += T
	return trap_points

/obj/spawner/traps/update_tags()
	..()
	tags_to_spawn = biome.trap_tags

/obj/spawner/traps/update_biome_vars()
	tags_to_spawn = biome.trap_tags
	biome.spawner_trap_count++
	latejoin = TRUE
	var/count = biome.spawner_trap_count
	min_amount = max(1, biome.min_traps_amount / count)
	max_amount = min(biome.max_traps_amount, max(3, biome.max_traps_amount / count))
	if(use_biome_range)
		spread_range = biome.range
		loc = biome.loc
=======

//Spider trap, knocks a person down and spawns an emporer spider.
/obj/random/spider_trap
	name = "spider trap"
	icon_state = "trap-red"
	alpha = 128

/obj/random/spider_trap/item_to_spawn()
	return (/obj/item/spider_shadow_trap)

/obj/random/spider_trap/low_chance
	icon_state = "trap-red-low"
	spawn_nothing_percentage = 80

/obj/random/spider_trap_burrowing
	name = "burrow spider trap"
	icon_state = "trap-red"
	alpha = 128

/obj/random/spider_trap_burrowing/item_to_spawn()
	return (/obj/item/spider_shadow_trap/burrowing)

/obj/random/spider_trap_burrowing/low_chance
	icon_state = "trap-red-low"
	spawn_nothing_percentage = 80
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
