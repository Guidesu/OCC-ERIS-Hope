<<<<<<< HEAD
// This whole file is an Occulus Edit

/obj/item/emp_mine
	name = "OS Type - 183 \"Hei'an\""
	desc = "Self-rechargeable EMP mine. It still works."
=======
/obj/item/emp_mine
	name = "OS Type - 183 \"Hei'an\""
	desc = "Self-rechargeable Chinese EMP mine. It still works, despite all the age, known for its weak lithium core components making it susceptible to taking bullet to destory them form afar."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/weapons.dmi'
	icon_state = "empmine0"
	w_class = ITEM_SIZE_BULKY

	var/armed = FALSE
<<<<<<< HEAD

	var/cooldown = 60 SECONDS

	var/emp_range = 5

=======
	var/cooldown = 180 SECONDS
	var/trigger_range = 1
	var/emp_range = 3
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/cooldown_timer = 0

/obj/item/emp_mine/bullet_act(var/obj/item/projectile/Proj)
	if(prob(90) && (!(Proj.testing)))
		explode()

<<<<<<< HEAD
/obj/item/emp_mine/proc/arm()
=======
/obj/item/emp_mine/proc/explode()
	var/turf/T = get_turf(src)
	explosion(T,-1,0,3,7)
	if(src)
		qdel(src)

/obj/item/emp_mine/proc/arm()
	if(armed)
		return

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	armed = TRUE
	//START_PROCESSING(SSobj, src)
	update_icon()

<<<<<<< HEAD

/obj/item/emp_mine/proc/disarm()
=======
/obj/item/emp_mine/proc/disarm()
	if(!armed)
		return

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	armed = FALSE
	//STOP_PROCESSING(SSobj, src)
	update_icon()

<<<<<<< HEAD

/obj/item/emp_mine/on_update_icon()
	icon_state = "empmine[armed ? "1":"0"]"


/obj/item/emp_mine/Crossed(mob/AM)
	if(world.time - cooldown_timer > cooldown && isliving(AM) && armed == TRUE)
		cooldown_timer = world.time
		empulse(get_turf(src), emp_range, emp_range, TRUE)

=======
/obj/item/emp_mine/update_icon()
	icon_state = "empmine[armed ? "1":"0"]"

/obj/item/emp_mine/Process()
	if(world.time - cooldown_timer > cooldown)
		var/turf/T = get_turf(src)
		if(!T)
			return

		for(var/mob/M in range(trigger_range, T))
			if(istype(M,/mob/living/carbon/human) || istype(M, /mob/living/silicon) || istype(M, /mob/living/simple_animal/hostile/poporavtomat))
				cooldown_timer = world.time
				empulse(T, emp_range, emp_range, TRUE)
				break

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/emp_mine/attack_self(mob/user as mob)
	src.add_fingerprint(user)
	if(armed)
		disarm()
<<<<<<< HEAD
=======
		log_and_message_admins(" - EMP Mine disarmed at \the [jumplink(src)] X:[src.x] Y:[src.y] Z:[src.z] User:[user]") //So we can go to it
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		to_chat(user, SPAN_NOTICE("You disarm \the [src]"))
	else
		cooldown_timer = world.time - cooldown + 100
		arm()
<<<<<<< HEAD
		to_chat(user, SPAN_WARNING("You arm \the [src]! You have 10 seconds to run away."))

/obj/item/emp_mine/attackby(obj/item/I, mob/user)
	if(QUALITY_PULSING in I.tool_qualities)

		if (armed)
			user.visible_message(
			SPAN_DANGER("[user] starts to carefully disarm \the [src]."),
			SPAN_DANGER("You begin to carefully disarm \the [src].")
			)
		if(I.use_tool(user, src, WORKTIME_NORMAL, QUALITY_PULSING, FAILCHANCE_HARD,  required_stat = STAT_COG)) //disarming a mine with a multitool should be for smarties
			user.visible_message(
				SPAN_DANGER("[user] has disarmed \the [src]."),
				SPAN_DANGER("You have disarmed \the [src]!")
				)
			disarm()
		else
			if(prob(5))
				user.visible_message(
					SPAN_DANGER("the [src] trggers!"),
					SPAN_DANGER("You fail to disarm the [src] and it triggers!"))
		return
	else
		if (armed)   //now touching it with stuff that don't pulse will also be a bad idea
			user.visible_message(
				SPAN_DANGER("the [src] is hit with [I] and it triggers!"),
				SPAN_DANGER("You hit the [src] with [I] and it triggers!"))
			if(world.time - cooldown_timer > cooldown)
				cooldown_timer = world.time
				empulse(get_turf(src), emp_range, emp_range, TRUE)
		return

/obj/item/emp_mine/attack_hand(mob/user as mob)
	if (armed)
		user.visible_message(
				SPAN_DANGER("[user] extends its hand to reach the [src]!"),
				SPAN_DANGER("you extend your arms to pick it up, knowing that it will likely trigger when you touch it!")
				)
		if (do_after(user, 5))
			user.visible_message(
				SPAN_DANGER("[user] attempts to pick up the [src] only to hear a beep as it triggers in thier hands!"),//Occulus Edit: Russians
				SPAN_DANGER("you attempt to pick up the [src] only to hear a beep as it triggers in your hands!")//Occulus Edit: Russian grammar
				)
			empulse(get_turf(src), emp_range, emp_range, TRUE)
			disarm()
			return
	.=..()
=======
		log_and_message_admins(" - EMP Mine armed at \the [jumplink(src)] X:[src.x] Y:[src.y] Z:[src.z] User:[user]") //So we can go to it
		to_chat(user, SPAN_WARNING("You arm \the [src]! You have 10 seconds to run away."))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

//Pre-armed mine
/obj/item/emp_mine/armed/New()
	..()
	arm()

//End Occulus Edit