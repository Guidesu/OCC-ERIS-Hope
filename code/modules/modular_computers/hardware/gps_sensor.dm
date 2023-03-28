<<<<<<< HEAD
/obj/item/computer_hardware/gps_sensor
	name = "relay positioning receiver"
	desc = "A module that connects a computer to the ship navigation system, commonly installed in PDAs."
=======

/obj/item/computer_hardware/gps_sensor
	name = "gps sensor"
	desc = "GPS sensors are receivers with antenna that use a ship navigation system."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	power_usage = 5 //W
	icon_state = "gps_basic"
	hardware_size = 1
	matter = list(MATERIAL_STEEL = 1, MATERIAL_PLASTIC = 2)
	matter_reagents = list("silicon" = 10)
	origin_tech = list(TECH_BLUESPACE = 2)
	usage_flags = PROGRAM_ALL
	var/datum/gps_data/gps

/obj/item/computer_hardware/gps_sensor/Initialize()
	. = ..()
<<<<<<< HEAD
	var/prefix = "MPC"
	if(istype(loc, /obj/item/modular_computer/pda))
		prefix = "PDA"
	else if(istype(loc, /obj/item/modular_computer/tablet))
		prefix = "TAB"

	gps = new /datum/gps_data/modular_pc(src, new_prefix=prefix)

=======
	gps = new /datum/gps_data(src)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/computer_hardware/gps_sensor/Destroy()
	QDEL_NULL(gps)
	return ..()

/obj/item/computer_hardware/gps_sensor/examine(mob/user)
	..()
<<<<<<< HEAD
	to_chat(user, "Serial number is [gps.serial_number].")

/obj/item/computer_hardware/gps_sensor/proc/get_position_text()
	var/error_text = "<span class='average'>ERROR: Unable to reach positioning system relays.</span>"
	return gps.get_coordinates_text(default=error_text)


// Only works if installed in MPC, enabled and not too damaged
/datum/gps_data/modular_pc

/datum/gps_data/modular_pc/is_functioning()
	var/obj/item/computer_hardware/H = holder
	if(!H.holder2?.enabled || !H.check_functionality())
=======
	to_chat(user, "Serial number is [gps.serialNumber].")

/obj/item/computer_hardware/gps_sensor/check_functionality()
	if (!gps || !gps.serialNumber )
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return FALSE

<<<<<<< HEAD
	return ..()
=======
/obj/item/computer_hardware/gps_sensor/proc/get_position_text()
	var/text
	if(!check_functionality())
		text = "<span class='average'>ERROR:Unable to recive GPS location.</span>"
		return text
	var/datum/coords/C = gps.get_coords()
	var/area/A = get_area(src)
	text = "[C.x_pos]:[C.y_pos]:[C.z_pos] - [strip_improper(A.name)]"
	return text
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
