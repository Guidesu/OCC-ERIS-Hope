/obj/machinery/computer
	name = "computer"
	icon = 'icons/obj/computer.dmi'
	icon_state = "computer"
<<<<<<< HEAD
	density = TRUE
	anchored = TRUE
=======
	density = 1
	anchored = 1.0
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	use_power = IDLE_POWER_USE
	idle_power_usage = 300
	active_power_usage = 300
	var/processing = 0
	var/CheckFaceFlag = 1 //for direction check
	var/icon_keyboard = "generic_key"
	var/icon_screen = "generic"
	var/light_range_on = 1.5
	var/light_power_on = 2

/obj/machinery/computer/Initialize()
	. = ..()
	GLOB.computer_list += src
	power_change()
	update_icon()

/obj/machinery/computer/Destroy()
	GLOB.computer_list -= src
	..()

/obj/machinery/computer/Process()
	if(stat & (NOPOWER|BROKEN))
		return 0
	return 1

/obj/machinery/computer/emp_act(severity)
	if(prob(20/severity)) set_broken()
	..()


/obj/machinery/computer/ex_act(severity)
	switch(severity)
		if(1.0)
			qdel(src)
			return
		if(2.0)
			if (prob(25))
				qdel(src)
				return
			if (prob(50))
				for(var/x in verbs)
					verbs -= x
				set_broken()
		if(3.0)
			if (prob(25))
				for(var/x in verbs)
					verbs -= x
				set_broken()
		else
	return

/obj/machinery/computer/bullet_act(var/obj/item/projectile/Proj)
<<<<<<< HEAD
	if(prob(Proj.get_structure_damage()))
		if(!(stat & BROKEN))
			var/datum/effect/effect/system/smoke_spread/S = new/datum/effect/effect/system/smoke_spread()
			S.set_up(3, 0, src)
			S.start()
		set_broken()
	..()

/obj/machinery/computer/on_update_icon()
=======
	if (!(Proj.testing))
		if(prob(Proj.get_structure_damage()))
			if(!(stat & BROKEN))
				var/datum/effect/effect/system/smoke_spread/S = new/datum/effect/effect/system/smoke_spread()
				S.set_up(3, 0, src)
				S.start()
			set_broken()
	..()

/obj/machinery/computer/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	cut_overlays()
	if(stat & NOPOWER)
		set_light(0)
		if(icon_keyboard)
<<<<<<< HEAD
			add_overlays(image(icon,"[icon_keyboard]_off"))
=======
			add_overlay(image(icon,"[icon_keyboard]_off"))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		update_openspace()
		return
	else
		set_light(light_range_on, light_power_on)

	if(stat & BROKEN)
<<<<<<< HEAD
		add_overlays(image(icon,"[icon_state]_broken"))
	else
		add_overlays(image(icon,icon_screen))

	if(icon_keyboard)
		add_overlays(image(icon, icon_keyboard))
=======
		add_overlay(image(icon,"[icon_state]_broken"))
	else
		add_overlay(image(icon,icon_screen))

	if(icon_keyboard)
		add_overlay(image(icon, icon_keyboard))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	update_openspace()

/obj/machinery/computer/power_change()
	..()
	update_icon()
	if(stat & NOPOWER)
		set_light(0)
	else
		set_light(light_range_on, light_power_on)


/obj/machinery/computer/proc/set_broken()
	stat |= BROKEN
	update_icon()

/obj/machinery/computer/proc/decode(text)
	// Adds line breaks
	text = replacetext(text, "\n", "<BR>")
	return text

/obj/machinery/computer/attackby(obj/item/I, mob/user)
	if(QUALITY_SCREW_DRIVING in I.tool_qualities)
		if(I.use_tool(user, src, WORKTIME_NORMAL, QUALITY_SCREW_DRIVING, FAILCHANCE_NORMAL, required_stat = STAT_MEC))
			var/obj/structure/computerframe/A = new /obj/structure/computerframe(src.loc)
			A.dir = src.dir
			A.circuit = circuit
			A.anchored = TRUE
			for (var/obj/C in src)
				C.loc = src.loc
			if (src.stat & BROKEN)
				to_chat(user, SPAN_NOTICE("The broken glass falls out."))
				new /obj/item/material/shard(src.loc)
				A.state = 3
				A.icon_state = "3"
			else
				to_chat(user, SPAN_NOTICE("You disconnect the monitor."))
				A.state = 4
				A.icon_state = "4"
			circuit.deconstruct(src)
			qdel(src)

	else if(istype(I, /obj/item/device/spy_bug))
		user.drop_item()
		I.loc = get_turf(src)

	else
		..()

/obj/machinery/computer/Topic(href, href_list)
	if(..())
		return 1
	if (issilicon(usr) || !CheckFaceFlag || CheckFace(src,usr))
		keyboardsound(usr)
		return 0
	else
		to_chat(usr, "You need to stand in front of console's keyboard!")
		return 1

/obj/proc/keyboardsound(mob/user as mob)
	if(!issilicon(user))
		playsound(src, "keyboard", 100, 1, 0)

/obj/machinery/computer/attack_hand(mob/user as mob)//check mob direction
	if(..())
		return 1
	if(!issilicon(user))
		return 0
	if (issilicon(usr) || !CheckFaceFlag || CheckFace(src,user))
		keyboardsound(user)
		return 0
	else
		to_chat(user, "you need stay face to console")
		return 1
