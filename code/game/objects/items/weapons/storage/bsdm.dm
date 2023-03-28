/obj/item/storage/bsdm
	name = "\improper BSDM unit"
	desc = "A Blue Space Direct Mail unit, commonly used by corporate infiltrators. \
			Once activated, teleports a small distance away into space and sends a signal for a recovery probe to pick it up."
	icon_state = "bsdm"
	item_state = "bsdm"
	max_storage_space = DEFAULT_BULKY_STORAGE
	max_w_class = ITEM_SIZE_BULKY
<<<<<<< HEAD
	origin_tech = list(TECH_BLUESPACE = 3, TECH_COVERT = 3)
	matter = list(MATERIAL_STEEL = 6)
	spawn_blacklisted = TRUE
=======
	origin_tech = list(TECH_BLUESPACE = 3, TECH_ILLEGAL = 3)
	matter = list(MATERIAL_STEEL = 6)
	level = BELOW_PLATING_LEVEL //We can hide under tiles :D
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/del_on_send = TRUE
	var/datum/mind/owner

/obj/item/storage/bsdm/proc/can_launch()
<<<<<<< HEAD
	return owner && (locate(/area/space) in view(get_turf(src)))

/obj/item/storage/bsdm/attack_self(mob/user)
	ui_interact(user)

/obj/item/storage/bsdm/interact(mob/user)
	ui_interact(user)

/obj/item/storage/bsdm/ui_data(mob/user)
=======
	return owner && (locate(/area/nadezhda/outside/lakeside) in view(get_turf(src)))

/obj/item/storage/bsdm/attack_self(mob/user)
	nano_ui_interact(user)

/obj/item/storage/bsdm/interact(mob/user)
	nano_ui_interact(user)

/obj/item/storage/bsdm/nano_ui_data(mob/user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/list/list/data = list()

	data["can_launch"] = can_launch()
	data["owner"] = owner ? owner.name : "no one"
	data["is_owner"] = owner && (owner == user.mind)
	data["contracts"] = list()

	for(var/datum/antag_contract/item/C in GLOB.various_antag_contracts)
		if(C.completed || !C.check(src))
			continue
		data["contracts"].Add(list(list(
			"name" = C.name,
			"desc" = C.desc,
			"reward" = C.reward
		)))

	return data

<<<<<<< HEAD
/obj/item/storage/bsdm/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = NANOUI_FOCUS)
	var/list/data = ui_data(user)
=======
/obj/item/storage/bsdm/nano_ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = NANOUI_FOCUS)
	var/list/data = nano_ui_data(user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if(!ui)
		ui = new(user, src, ui_key, "bsdm.tmpl", "[name]", 400, 430)
		ui.set_initial_data(data)
		ui.open()

/obj/item/storage/bsdm/Topic(href, href_list)
	if(..())
		return 1

	if(href_list["launch"])
		if(!can_launch())
			return

<<<<<<< HEAD
=======
		playsound(get_turf(src), 'sound/machines/defib_zap.ogg', 50, 1, -1)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		for(var/datum/antag_contract/item/C in GLOB.various_antag_contracts)
			if(C.completed)
				continue
			C.on_container(src)
<<<<<<< HEAD
		QDEL_CLEAR_LIST(contents)
=======
		QDEL_LIST(contents)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if(del_on_send)
			if(ismob(loc))
				to_chat(loc, SPAN_NOTICE("[src] flickers away in a brief flash of light."))
			qdel(src)

	else if(href_list["owner"])
		owner = usr.mind
		. = 1

	if(.)
		SSnano.update_uis(src)

/obj/item/storage/bsdm/permanent
	del_on_send = FALSE

/obj/item/storage/bsdm/permanent/attackby(obj/item/W as obj, mob/user as mob)
	..()

	if(istype(W, /obj/item/reagent_containers/syringe/blitzshell))
		var/obj/item/reagent_containers/syringe/blitzshell/syringe_blitzshell = W
		if(syringe_blitzshell.reagents.total_volume)
			var/trans
			var/obj/item/reagent_containers/glass/beaker/vial/vial_blitzshell = new /obj/item/reagent_containers/glass/beaker/vial(src)
			trans = syringe_blitzshell.reagents.trans_to(vial_blitzshell, syringe_blitzshell.reagents.total_volume)
			to_chat(user ,SPAN_NOTICE("You transfer [trans] units of the solution from [syringe_blitzshell] to [src]"))
			return handle_item_insertion(vial_blitzshell)
