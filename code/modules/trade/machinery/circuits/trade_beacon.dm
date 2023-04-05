/obj/item/electronics/circuitboard/trade_beacon
<<<<<<< HEAD
	origin_tech = list(TECH_bluespace = 2)
=======
	origin_tech = list(TECH_BLUESPACE = 2)
>>>>>>> parent of ffa6f9f889 (gigantic)
	board_type = "machine"
	req_components = list(
		/obj/item/stock_parts/subspace/crystal = 1,
	)

/obj/item/electronics/circuitboard/trade_beacon/receiving
	name = T_BOARD("receiving trade beacon")
	build_path = /obj/machinery/trade_beacon/receiving

/obj/item/electronics/circuitboard/trade_beacon/sending // Occulus Edit
	name = T_BOARD("sending trade beacon")
	build_path = /obj/machinery/trade_beacon/sending
