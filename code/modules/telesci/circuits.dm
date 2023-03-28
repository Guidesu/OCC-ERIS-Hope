<<<<<<< HEAD
//OCCULUS EDIT: Basically the whole file, revamping telescience.
/obj/item/electronics/circuitboard/telesci_pad
	name = T_BOARD("advanced telepad")
	build_path = /obj/machinery/telesci_pad
	board_type = "machine"
	origin_tech = list(TECH_MATERIAL = 3, TECH_BLUESPACE = 4)

	req_components = list(
		/obj/item/bluespace_crystal = 2,
		/obj/item/stock_parts/capacitor = 1
	)

/obj/item/electronics/circuitboard/telesci_console
	name = T_BOARD("Telescience Console")
	build_path = /obj/machinery/computer/telesci_console
	origin_tech = list(TECH_DATA = 3, TECH_BLUESPACE = 2)

/obj/item/electronics/circuitboard/telesci_relay
	name = T_BOARD("telepad relay")
	build_path = /obj/machinery/telesci_relay
	board_type = "machine"
=======
/obj/item/circuitboard/telesci_pad
	build_name = "advanced telepad"
	build_path = /obj/machinery/telesci_pad
	board_type = "machine"
	origin_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 3, TECH_MATERIAL = 3, TECH_BLUESPACE = 4)

	req_components = list(
		/obj/item/bluespace_crystal/artificial = 2,
		/obj/item/stock_parts/capacitor = 1
	)

/obj/item/circuitboard/telesci_console
	build_name = "Telescience Console"
	build_path = /obj/machinery/computer/telesci_console
	origin_tech = list(TECH_DATA = 3, TECH_BLUESPACE = 2)

/obj/item/circuitboard/telesci_relay
	build_name = "telepad relay"
	board_type = "machine"
	build_path = /obj/machinery/telesci_relay
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	origin_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 3, TECH_BLUESPACE = 3)

	req_components = list(
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/micro_laser = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/tele_inhibitor
	name = T_BOARD("bluespace inhibitor")
	build_path = /obj/machinery/telesci_inhibitor
=======
/obj/item/circuitboard/tele_inhibitor
	build_name = "bluespace inhibitor"
	build_path = /obj/machinery/telesci_inhibitor
	board_type = "machine"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	origin_tech = list(TECH_MATERIAL = 2, TECH_POWER = 2, TECH_BLUESPACE = 2)

	req_components = list(
		/obj/item/stock_parts/subspace/ansible = 2
	)

<<<<<<< HEAD
/datum/design/research/circuit/telesci/relay
	name = "TeleSci Relay"
	build_path = /obj/item/electronics/circuitboard/telesci_relay
	sort_string = "VAAF"
	category = CAT_BLUE

/datum/design/research/circuit/telesci/inhibit
	name = "Teleporter Inhibitor"
	build_path = /obj/item/electronics/circuitboard/tele_inhibitor
	sort_string = "VAAQ"
	category = CAT_BLUE
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
