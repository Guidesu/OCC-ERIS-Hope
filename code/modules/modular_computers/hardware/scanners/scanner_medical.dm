/obj/item/computer_hardware/scanner/medical
	name = "medical scanner module"
	desc = "A medical scanner module. It can be used to scan patients and display medical information."

/obj/item/computer_hardware/scanner/medical/do_on_afterattack(mob/user, atom/target, proximity)
	if(!can_use_scanner(user, target, proximity))
		return
	if (!scan_power_use())
		return
	var/dat = medical_scan_action(target, user, holder2, 1)
	if(dat && driver && driver.using_scanner)
		driver.data_buffer = dat
		if(!SSnano.update_uis(driver.NM))
			holder2.run_program(driver.filename)
<<<<<<< HEAD
			driver.NM.ui_interact(user)
=======
			driver.NM.nano_ui_interact(user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
