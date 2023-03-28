/obj/item/computer_hardware/scanner/price
	name = "export scanner module"
<<<<<<< HEAD
	desc = "A module used to check objects against Commercial database. Uses NTNet to connect to database."
	var/obj/machinery/computer/supplycomp/cargo_console = null

/obj/item/computer_hardware/scanner/price/can_use_scanner(user, target, proximity)
	if(!istype(cargo_console))
		to_chat(user, SPAN_WARNING("You must link [src] to a cargo console first!"))
		return
	return ..()

/obj/item/computer_hardware/scanner/price/do_on_afterattack(mob/user, atom/target, proximity)
	if(istype(target, /obj/machinery/computer/supplycomp) && proximity)
		var/obj/machinery/computer/supplycomp/C = target
		if(!C.requestonly)
			cargo_console = C
			to_chat(user, SPAN_NOTICE("Scanner linked to [C]."))
			return
=======
	desc = "A module used to check objects against commercial database. Uses NTNet to connect to database."

/obj/item/computer_hardware/scanner/price/can_use_scanner(user, target, proximity)
	return ..()

/obj/item/computer_hardware/scanner/price/do_on_afterattack(mob/user, atom/target, proximity)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!can_use_scanner(user, target, proximity))
		return
	if (!scan_power_use())
		return

	var/dat = price_scan_results(target)
	if(dat && driver && driver.using_scanner)
		if(!driver.data_buffer)
			driver.data_buffer = dat
		else
			driver.data_buffer += "<br>[dat]"
		if(!SSnano.update_uis(driver.NM))
			holder2.run_program(driver.filename)
<<<<<<< HEAD
			driver.NM.ui_interact(user)
=======
			driver.NM.nano_ui_interact(user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
