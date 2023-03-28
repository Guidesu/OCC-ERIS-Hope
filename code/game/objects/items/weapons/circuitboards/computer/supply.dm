<<<<<<< HEAD
#ifndef T_BOARD
#error T_BOARD macro is not defined but we need it!
#endif

/obj/item/electronics/circuitboard/supplycomp
	name = T_BOARD("supply control console")
=======
/obj/item/circuitboard/supplycomp
	build_name = "supply control console"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	build_path = /obj/machinery/computer/supplycomp
	origin_tech = list(TECH_DATA = 3)
	var/contraband_enabled = 0

<<<<<<< HEAD
/obj/item/electronics/circuitboard/supplycomp/construct(var/obj/machinery/computer/supplycomp/SC)
	if (..(SC))
		SC.can_order_contraband = contraband_enabled

/obj/item/electronics/circuitboard/supplycomp/deconstruct(var/obj/machinery/computer/supplycomp/SC)
	if (..(SC))
		contraband_enabled = SC.can_order_contraband

/obj/item/electronics/circuitboard/supplycomp/attackby(obj/item/I as obj, mob/user as mob)
=======
/obj/item/circuitboard/ordercomp
	build_name = "supply ordering console"
	build_path = /obj/machinery/computer/supplycomp/order
	origin_tech = list(TECH_DATA = 2)

/obj/item/circuitboard/supplycomp/construct(var/obj/machinery/computer/supplycomp/SC)
	if (..(SC))
		SC.can_order_contraband = contraband_enabled

/obj/item/circuitboard/supplycomp/deconstruct(var/obj/machinery/computer/supplycomp/SC)
	if (..(SC))
		contraband_enabled = SC.can_order_contraband

/obj/item/circuitboard/supplycomp/attackby(obj/item/I as obj, mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(istype(I,/obj/item/tool/multitool))
		var/catastasis = src.contraband_enabled
		var/opposite_catastasis
		if(catastasis)
			opposite_catastasis = "STANDARD"
			catastasis = "BROAD"
		else
			opposite_catastasis = "BROAD"
			catastasis = "STANDARD"

		switch( alert("Current receiver spectrum is set to: [catastasis]","Multitool-Circuitboard interface","Switch to [opposite_catastasis]","Cancel") )
		//switch( alert("Current receiver spectrum is set to: " {(src.contraband_enabled) ? ("BROAD") : ("STANDARD")} , "Multitool-Circuitboard interface" , "Switch to " {(src.contraband_enabled) ? ("STANDARD") : ("BROAD")}, "Cancel") )
			if("Switch to STANDARD","Switch to BROAD")
				src.contraband_enabled = !src.contraband_enabled

			if("Cancel")
				return
			else
				to_chat(user, "DERP! BUG! Report this (And what you were doing to cause it) to Agouri")
<<<<<<< HEAD
	return
=======
	return
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
