<<<<<<< HEAD
/obj/item/electronics/circuitboard/bssilk_cons
	name = T_BOARD("bluespace snare console")
	origin_tech = list(TECH_DATA = 4, TECH_BLUESPACE = 6)
	build_path = /obj/machinery/computer/bssilk_control

/obj/item/electronics/circuitboard/bssilk_hub
	name = T_BOARD("bluespace snare hub")
=======
/obj/item/circuitboard/bssilk_cons
	name = "bluespace snare console"
	build_name = ""
	origin_tech = list(TECH_DATA = 4, TECH_BLUESPACE = 6)
	build_path = /obj/machinery/computer/bssilk_control
	price_tag = 150

/obj/item/circuitboard/bssilk_hub
	name = "bluespace snare hub"
	build_name = ""
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "mainboard"
	origin_tech = list(TECH_DATA = 4, TECH_BLUESPACE = 6)
	build_path = /obj/machinery/bssilk_hub
	req_components = list(
		/obj/item/bluespace_crystal = 2,
		/obj/item/stock_parts/capacitor/super = 2,
		/obj/item/stack/cable_coil = 1,
		/obj/item/stock_parts/subspace/crystal = 1
	)
<<<<<<< HEAD
	board_type = "machine"
=======
	board_type = "machine"
	price_tag = 150
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
