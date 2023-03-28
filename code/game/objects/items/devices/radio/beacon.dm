/obj/item/device/radio/beacon
	name = "tracking beacon"
	desc = "A beacon used by a teleporter."
	icon_state = "beacon"
	item_state = "signaler"
	origin_tech = list(TECH_BLUESPACE = 1)
<<<<<<< HEAD
	matter = list(MATERIAL_STEEL = 3, MATERIAL_GLASS = 1)
	var/datum/gps_data/gps

/obj/item/device/radio/beacon/Initialize()
	. = ..()
	gps = new /datum/gps_data(src, "TBC")

/obj/item/device/radio/beacon/Destroy()
	QDEL_NULL(gps)
	return ..()
=======
	matter = list (MATERIAL_STEEL = 3, MATERIAL_GLASS = 1)
	preloaded_reagents = list("silicon" = 20, "copper" = 5, "plasticide" = 12)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/device/radio/beacon/hear_talk()
	return

/obj/item/device/radio/beacon/send_hear()
	return null


/obj/item/device/radio/beacon/bacon //Probably a better way of doing this, I'm lazy.
	proc/digest_delay()
		spawn(600)
			qdel(src)
