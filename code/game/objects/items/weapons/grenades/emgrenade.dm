/obj/item/grenade/empgrenade
<<<<<<< HEAD
	name = "FS EMPG \"Frye\""
=======
	name = "HS EMP grenade \"Frye\""
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	desc = "EMP grenade, designed to disable electronics, augmentations and energy weapons."
	icon_state = "emp"
	item_state = "empgrenade"
	origin_tech = list(TECH_MATERIAL = 2, TECH_MAGNET = 3)

/obj/item/grenade/empgrenade/prime()
	..()
	if(empulse(src, 4, 10))
		icon_state = "emp_off"
		desc = "[initial(desc)] It has already been used."
	return

/obj/item/grenade/empgrenade/low_yield
<<<<<<< HEAD
	name = "FS EMPG \"Frye\" - C"
	desc = "A weaker variant of the \"Frye\" emp grenade, with lesser radius."
=======
	name = "HS EMP grenade \"Power Zapper\" - C"
	desc = "A weaker variant of the \"Power Zapper\" emp grenade, with lesser radius."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "lyemp"
	item_state = "empgrenade"
	origin_tech = list(TECH_MATERIAL = 2, TECH_MAGNET = 3)

<<<<<<< HEAD
/obj/item/grenade/empgrenade/low_yield/prime()
	..()
=======
/obj/item/grenade/empgrenade/low_yield/prime() // Inheritance is a fuck . this made low yields as effective as normal.
	var/turf/T = get_turf(src)
	if(T)
		T.hotspot_expose(700,125)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(empulse(src, 4, 1))
		icon_state = "emp_off"
		desc = "[initial(desc)] It has already been used."
	return
