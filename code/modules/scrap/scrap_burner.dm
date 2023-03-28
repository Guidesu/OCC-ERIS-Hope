<<<<<<< HEAD
/obj/item/electronics/circuitboard/pacman/scrap
	name = T_BOARD("PACMAN-type generator")
	build_path = /obj/machinery/power/port_gen/pacman/scrap
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_PHORON = 3, TECH_ENGINEERING = 3)

/datum/design/research/circuit/pacman/scrap
	name = "PACMAN-type generator"
	build_path = /obj/item/electronics/circuitboard/pacman/scrap
	sort_string = "JBAAD"
	starts_unlocked = TRUE // i don't even know what this scrap pacman thing is supposed to be
=======
/obj/item/circuitboard/pacman/scrap
	build_name = "S.C.R.A.P PACMAN-type generator"
	build_path = /obj/machinery/power/port_gen/pacman/scrap
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_PLASMA = 3, TECH_ENGINEERING = 3)

/datum/design/research/circuit/pacman/scrap
	name = "S.C.R.A.P PACMAN-type generator"
	build_path = /obj/item/circuitboard/pacman/scrap
	starts_unlocked = TRUE //We want to be able to make these
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/machinery/power/port_gen/pacman/scrap
	name = "S.C.R.A.P.M.A.N portable generator"
	desc = "An oldfashen power generator that runs on refined scrap. Rated for 80 kW maximum safe output!"
	icon_state = "portgen1"                 // Get a spriter to do something with this perhaps.
	sheet_name = "refined scrap"
<<<<<<< HEAD
	sheet_path = /obj/item/stack/material/refined_scrap // Occ Fix
	power_gen = 5000
=======
	sheet_path = /obj/item/stack/sheet/refined_scrap
	power_gen = 10000
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	time_per_fuel_unit = 80

/obj/machinery/power/port_gen/pacman/scrap/overheat()
	explosion(loc, 1, 5, 2, 0)
