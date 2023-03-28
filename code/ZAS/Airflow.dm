/*
Contains helper procs for airflow, handled in /connection_group.
*/

/mob/var/tmp/last_airflow_stun = 0
/mob/proc/airflow_stun()
	if(stat == 2)
		return FALSE
	if(last_airflow_stun > world.time - vsc.airflow_stun_cooldown)
		return FALSE

	if(!(status_flags & CANSTUN) && !(status_flags & CANWEAKEN))
<<<<<<< HEAD
		to_chat(src, SPAN_NOTICE("You stay upright as the air rushes past you."))
		return 0
	if(buckled)
		to_chat(src, SPAN_NOTICE("Air suddenly rushes past you!"))
		return 0
	if(!lying)
		to_chat(src, SPAN_WARNING("The sudden rush of air knocks you over!"))
	Weaken(3) // Nerfed from 5
=======
		to_chat(src, "<span class='notice'>You stay upright as the air rushes past you.</span>")
		return FALSE
	if(buckled)
		to_chat(src, "<span class='notice'>Air suddenly rushes past you!</span>")
		return FALSE
	if(!lying)
		to_chat(src, "<span class='warning'>The sudden rush of air knocks you over!</span>")
	Weaken(5)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	last_airflow_stun = world.time

/mob/living/silicon/airflow_stun()
	return

/mob/living/carbon/slime/airflow_stun()
	return

/mob/living/carbon/human/airflow_stun()
	if(shoes)
		if(shoes.item_flags & NOSLIP)
			return FALSE
	..()

/atom/movable/proc/check_airflow_movable(n)

	if(anchored && !ismob(src)) return FALSE

	if(!istype(src,/obj/item) && n < vsc.airflow_dense_pressure)
		return FALSE

	return TRUE

/mob/check_airflow_movable(n)
	if(n < vsc.airflow_heavy_pressure)
		return FALSE
	return TRUE

/mob/abstract/observer/check_airflow_movable()
	return FALSE

/mob/living/silicon/check_airflow_movable()
	return FALSE


/obj/item/check_airflow_movable(n)
	. = ..()
	switch(w_class)
		if(2)
			if(n < vsc.airflow_lightest_pressure)
				return FALSE
		if(3)
			if(n < vsc.airflow_light_pressure)
				return FALSE
		if(4,5)
			if(n < vsc.airflow_medium_pressure)
				return FALSE

/atom/movable/var/tmp/turf/airflow_dest
/atom/movable/var/tmp/airflow_speed = 0
/atom/movable/var/tmp/airflow_time = 0
/atom/movable/var/tmp/last_airflow = 0

/atom/movable/proc/AirflowCanMove(n)
	return TRUE

/mob/AirflowCanMove(n)
	if(status_flags & GODMODE)
		return FALSE
	if(buckled)
		return FALSE
	var/obj/item/shoes = get_equipped_item(slot_shoes)
	if(istype(shoes) && (shoes.item_flags & NOSLIP))
		return FALSE
	return TRUE

/*
/atom/movable/proc/GotoAirflowDest(n)
<<<<<<< HEAD
	if(!airflow_dest) return
	if(airflow_speed < 0) return
	if(last_airflow > world.time - vsc.airflow_delay) return
	if(airflow_speed)
		airflow_speed = n/max(get_dist(src,airflow_dest),1)
		return
	if(airflow_dest == loc)
		step_away(src,loc)
	if(!src.AirflowCanMove(n))
		return
	if(ismob(src))
		to_chat(src, SPAN_DANGER("You are sucked away by airflow!"))
	last_airflow = world.time
	var/airflow_falloff = 9 - sqrt((x - airflow_dest.x) ** 2 + (y - airflow_dest.y) ** 2)
	if(airflow_falloff < 1)
		airflow_dest = null
		return
	airflow_speed = min(max(n * (9/airflow_falloff),1),9)

	var/xo = airflow_dest.x - src.x
	var/yo = airflow_dest.y - src.y
	var/od = 0

	airflow_dest = null
	if(!density)
		density = TRUE
		od = 1
	while(airflow_speed > 0)
		if(airflow_speed <= 0) break
		airflow_speed = min(airflow_speed,15)
		airflow_speed -= vsc.airflow_speed_decay
		if(airflow_speed > 7)
			if(airflow_time++ >= airflow_speed - 7)
				if(od)
					density = FALSE
				sleep(1 * SSAIR_TICK_MULTIPLIER)
		else
			if(od)
				density = FALSE
			sleep(max(1,10-(airflow_speed+3)) * SSAIR_TICK_MULTIPLIER)
		if(od)
			density = TRUE
		if ((!( src.airflow_dest ) || src.loc == src.airflow_dest))
			src.airflow_dest = locate(min(max(src.x + xo, 1), world.maxx), min(max(src.y + yo, 1), world.maxy), src.z)
		if ((src.x == 1 || src.x == world.maxx || src.y == 1 || src.y == world.maxy))
			break
		if(!istype(loc, /turf))
			break
		step_towards(src, src.airflow_dest)
		var/mob/M = src
		if(istype(M) && M.client)
			M.set_move_cooldown(vsc.airflow_mob_slowdown)
	airflow_dest = null
	airflow_speed = 0
	airflow_time = 0
	if(od)
		density = FALSE


/atom/movable/proc/RepelAirflowDest(n)
	if(!airflow_dest) return
	if(airflow_speed < 0) return
	if(last_airflow > world.time - vsc.airflow_delay) return
	if(airflow_speed)
		airflow_speed = n/max(get_dist(src,airflow_dest),1)
		return
	if(airflow_dest == loc)
		step_away(src,loc)
	if(!src.AirflowCanMove(n))
		return
	if(ismob(src))
		to_chat(src, "<span clas='danger'>You are pushed away by airflow!</span>")
	last_airflow = world.time
	var/airflow_falloff = 9 - sqrt((x - airflow_dest.x) ** 2 + (y - airflow_dest.y) ** 2)
	if(airflow_falloff < 1)
		airflow_dest = null
		return
	airflow_speed = min(max(n * (9/airflow_falloff),1),9)

	var/xo = -(airflow_dest.x - src.x)
	var/yo = -(airflow_dest.y - src.y)
	var/od = 0

	airflow_dest = null
	if(!density)
		density = TRUE
		od = 1
	while(airflow_speed > 0)
		if(airflow_speed <= 0) return
		airflow_speed = min(airflow_speed,15)
		airflow_speed -= vsc.airflow_speed_decay
		if(airflow_speed > 7)
			if(airflow_time++ >= airflow_speed - 7)
				sleep(1 * SSAIR_TICK_MULTIPLIER)
		else
			sleep(max(1,10-(airflow_speed+3)) * SSAIR_TICK_MULTIPLIER)
		if ((!( src.airflow_dest ) || src.loc == src.airflow_dest))
			src.airflow_dest = locate(min(max(src.x + xo, 1), world.maxx), min(max(src.y + yo, 1), world.maxy), src.z)
		if ((src.x == 1 || src.x == world.maxx || src.y == 1 || src.y == world.maxy))
			return
		if(!istype(loc, /turf))
			return
		step_towards(src, src.airflow_dest)
		if(ismob(src))
			var/mob/m = src
			m.set_move_cooldown(vsc.airflow_mob_slowdown)
	airflow_dest = null
	airflow_speed = 0
	airflow_time = 0
	if(od)
		density = FALSE
=======
	and
/atom/movable/proc/RepelAirflowDest(n)
	have been moved to SSairflow.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

*/

/atom/movable/proc/airflow_hit(atom/A)
	airflow_speed = 0
	airflow_dest = null

/mob/airflow_hit(atom/A)
	for(var/mob/M in hearers(src))
		M.show_message("<span class='danger'>\The [src] slams into \a [A]!</span>",1,"<span class='danger'>You hear a loud slam!</span>",2)
	playsound(src.loc, 'sound/weapons/smash.ogg', 25, 1, -1)
	var/weak_amt = istype(A,/obj/item) ? A:w_class : rand(1,5) //Heheheh
	Weaken(weak_amt)
	. = ..()

/obj/airflow_hit(atom/A)
	for(var/mob/M in hearers(src))
		M.show_message("<span class='danger'>\The [src] slams into \a [A]!</span>",1,"<span class='danger'>You hear a loud slam!</span>",2)
	playsound(src.loc, 'sound/weapons/smash.ogg', 25, 1, -1)
	. = ..()

/obj/item/airflow_hit(atom/A)
	airflow_speed = 0
	airflow_dest = null

/mob/living/carbon/human/airflow_hit(atom/A)
//	for(var/mob/M in hearers(src))
//		M.show_message("<span class='danger'>[src] slams into [A]!</span>",1,"<span class='danger'>You hear a loud slam!</span>",2)
	playsound(src.loc, 'sound/weapons/punch1.ogg', 25, 1, -1)
	if (prob(33))
		loc:add_blood(src)
		bloody_body(src)
	var/b_loss = airflow_speed * vsc.airflow_damage

<<<<<<< HEAD
	damage_through_armor(b_loss/3, BRUTE, BP_HEAD, ARMOR_MELEE, 0, "Airflow")

	damage_through_armor(b_loss/3, BRUTE, BP_CHEST, ARMOR_MELEE, 0, "Airflow")

	damage_through_armor(b_loss/3, BRUTE, BP_GROIN, ARMOR_MELEE, 0, "Airflow")
=======
	apply_damage(b_loss/3, BRUTE, BP_HEAD, used_weapon = "Airflow")
	apply_damage(b_loss/3, BRUTE, BP_CHEST, used_weapon = "Airflow")
	apply_damage(b_loss/3, BRUTE, BP_GROIN, used_weapon = "Airflow")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if(airflow_speed > 10)
		Paralyse(round(airflow_speed * vsc.airflow_stun))
		Stun(paralysis + 3)
	else
		Stun(round(airflow_speed * vsc.airflow_stun/2))
	. = ..()

/zone/proc/movables(list/origins)
	. = list()
	if (!origins?.len)
		return

	var/static/list/movables_tcache = typecacheof(list(/obj/effect, /mob/abstract))

	var/atom/movable/AM
	for (var/testing_turf in contents)
		CHECK_TICK
		for (var/am in testing_turf)
			AM = am
			CHECK_TICK
			if (AM.simulated && !AM.anchored && !movables_tcache[AM.type])
				for (var/source_turf in origins)
					if (get_dist(testing_turf, source_turf) <= EDGE_KNOCKDOWN_MAX_DISTANCE)
						.[AM] = TRUE
						break

					CHECK_TICK
