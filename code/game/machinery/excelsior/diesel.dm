// this generator works with reagent instead of sheets.

/obj/machinery/power/port_gen/pacman/diesel
	name = "diesel generator"
	icon = 'icons/obj/machines/excelsior/generator.dmi'
	icon_state = "base"
<<<<<<< HEAD
	circuit = /obj/item/electronics/circuitboard/diesel
=======
	circuit = /obj/item/circuitboard/diesel
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	max_fuel_volume = 300
	power_gen = 16000 // produces 20% less watts output per power level setting.
	time_per_fuel_unit = 12

	reagent_flags = OPENCONTAINER
	use_reagents_as_fuel = TRUE

<<<<<<< HEAD
/obj/machinery/power/port_gen/pacman/diesel/on_update_icon()
	cut_overlays()
	if(active)
		add_overlays("on")
		if(HasFuel())
			add_overlays("rotor_working")
			add_overlays("[max(round(reagents.total_volume / reagents.maximum_volume, 0.25) * 100, 25)]")
		else
			add_overlays("0")
	else
		add_overlays("off")
=======
/obj/machinery/power/port_gen/pacman/diesel/update_icon()
	cut_overlays()
	if(active)
		add_overlay("on")
		if(HasFuel())
			add_overlay("rotor_working")
			add_overlay("[max(round(reagents.total_volume / reagents.maximum_volume, 0.25) * 100, 25)]")
		else
			add_overlay("0")
	else
		add_overlay("off")

//Sticking this here because meh. -Kaz
/obj/machinery/power/port_gen/pacman/diesel/anchored
	anchored = 1

/obj/machinery/power/port_gen/pacman/mrs/anchored
	anchored = 1

/obj/machinery/power/port_gen/pacman/super/anchored
	anchored = 1

/obj/machinery/power/port_gen/pacman/anchored
	anchored = 1

/obj/machinery/power/port_gen/pacman/scrap/anchored
	anchored = 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
