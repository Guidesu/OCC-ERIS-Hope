<<<<<<< HEAD
#ifndef T_BOARD
#error T_BOARD macro is not defined but we need it!
#endif

/obj/item/electronics/circuitboard/holodeckcontrol
	name = T_BOARD("holodeck control console")
=======
/obj/item/circuitboard/holodeckcontrol
	build_name = "holodeck control console"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/computer/HolodeckControl
	origin_tech = list(TECH_DATA = 2, TECH_BLUESPACE = 2)
	var/last_to_emag
	var/linkedholodeck_area
	var/list/supported_programs
	var/list/restricted_programs

<<<<<<< HEAD
/obj/item/electronics/circuitboard/holodeckcontrol/construct(var/obj/machinery/computer/HolodeckControl/HC)
=======
/obj/item/circuitboard/holodeckcontrol/construct(var/obj/machinery/computer/HolodeckControl/HC)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (..(HC))
		HC.supported_programs	= supported_programs.Copy()
		HC.restricted_programs	= restricted_programs.Copy()
		if(linkedholodeck_area)
			HC.linkedholodeck	= locate(linkedholodeck_area)
		if(last_to_emag)
			HC.last_to_emag		= last_to_emag
			HC.emagged 			= 1
			HC.safety_disabled	= 1

<<<<<<< HEAD
/obj/item/electronics/circuitboard/holodeckcontrol/deconstruct(var/obj/machinery/computer/HolodeckControl/HC)
=======
/obj/item/circuitboard/holodeckcontrol/deconstruct(var/obj/machinery/computer/HolodeckControl/HC)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (..(HC))
		linkedholodeck_area		= HC.linkedholodeck_area
		supported_programs		= HC.supported_programs.Copy()
		restricted_programs 	= HC.restricted_programs.Copy()
		last_to_emag			= HC.last_to_emag
		HC.emergencyShutdown()
