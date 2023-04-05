/obj/machinery/bluespacerelay
<<<<<<< HEAD
	name = "Emergency bluespace Relay"
=======
	name = "Emergency Bluespace Relay"
>>>>>>> parent of ffa6f9f889 (gigantic)
	desc = "This sends messages through bluespace! Wow!"
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "bspacerelay"

	anchored = TRUE
	density = TRUE
	use_power = IDLE_POWER_USE
	var/on = TRUE

	idle_power_usage = 15000
	active_power_usage = 15000

/obj/machinery/bluespacerelay/process()

	update_power()

	update_icon()


/obj/machinery/bluespacerelay/on_update_icon()
	if(on)
		icon_state = initial(icon_state)
	else
		icon_state = "[initial(icon_state)]_off"

/obj/machinery/bluespacerelay/proc/update_power()

	if(stat & (BROKEN|NOPOWER|EMPED))
		on = FALSE
	else
		on = TRUE

