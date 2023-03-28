<<<<<<< HEAD
/obj/item/electronics/circuitboard/trade_beacon
	origin_tech = list(TECH_BLUESPACE = 2)
=======
/obj/item/circuitboard/trade_beacon
	origin_tech = list(TECH_DATA = 4, TECH_ENGINEERING = 4)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	board_type = "machine"
	req_components = list(
		/obj/item/stock_parts/subspace/crystal = 1,
	)

<<<<<<< HEAD
/obj/item/electronics/circuitboard/trade_beacon/receiving
	name = T_BOARD("receiving trade beacon")
	build_path = /obj/machinery/trade_beacon/receiving

/obj/item/electronics/circuitboard/trade_beacon/sending // Occulus Edit
	name = T_BOARD("sending trade beacon")
	build_path = /obj/machinery/trade_beacon/sending
=======
/obj/item/circuitboard/trade_beacon/receiving
	name = "receiving trade beacon"
	build_path = /obj/machinery/trade_beacon/receiving

/obj/item/circuitboard/trade_beacon/sending
	name = "sending trade beacon"
	build_path = /obj/machinery/trade_beacon/sending
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
