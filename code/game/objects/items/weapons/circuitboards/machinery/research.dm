<<<<<<< HEAD
/obj/item/electronics/circuitboard/rdserver
	name = T_BOARD("R&D server")
=======
/obj/item/circuitboard/rdserver
	build_name = "R&D server"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/r_n_d/server
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3)
	req_components = list(
		/obj/item/stack/cable_coil = 2,
		/obj/item/stock_parts/scanning_module = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/destructive_analyzer
	name = T_BOARD("destructive analyzer")
=======
/obj/item/circuitboard/destructive_analyzer
	build_name = "destructive analyzer"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/r_n_d/destructive_analyzer
	board_type = "machine"
	origin_tech = list(TECH_MAGNET = 2, TECH_ENGINEERING = 2, TECH_DATA = 2)
	req_components = list(
		/obj/item/stock_parts/scanning_module = 1,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/micro_laser = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/autolathe
	name = T_BOARD("autolathe")
=======
/obj/item/circuitboard/autolathe
	name = "circuit board (autolathe)"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/autolathe
	board_type = "machine"
	rarity_value = 5
	origin_tech = list(TECH_ENGINEERING = 2, TECH_DATA = 2)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 3,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/console_screen = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/autolathe_disk_cloner
	name = T_BOARD("autolathe disk cloner")
=======
/obj/item/circuitboard/autolathe_industrial
	build_name = "industrial autolathe"
	build_path = /obj/machinery/autolathe/industrial
	matter = list(MATERIAL_STEEL = 6, MATERIAL_PLASTIC = 6, MATERIAL_GOLD = 2, MATERIAL_SILVER = 2)
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 4, TECH_DATA = 3)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 6,
		/obj/item/stock_parts/manipulator = 2,
		/obj/item/stock_parts/micro_laser = 2,
		/obj/item/stock_parts/console_screen = 1
	)

/obj/item/circuitboard/autolathe_greyson
	build_name = "greyson autolathe"
	build_path = /obj/machinery/autolathe/greyson
	matter = list(MATERIAL_STEEL = 6, MATERIAL_PLASTIC = 6, MATERIAL_GOLD = 2, MATERIAL_SILVER = 2, MATERIAL_PLATINUM = 4)
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 8, TECH_DATA = 6)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 6,
		/obj/item/stock_parts/manipulator = 4,
		/obj/item/stock_parts/micro_laser = 4,
		/obj/item/stock_parts/console_screen = 1
	)

/obj/item/circuitboard/autolathe_disk_cloner
	build_name = "autolathe disk cloner"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/autolathe_disk_cloner
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2, TECH_DATA = 2)
	req_components = list(
		/obj/item/stock_parts/scanning_module = 1,
		/obj/item/stock_parts/micro_laser = 2,
		/obj/item/stock_parts/console_screen = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/protolathe
	name = T_BOARD("protolathe")
=======
/obj/item/circuitboard/protolathe
	build_name = "protolathe"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/autolathe/rnd/protolathe
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2, TECH_DATA = 2)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/stock_parts/manipulator = 2
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/circuit_imprinter
	name = T_BOARD("circuit imprinter")
=======
/obj/item/circuitboard/circuit_imprinter
	build_name = "circuit imprinter"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/autolathe/rnd/imprinter
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2, TECH_DATA = 2)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/stock_parts/manipulator = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/mechfab
	name = "Circuit board (Exosuit Fabricator)"
=======
/obj/item/circuitboard/mechfab
	build_name = "Circuit board (Exosuit Fabricator)"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/autolathe/mechfab
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 3)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/stock_parts/manipulator = 2,
		/obj/item/stock_parts/micro_laser = 1,
		/obj/item/stock_parts/console_screen = 1
<<<<<<< HEAD
	)

/obj/item/electronics/circuitboard/teleporterstation
=======
	)
/* //Leaving this here for when its made into the bullet fab.
/obj/item/circuitboard/armorfabricator
	build_name = "Circuit board (Armor Fabricator)"
	build_path = /obj/machinery/autolathe/armorfabricator
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 3)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 3,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/micro_laser = 1,
		/obj/item/stock_parts/console_screen = 1
	)
*/

/obj/item/circuitboard/slime_compresser
	build_name = "Circuit board (Slime Compresser)"
	build_path = /obj/machinery/slime_compresser
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 1)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/stock_parts/manipulator = 1
	)

/obj/item/circuitboard/matter_nanoforge
	build_name = "Circuit board (Matter NanoForge)"
	build_path = /obj/machinery/matter_nanoforge
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 3)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/console_screen = 1,
		/obj/item/oddity/blackbox_nanoforge = 1,
		/obj/item/stock_parts/micro_laser = 1
	)

/obj/item/circuitboard/teleporterstation
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "Circuit board (Teleporter station board)"
	build_path = /obj/machinery/teleport/station
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2, TECH_BLUESPACE = 2)
	req_components = list(
		/obj/item/bluespace_crystal/artificial = 3,
		/obj/item/stack/cable_coil = 1,
		/obj/item/stock_parts/subspace/filter = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/teleporterhub
=======
/obj/item/circuitboard/teleporterhub
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "Circuit board (Teleporter hub board)"
	build_path = /obj/machinery/teleport/hub
	board_type = "machine"
	origin_tech = list(TECH_DATA = 2, TECH_BLUESPACE = 2)
	req_components = list(
		/obj/item/bluespace_crystal/artificial = 2,
		/obj/item/stock_parts/capacitor = 1
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/ntnet_relay
	name = "Circuit board (NTNet Quantum Relay)"
	rarity_value = 40
=======
obj/item/circuitboard/ntnet_relay
	build_name = "Circuit board (NTNet Quantum Relay)"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/ntnet_relay
	board_type = "machine"
	origin_tech = list(TECH_DATA = 4)
	req_components = list(
		/obj/item/stack/cable_coil = 15
	)
