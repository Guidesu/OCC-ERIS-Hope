//Biomatter tank
//Here we store our biomatter. This part consists of two things:
//Biomatter tank platform - it's a rail and pipes under it
//And our tank. It can be moved from one position to another
//Also tank have to positions. To port and default
//When it's at to port position, we pipes will be opened and somebody can clean it up
//Tank can be connected to portable canister (reagent_dispenser), but in this position, bioreactor can't process things
//Default position. Well, it's default position


//pipe contamination levels
#define DIRT_LVL_LOW 1
#define DIRT_LVL_MEDIUM 2
#define DIRT_LVL_HIGH 3

#define WEAROUT_CHANCE 50


/obj/machinery/multistructure/bioreactor_part/biotank_platform
	name = "biomatter tank platform"
	icon_state = "tank_platform"
	layer = LOW_OBJ_LAYER
	idle_power_usage = 120
	pixel_y = -4
	var/obj/structure/biomatter_tank/biotank
	var/obj/canister
	var/pipes_opened = FALSE
<<<<<<< HEAD
	var/pipes_cleanness = 100

	circuit = /obj/item/electronics/circuitboard/neotheology/bioreactor_biotank
=======
	var/pipes_cleanness = 200
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


/obj/machinery/multistructure/bioreactor_part/biotank_platform/Initialize()
	. = ..()
	biotank = new(get_turf(src))
	biotank.platform = src


/obj/machinery/multistructure/bioreactor_part/biotank_platform/Destroy()
	if(biotank)
		biotank.platform = null
		qdel(biotank)
	return ..()


/obj/machinery/multistructure/bioreactor_part/biotank_platform/examine(mob/user)
	..()
	if(!pipes_opened)
		return
	switch(get_dirtiness_level())
		if(DIRT_LVL_LOW)
<<<<<<< HEAD
			to_chat(user, SPAN_NOTICE("The pipes are slightly dirty, you can see signs of biomass clinging to the walls of the pipes."))
		if(DIRT_LVL_MEDIUM)
			to_chat(user, SPAN_WARNING("You can see solid chunks of biomass blocking a significant part of the pipes."))
		if(DIRT_LVL_HIGH)
			to_chat(user, SPAN_WARNING("The pipes are completely blocked by biomass. It'd be a bad idea to try and run the bioreactor without cleaning them."))
		else
			to_chat(user, SPAN_NOTICE("The pipes look clean."))


/obj/machinery/multistructure/bioreactor_part/biotank_platform/on_update_icon()
	cut_overlays()
	if(pipes_cleanness <= 90)
		add_overlays("[icon_state]-dirty_[get_dirtiness_level()]")
=======
			to_chat(user, SPAN_NOTICE("Pipes are a bit worn, it's also slightly dirty. You see a signs of biomass inside these pipes."))
		if(DIRT_LVL_MEDIUM)
			to_chat(user, SPAN_WARNING("It's very dirty. Solid biomass block at least half of space inside the pipes. Better to clean it up."))
		if(DIRT_LVL_HIGH)
			to_chat(user, SPAN_WARNING("You see a high amount of biomass. Pipes are fully blocked. You need to clean this first if you want bioreactor to work."))
		else
			to_chat(user, SPAN_NOTICE("Pipes looks clean."))


/obj/machinery/multistructure/bioreactor_part/biotank_platform/update_icon()
	cut_overlays()
	if(pipes_cleanness <= 90)
		add_overlay("[icon_state]-dirty_[get_dirtiness_level()]")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


/obj/machinery/multistructure/bioreactor_part/biotank_platform/Process()
	if(!MS)
		return
	if(biotank.canister)
		biotank.reagents.trans_to_holder(biotank.canister.reagents, 10)


/obj/machinery/multistructure/bioreactor_part/biotank_platform/attackby(var/obj/item/I, var/mob/user)
	if(istype(I, /obj/item/mop))
		var/dirtiness_lvl = get_dirtiness_level()
<<<<<<< HEAD
		to_chat(user, SPAN_NOTICE("You begin cleaning pipes with [I]... O-of, what a smell!"))
=======
		to_chat(user, SPAN_NOTICE("You begin cleaning pipes with your [I]... O-of, what a smell!"))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if(do_after(user, CLEANING_TIME * dirtiness_lvl, src))
			to_chat(user, SPAN_NOTICE("You cleaned up the pipes."))
			pipes_cleanness = initial(pipes_cleanness)

			if(dirtiness_lvl == DIRT_LVL_MEDIUM)
				spill_biomass(get_turf(user), cardinal)
			else if(dirtiness_lvl >= DIRT_LVL_HIGH)
				spill_biomass(get_turf(user), alldirs)
			toxin_attack(user, rand(5, 5*dirtiness_lvl))
		else
			to_chat(user, SPAN_WARNING("You need to stand still to clean it properly."))
		update_icon()
	..()


<<<<<<< HEAD
/obj/machinery/multistructure/bioreactor_part/biotank_platform/proc/take_amount(new_amount)
	biotank.reagents.add_reagent("biomatter", new_amount)
=======
/obj/machinery/multistructure/bioreactor_part/biotank_platform/proc/take_amount(var/amount)
	biotank.reagents.add_reagent("biomatter", amount)
	GLOB.biomatter_neothecnology_amt += amount
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


//Pipe wearout. Wearout var - is amount of 'dirt' that will be applied to our pipes
//Warning, when you apply wearout, there is only a chance that it will be applied. Use forced to avoid this check
/obj/machinery/multistructure/bioreactor_part/biotank_platform/proc/pipes_wearout(var/wearout, var/forced = FALSE)
	if(forced || prob(WEAROUT_CHANCE))
		pipes_cleanness -= wearout
	if(pipes_cleanness <= 0)
		pipes_cleanness = 0
		for(var/obj/machinery/multistructure/bioreactor_part/platform/P in MS_bioreactor.platforms)
			spill_biomass(P.loc)
	update_icon()


/obj/machinery/multistructure/bioreactor_part/biotank_platform/proc/get_dirtiness_level()
	if(pipes_cleanness >= 70 && pipes_cleanness <=90)
		return DIRT_LVL_LOW
	else if(pipes_cleanness >= 40 && pipes_cleanness < 70)
		return DIRT_LVL_MEDIUM
	else if(pipes_cleanness < 40)
		return DIRT_LVL_HIGH


/obj/structure/biomatter_tank
	name = "biomatter tank"
	icon = 'icons/obj/machines/bioreactor.dmi'
	icon_state = "biotank"
	anchored = TRUE
	density = TRUE
	layer = ABOVE_MOB_LAYER + 0.05
	pixel_y = 16
	var/max_capacity = 10000
	var/obj/machinery/multistructure/bioreactor_part/biotank_platform/platform
	var/obj/structure/reagent_dispensers/biomatter/canister
	var/default_position = 16
	var/to_port_position = -20


/obj/structure/biomatter_tank/Initialize()
	. = ..()
	create_reagents(max_capacity)


/obj/structure/biomatter_tank/Destroy()
	if(platform)
		platform.biotank = null
		qdel(platform)
	if(canister)
		canister.anchored = initial(canister.anchored)
	return ..()


<<<<<<< HEAD
/obj/structure/biomatter_tank/on_update_icon()
	cut_overlays()
	if(canister && platform.pipes_opened)
		var/image/pipe_overlay = image(icon = 'icons/obj/machines/bioreactor.dmi', icon_state = "port-pipe", pixel_y = -9)
		add_overlays(pipe_overlay)
=======
/obj/structure/biomatter_tank/update_icon()
	cut_overlays()
	if(canister && platform.pipes_opened)
		var/image/pipe_overlay = image(icon = 'icons/obj/machines/bioreactor.dmi', icon_state = "port-pipe", pixel_y = -9)
		add_overlay(pipe_overlay)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


/obj/structure/biomatter_tank/attack_hand(mob/user)
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN*2)
	if(!platform.MS)
		return
	if(canister)
		to_chat(user, SPAN_WARNING("You should disconnect it from the canister first!"))
		return
	if(platform.MS_bioreactor.chamber_solution)
		to_chat(user, SPAN_WARNING("You need to pump out solution first."))
		return
	if(!platform.pipes_opened)
		animate(src, pixel_y = to_port_position, 12, easing = CUBIC_EASING)
		platform.pipes_opened = TRUE
		to_chat(user, SPAN_NOTICE("You move [src] directly to the port. Platform pipes now opened."))
		playsound(loc, 'sound/machines/Custom_blastdooropen.ogg', 100, 1)
	else
		animate(src, pixel_y = default_position, 12, easing = CUBIC_EASING)
		platform.pipes_opened = FALSE
		to_chat(user, SPAN_NOTICE("You move [src] back to it's default location. Platform pipes are closed."))
		playsound(loc, 'sound/machines/Custom_blastdoorclose.ogg', 100, 1)


<<<<<<< HEAD
/obj/structure/biomatter_tank/attackby(obj/item/I, mob/user)
=======
/obj/structure/biomatter_tank/attackby(var/obj/item/I, var/mob/user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/tool_type = I.get_tool_type(user, list(QUALITY_BOLT_TURNING), src)
	switch(tool_type)
		if(QUALITY_BOLT_TURNING)
			if(!platform.pipes_opened)
				return
			var/obj/structure/reagent_dispensers/biomatter/possible_canister = locate() in platform.MS_bioreactor.output_port.loc
			if(!possible_canister)
				to_chat(user, SPAN_WARNING("Nothing to connect to!"))
				return
			var/turf/user_interaction_loc = user.loc
<<<<<<< HEAD
			var/set_canister = FALSE
			if(I.use_tool(user, src, WORKTIME_FAST, tool_type, FAILCHANCE_VERY_EASY,  required_stat = STAT_MEC))
				if(canister)
					set_canister = unset_canister(canister)
				else
					set_canister = set_canister(possible_canister)
				if(set_canister)
					to_chat(user, SPAN_NOTICE("You [canister ? "connect [canister] to" : "disconnect [canister] from"] [src]."))
					toxin_attack(user, rand(5, 15))
			if(!set_canister)
=======
			if(I.use_tool(user, src, WORKTIME_FAST, tool_type, FAILCHANCE_VERY_EASY,  required_stat = STAT_MEC))
				if(canister)
					unset_canister(canister)
				else
					set_canister(possible_canister)
				to_chat(user, SPAN_NOTICE("You [canister ? "connect [canister] to" : "disconnect [canister] from"] [src]."))
				toxin_attack(user, rand(5, 15))
			else
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
				to_chat(user, SPAN_WARNING("Ugh. You done something wrong!"))
				shake_animation()
				if(reagents.total_volume)
					toxin_attack(user, rand(15, 25))
					spill_biomass(user_interaction_loc)
			update_icon()

<<<<<<< HEAD
/obj/structure/biomatter_tank/proc/set_canister(obj/target_tank)
	. = target_tank.set_anchored(TRUE)
	if(!.)
		return FALSE
	target_tank.can_anchor = FALSE
	canister = target_tank
	platform.MS_bioreactor.metrics_screen.icon_state = "screen_process"
	FLICK("screen_activation", platform.MS_bioreactor.metrics_screen)
	playsound(platform.MS_bioreactor.output_port.loc, 'sound/machines/Custom_extin.ogg', 100, 1)
	. = TRUE

/obj/structure/biomatter_tank/proc/unset_canister(obj/target_tank)
	target_tank.can_anchor = TRUE
	. = target_tank.set_anchored(FALSE)
	if(!.)
		target_tank.can_anchor = FALSE
		return FALSE
	canister = null
	platform.MS_bioreactor.metrics_screen.icon_state = initial(platform.MS_bioreactor.metrics_screen.icon_state)
	playsound(platform.MS_bioreactor.output_port.loc, 'sound/machines/Custom_extout.ogg', 100, 1)
	. = TRUE
=======

/obj/structure/biomatter_tank/proc/set_canister(obj/target_tank)
	target_tank.anchored = TRUE
	canister = target_tank
	platform.MS_bioreactor.metrics_screen.icon_state = "screen_process"
	flick("screen_activation", platform.MS_bioreactor.metrics_screen)
	playsound(platform.MS_bioreactor.output_port.loc, 'sound/machines/Custom_extin.ogg', 100, 1)


/obj/structure/biomatter_tank/proc/unset_canister(obj/target_tank)
	target_tank.anchored = FALSE
	canister = null
	platform.MS_bioreactor.metrics_screen.icon_state = initial(platform.MS_bioreactor.metrics_screen.icon_state)
	playsound(platform.MS_bioreactor.output_port.loc, 'sound/machines/Custom_extout.ogg', 100, 1)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


#undef DIRT_LVL_LOW
#undef DIRT_LVL_MEDIUM
#undef DIRT_LVL_HIGH

#undef WEAROUT_CHANCE