<<<<<<< HEAD
//Define a macro that we can use to assemble all the circuit board names
#ifdef T_BOARD
#error T_BOARD already defined elsewhere, we can't use it.
#endif
#define T_BOARD(name)	"circuit board (" + (name) + ")"

/obj/item/electronics
	spawn_tags = SPAWN_TAG_ELECTRONICS
	rarity_value = 20
	spawn_frequency = 10
	bad_type = /obj/item/electronics

/obj/item/electronics/circuitboard
=======
/obj/item/circuitboard
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "circuit board"
	icon = 'icons/obj/module.dmi'
	icon_state = "id_mod"
	item_state = "electronic"
	origin_tech = list(TECH_DATA = 2)
	matter = list(MATERIAL_PLASTIC = 2, MATERIAL_STEEL = 2)
	matter_reagents = list("silicon" = 10)
	density = FALSE
	anchored = FALSE
	w_class = ITEM_SIZE_SMALL
	flags = CONDUCT
	force = WEAPON_FORCE_HARMLESS
	throwforce = WEAPON_FORCE_HARMLESS
	throw_speed = 3
	throw_range = 15
	bad_type = /obj/item/electronics/circuitboard

<<<<<<< HEAD
	var/build_path
=======
	price_tag = 50		// Inepxensive to produce

	var/build_name = null
	var/build_path = null
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/frame_type = FRAME_DEFAULT
	var/board_type = "computer"
	var/list/req_components

/obj/item/circuitboard/New() //Using this to automate names on each board.
	..()
	if(build_name && build_name != null) //This check here is only because not all boards use automated names, apparently.
		name = "[build_name] board"

//Called when the circuitboard is used to contruct a new machine.
<<<<<<< HEAD
/obj/item/electronics/circuitboard/proc/construct(obj/machinery/M)
=======
/obj/item/circuitboard/proc/construct(var/obj/machinery/M)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (istype(M, build_path))
		return TRUE
	return FALSE

//Called when a computer is deconstructed to produce a circuitboard.
//Only used by computers, as other machines store their circuitboard instance.
<<<<<<< HEAD
/obj/item/electronics/circuitboard/proc/deconstruct(obj/machinery/M)
=======
/obj/item/circuitboard/proc/deconstruct(var/obj/machinery/M)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if (istype(M, build_path))
		return TRUE
	return FALSE

<<<<<<< HEAD
/obj/item/electronics/circuitboard/examine(user, distance)
=======
/obj/item/circuitboard/examine(user, distance)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	. = ..()
	// gets the required components and displays it in a list to the user when examined.
	if(length(req_components))
		var/list/listed_components = list()
		for(var/requirement in req_components)
			var/atom/placeholder = requirement
			if(!ispath(placeholder))
				continue
			listed_components += list("[req_components[placeholder]] [initial(placeholder.name)]")
<<<<<<< HEAD
		to_chat(user, SPAN_NOTICE("Required components: [english_list(listed_components)]."))
=======
		to_chat(user, SPAN_NOTICE("Required components: [english_list(listed_components)]."))

/obj/item/circuitboard/get_item_cost(export)
	. = ..()
	for(var/atom/movable/i in req_components)
		if(ispath(i))
			. += SStrade.get_new_cost(i) * log(10, price_tag / 2)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
