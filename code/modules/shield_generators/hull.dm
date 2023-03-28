//The main hull shield. Moving a few variables here to make it easier to branch off the parent for shortrange bubble shields and such
/obj/machinery/power/shield_generator/hull
	name = "hull shield core"
	report_integrity = TRUE

//This subtype comes pre-deployed and partially charged
/obj/machinery/power/shield_generator/hull/installed/Initialize()
	. = ..()
	anchored = toggle_tendrils(TRUE)
	current_energy = max_energy * 0.30

<<<<<<< HEAD
=======

/obj/machinery/power/shield_generator/hull/update_icon()
	..() //Parent calls cut_over-lays()
	if (tendrils_deployed)
		for (var/D in tendril_dirs)
			var/I = image(icon,"capacitor_connected", dir = D)
			add_overlay(I)

	for (var/obj/machinery/shield_conduit/S in tendrils)
		if (running)
			S.icon_state = "conduit_1"
		else
			S.icon_state = "conduit_0"



//New shield generators don't use capacitors anymore. But capacitors still looked cool
//So this proc will create dummy objects around the shield generator just for visuals and to make it suitably large
/obj/machinery/power/shield_generator/hull/proc/toggle_tendrils(var/on = null)
	//This can be called with true, false or null. to set the tendrils to deployed, retracted, or the opposite of their current state

	var/target_state
	if (!isnull(on))
		target_state = on //If a specific target was passed, we aim for that
	else
		target_state = ~tendrils_deployed //Otherwise we're toggling

	if (target_state == tendrils_deployed)
		//Don't try to do what's already done
		return


	//If we're extending them
	if (target_state == TRUE)

		//First check that we have space to deploy
		for (var/D in tendril_dirs)
			var/turf/T = get_step(src, D)
			if (!turf_clear(T))
				visible_message(SPAN_DANGER("The [src] buzzes an insistent warning as it lacks the space to deploy"))
				playsound(src.loc, "/sound/machines/buzz-two", 100, 1, 5)
				tendrils_deployed = FALSE
				update_icon()
				return FALSE

		//Now deploy
		for (var/D in tendril_dirs)
			var/turf/T = get_step(src, D)
			var/obj/machinery/shield_conduit/SC = new(T)
			tendrils.Add(SC)
			SC.face_atom(src)
			SC.anchored = TRUE

		tendrils_deployed = TRUE
		update_icon()

		return TRUE

	else if (target_state == FALSE)
		for (var/obj/machinery/shield_conduit/SC in tendrils)
			tendrils.Remove(SC)
			qdel(SC)
		tendrils_deployed = FALSE
		update_icon()

		return FALSE

/obj/machinery/power/shield_generator/hull/Process()
	if (anchored)
		return ..()
	else
		return

/obj/machinery/power/shield_generator/hull/Topic(href, href_list)
	if (anchored)
		return ..(href, href_list)

/obj/machinery/shield_conduit
	name = "shield conduit"
	icon = 'icons/obj/machines/shielding.dmi'
	icon_state = "conduit_0"
	desc = "A combined conduit and capacitor that transfers and stores massive amounts of energy."
	description_info = "This is purely visual. They are created and removed when you wrench/unwrench the shield generator"
	density = TRUE
	anchored = FALSE //Will be set true just after deploying
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
