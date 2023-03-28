/obj/machinery/bluespacerelay
	name = "emergency bluespace relay"
	desc = "This sends messages through bluespace! Wow!"
	icon = 'icons/obj/machines/telecomms.dmi'
	icon_state = "bspacerelay"

<<<<<<< HEAD
	anchored = TRUE
	density = TRUE
	use_power = IDLE_POWER_USE
	circuit = /obj/item/electronics/circuitboard/bluespacerelay
	var/on = TRUE
=======
	anchored = 1
	density = 1
	use_power = IDLE_POWER_USE
	circuit = /obj/item/circuitboard/bluespacerelay
	var/on = 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	idle_power_usage = 15000
	active_power_usage = 15000

/obj/machinery/bluespacerelay/Process()

	update_power()

	update_icon()


<<<<<<< HEAD
/obj/machinery/bluespacerelay/on_update_icon()
=======
/obj/machinery/bluespacerelay/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(on && (icon_state != initial(icon_state)))
		icon_state = initial(icon_state)
	else if(icon_state != "[initial(icon_state)]_off")
		icon_state = "[initial(icon_state)]_off"

/obj/machinery/bluespacerelay/proc/update_power()

	if(stat & (BROKEN|NOPOWER|EMPED))
		on = FALSE
	else
		on = TRUE

/obj/machinery/bluespacerelay/attackby(var/obj/item/I, var/mob/user as mob)

	if(default_deconstruction(I, user))
		return

	if(default_part_replacement(I, user))
		return

	..()