/obj/machinery/smelter
	name = "smelter"
	icon = 'icons/obj/machines/sorter.dmi'
	icon_state = "smelter"
	density = TRUE
	anchored = TRUE
	use_power = IDLE_POWER_USE
	idle_power_usage = 10
	active_power_usage = 2000

<<<<<<< HEAD
	circuit = /obj/item/electronics/circuitboard/smelter
=======
	circuit = /obj/item/circuitboard/smelter
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	// base smelting speed - based on levels of manipulators
	var/speed = 10

	// based on levels of matter bins
	var/storage_capacity = 120

	var/list/stored_material = list()

	var/input_side = SOUTH
	var/output_side = null //by default it will be reversed input_side
	var/refuse_output_side = EAST

	var/progress = 0

	var/obj/current_item

	var/forbidden_materials = list(MATERIAL_CARDBOARD,MATERIAL_WOOD,MATERIAL_BIOMATTER)

	// base multiplier for scrap smelting, increased by better microlasers
<<<<<<< HEAD
	var/scrap_multiplier = 0.25
=======
	var/scrap_multiplier = 0.5 //50% refunds
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	//some UI stuff here
	var/show_config = FALSE
	var/show_iconfig = FALSE
	var/show_oconfig = FALSE
	var/show_rconfig = FALSE

<<<<<<< HEAD
=======
/obj/machinery/smelter/cargo_t2_parts

/obj/machinery/smelter/cargo_t2_parts/Initialize()
	. = ..()
	component_parts = list()
	component_parts += new /obj/item/stock_parts/manipulator/nano(null)
	component_parts += new /obj/item/stock_parts/scanning_module/adv(null)
	component_parts += new /obj/item/stock_parts/micro_laser/high(null)
	component_parts += new /obj/item/stock_parts/matter_bin/adv(null)
	component_parts += new /obj/item/stock_parts/matter_bin/adv(null)
	RefreshParts()
	update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/machinery/smelter/Initialize()
	. = ..()
	if(!output_side)
		output_side = reverse_direction(input_side)


/obj/machinery/smelter/Destroy()
	if(current_item)
		current_item.forceMove(get_turf(src))
	eject_all_material()
	return ..()


<<<<<<< HEAD
/obj/machinery/smelter/on_update_icon()
=======
/obj/machinery/smelter/update_icon()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	if(progress)
		icon_state = "smelter-process"
	else
		icon_state = "smelter"


/obj/machinery/smelter/Process()
	if(stat & BROKEN || stat & NOPOWER)
		progress = 0
		use_power(0)
		update_icon()
		return

	if(current_item)
		use_power(2)
		progress += speed
		progress += item_speed_bonus(current_item)
		if(progress >= 100)
			smelt()
			grab()
			use_power(1)
		update_icon()
	else
		grab()


/obj/machinery/smelter/proc/grab()
	for(var/obj/O in get_step(src, input_side))
		if(O.anchored)
			continue
		O.forceMove(src)
<<<<<<< HEAD
		if(istype(O, /obj/structure/scrap_cube))
			current_item = O
			return
=======
		//Smelting scrap cubes is a bit op
		/*if(istype(O, /obj/structure/scrap_cube))
			current_item = O
			return*/
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		var/list/materials = result_materials(O)
		if(!materials?.len || !are_valid_materials(materials))
			eject(O, refuse_output_side)
			return
		current_item = O
		return
<<<<<<< HEAD


/obj/machinery/smelter/proc/smelt()
	if(istype(current_item, /obj/structure/scrap_cube))
		smelt_scrap(current_item)
	else
		smelt_item(current_item)
=======
	for(var/mob/M in get_step(src, input_side))
		if(M.anchored) //If this somehow is a thing then bam you dont move same as above
			continue
		eject(M, refuse_output_side)

//Smelting scrap cubes is a bit op
/obj/machinery/smelter/proc/smelt()
/*	if(istype(current_item, /obj/structure/scrap_cube))
		smelt_scrap(current_item)
	else*/
	smelt_item(current_item)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	current_item = null
	progress = 0
	eject_overflow()


/obj/machinery/smelter/proc/smelt_item(obj/smelting)
	var/list/materials = result_materials(smelting)
<<<<<<< HEAD
=======

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(materials)
		if(!are_valid_materials(materials))
			eject(smelting, refuse_output_side)
			return

		for(var/material in materials)
			if(!(material in stored_material))
				stored_material[material] = 0

<<<<<<< HEAD
			var/total_material = materials[material]

			if(istype(smelting,/obj/item/stack))
				var/obj/item/stack/material/S = smelting
				total_material *= S.get_amount()

			stored_material[material] += total_material
=======
			if(istype(smelting, /obj/item/stack))
				var/obj/item/stack/stacked_item = smelting
				stored_material[material] += (materials[material] * stacked_item.amount)
			else
				stored_material[material] += (materials[material] *= scrap_multiplier)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	for(var/obj/O in smelting.contents)
		smelt_item(O)

<<<<<<< HEAD
	//Occulus Edit Start: Smelting Mobs
	for(var/mob/smeltingmob in smelting.contents)
		for(var/obj/item/W in smeltingmob)
			if(W.is_equipped())
				smeltingmob.drop_from_inventory(W)
				smelt_item(W)
		to_chat(smeltingmob, SPAN_DANGER("You feel a horrific crunch and a burning sensation as the blades and lasers in [src] tear apart your flesh!"))
		eject(smeltingmob, refuse_output_side)
		smeltingmob.take_overall_damage(80,0,used_weapon = "tiny blades")
		smeltingmob.take_overall_damage(0,20,used_weapon = "micro-laser burns")
		for(var/obj/item/organ/external/smeltingorgan in smeltingmob.contents)
			if(BP_IS_ROBOTIC(smeltingorgan))
				smeltingorgan.droplimb(TRUE, DROPLIMB_EDGE)
	//Occulus Edit End
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	qdel(smelting)

/obj/machinery/smelter/proc/smelt_scrap(obj/smelting)
	var/list/materials = result_materials(smelting)

	if(materials)
		if(!are_valid_materials(materials))
			eject(smelting, refuse_output_side)
			return

		for(var/material in materials)
			if(!(material in stored_material))
				stored_material[material] = 0

<<<<<<< HEAD
			var/total_material = materials[material]

			if(istype(smelting,/obj/item/stack))
				var/obj/item/stack/material/S = smelting
				total_material *= S.get_amount()

			total_material *= scrap_multiplier

			stored_material[material] += total_material

	for(var/obj/O in smelting.contents)
		smelt_scrap(O)
	//Occulus Edit Start: Smelting Mobs
	for(var/mob/smeltingmob in smelting.contents)
		for(var/obj/item/W in smeltingmob)
			if(W.is_equipped())
				smeltingmob.drop_from_inventory(W)
				smelt_item(W)
		to_chat(smeltingmob, SPAN_DANGER("You feel a horrific crunch and a burning sensation as the blades and lasers in [src] tear apart your flesh!"))
		eject(smeltingmob, refuse_output_side)
		smeltingmob.take_overall_damage(80,0,used_weapon = "tiny blades")
		smeltingmob.take_overall_damage(0,20,used_weapon = "micro-laser burns")
		for(var/obj/item/organ/external/smeltingorgan in smeltingmob.contents)
			if(BP_IS_ROBOTIC(smeltingorgan))
				smeltingorgan.droplimb(TRUE, DROPLIMB_EDGE)
	//Occulus Edit End
	qdel(smelting)

=======
			stored_material[material] += materials[material]

	for(var/obj/O in smelting.contents)
		smelt_scrap(O)

	qdel(smelting)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/machinery/smelter/proc/are_valid_materials(list/materials)
	for(var/material in forbidden_materials)
		if(material in materials)
			return FALSE
	return TRUE


/obj/machinery/smelter/proc/result_materials(obj/O)
<<<<<<< HEAD
	if(istype(O, /obj/item/ore))
		var/obj/item/ore/ore = O
=======
	if(istype(O, /obj/item/stack/ore))
		var/obj/item/stack/ore/ore = O
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		var/ore/data = ore_data[ore.material]
		if(data.smelts_to)
			return list(data.smelts_to = 1)
		if(data.compresses_to)
			return list(data.compresses_to = 1)
	return O.get_matter()

// Some items are significantly easier to smelt
/obj/machinery/smelter/proc/item_speed_bonus(obj/smelting)
	if(istype(smelting, /obj/item/stack))
		return 30

<<<<<<< HEAD
	if(istype(smelting, /obj/item/ore))
=======
	if(istype(smelting, /obj/item/stack/ore))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return 20

	if(istype(smelting, /obj/item/material/shard))
		return 20

	// Just one material - makes smelting easier
	if(length(result_materials(smelting)) == 1)
		return 10

	return 0

/obj/machinery/smelter/proc/eject(obj/O, output_dir)
<<<<<<< HEAD
	O.forceMove(get_step(src, output_dir))

=======
	var/turf/T = get_step(src, output_dir)
	if(T.density)
		return
	O.loc = T
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/machinery/smelter/proc/eject_material_stack(material)
	var/obj/item/stack/material/stack_type = material_stack_type(material)

	// Sanity check: avoid an infinite loop in eject_all_material when trying to drop an invalid material
	if(!stack_type)
		stored_material[material] = 0
<<<<<<< HEAD
		crash_with("Attempted to drop an invalid material: [material]")
		return
=======
		CRASH("Attempted to drop an invalid material: [material]")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	var/ejected_amount = min(initial(stack_type.max_amount), round(stored_material[material]), storage_capacity)
	var/obj/item/stack/material/S = new stack_type(src, ejected_amount)
	eject(S, output_side)
<<<<<<< HEAD
=======
	S.reset_plane_and_layer()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	stored_material[material] -= ejected_amount


/obj/machinery/smelter/proc/eject_all_material(material = null)
	if(!material)
		for(var/mat in stored_material)
			eject_all_material(mat)
	while(stored_material[material] >= 1)
		eject_material_stack(material)


/obj/machinery/smelter/proc/eject_overflow()
	for(var/material in stored_material)
		while(stored_material[material] > storage_capacity)
			eject_material_stack(material)


/obj/machinery/smelter/RefreshParts()
	..()

<<<<<<< HEAD
	var/manipulator_rating = 0
	var/manipulator_count = 0
	for(var/obj/item/stock_parts/manipulator/M in component_parts)
		manipulator_rating += M.rating
		++manipulator_count

	speed = initial(speed)*(manipulator_rating/manipulator_count)

	var/ml_rating = 0
	var/ml_count = 0
	for(var/obj/item/stock_parts/micro_laser/ML in component_parts)
		ml_rating += ML.rating
		++ml_count

	scrap_multiplier = initial(scrap_multiplier)+(((ml_rating/ml_count)-1)*0.15)//SYZYGY Edit - Boosts smelter to 25/40/55/70/85/100% effeciency based on the laser. Max reachable tier is 55% in normal play.
=======
	var/speed_rating = 0
	var/speed_parts_count = 0
	for(var/obj/item/stock_parts/manipulator/M in component_parts)
		speed_rating += M.rating
		++speed_parts_count

	for(var/obj/item/stock_parts/scanning_module/S in component_parts)
		speed_rating += S.rating
		++speed_parts_count

	speed = initial(speed)*(speed_rating/speed_parts_count)

	var/ml_rating = 0
	//var/ml_count = 0
	for(var/obj/item/stock_parts/micro_laser/ML in component_parts)
		ml_rating += ML.rating
		//++ml_count

	scrap_multiplier = initial(scrap_multiplier)+(((ml_rating)-1)*0.1) // /ml_count
	if(scrap_multiplier > 1)
		scrap_multiplier = 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	var/mb_rating = 0
	var/mb_count = 0
	for(var/obj/item/stock_parts/matter_bin/MB in component_parts)
		mb_rating += MB.rating
		++mb_count
	storage_capacity = round(initial(storage_capacity)*(mb_rating/mb_count))


/obj/machinery/smelter/attackby(var/obj/item/I, var/mob/user)
	if(default_deconstruction(I, user))
		return

	if(default_part_replacement(I, user))
		return

	..()


/obj/machinery/smelter/attack_hand(mob/user as mob)
<<<<<<< HEAD
	return ui_interact(user)


/obj/machinery/smelter/ui_data()
=======
	return nano_ui_interact(user)


/obj/machinery/smelter/nano_ui_data()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/list/data = list()
	data["currentItem"] = current_item?.name
	data["progress"] = progress

	var/list/M = list()
	for(var/mtype in stored_material)
		if(stored_material[mtype] < 1)
			continue
		M.Add(list(list("name" = mtype, "count" = stored_material[mtype])))
	data["materials"] = M
	data["capacity"] = storage_capacity
	data["sideI"] = capitalize(dir2text(input_side))
	data["sideO"] = capitalize(dir2text(output_side))
	data["sideR"] = capitalize(dir2text(refuse_output_side))
	data["show_config"] = show_config
	data["show_iconfig"] = show_iconfig
	data["show_oconfig"] = show_oconfig
	data["show_rconfig"] = show_rconfig

	return data


<<<<<<< HEAD
/obj/machinery/smelter/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = NANOUI_FOCUS)
	var/list/data = ui_data()
=======
/obj/machinery/smelter/nano_ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = NANOUI_FOCUS)
	var/list/data = nano_ui_data()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "smelter.tmpl", src.name, 600, 400)
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)


/obj/machinery/smelter/Topic(href, href_list)
	if (..()) return TRUE

	if(href_list["eject"])
		var/material = href_list["eject"]

		if(material in stored_material)
			eject_all_material(material)
		else
			eject_all_material()

	if(href_list["setsideI"])
		input_side = text2dir(href_list["setsideI"])

	if(href_list["setsideO"])
		output_side = text2dir(href_list["setsideO"])

	if(href_list["setsideR"])
		refuse_output_side = text2dir(href_list["setsideR"])

	if(href_list["toggle_config"])
		show_config = !show_config

	if(href_list["toggle_iconfig"])
		show_iconfig = !show_iconfig

	if(href_list["toggle_oconfig"])
		show_oconfig = !show_oconfig

	if(href_list["toggle_rconfig"])
		show_rconfig = !show_rconfig


	SSnano.update_uis(src)
	return FALSE
<<<<<<< HEAD
=======
	
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
