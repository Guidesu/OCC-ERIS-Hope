#define ORE_STORING 0
#define ORE_SMELTING 1
#define ORE_COMPRESSING 2
#define ORE_ALLOYING 3

/**********************Mineral processing unit console**************************/

/obj/machinery/mineral/processing_unit_console
	name = "production machine console"
	desc = "A computer that links to the material processor"
	icon = 'icons/obj/machines/mining_machines.dmi'
	icon_state = "console"
<<<<<<< HEAD
	density = TRUE
	anchored = TRUE

=======
	density = FALSE
	anchored = TRUE
	var/obj/item/card/id/inserted_id	// Inserted ID card, for points
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/obj/machinery/mineral/processing_unit/machine = null
	var/show_all_ores = 0

/obj/machinery/mineral/processing_unit_console/laber
	name = "labor camp production machine console"

/obj/machinery/mineral/processing_unit_console/scrap_haven
	name = "scrap haven production machine console"


/obj/machinery/mineral/processing_unit_console/examine(mob/user)
	..()
	if(machine)
		to_chat(user, "<span class='info'>Current unclaimed points: [machine.points]</span>")

/obj/machinery/mineral/processing_unit_console/attackby(obj/item/W, mob/user)
	if(machine)
		if(istype(W,/obj/item/card/id))
			var/obj/item/card/id/swiping_id = W
			swiping_id.mining_points += machine.points
			to_chat(user, "<span class='info'>Added Points:[machine.points].</span>")
			to_chat(user, "<span class='info'>Points On Card:[swiping_id.mining_points].</span>")
			machine.points = 0
			return
	..()

/obj/machinery/mineral/processing_unit_console/New()
	..()
	spawn()
		src.machine = locate(/obj/machinery/mineral/processing_unit) in range(3, src)
		if (machine)
			machine.console = src
		else
			log_debug("[src] ([x],[y],[z]) can't find coresponding processing unit.")

/obj/machinery/mineral/processing_unit_console/attack_hand(mob/user)
	add_fingerprint(user)
	interact(user)

/obj/machinery/mineral/processing_unit_console/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "Processor")
		ui.open()

/obj/machinery/mineral/processing_unit_console/ui_data(mob/user)
	var/list/data = list()
	data["machine"] = !!machine
	if(!machine)
		return data
	data["materials_data"] = list()
	for(var/ore in ore_data)
		var/list/ore_list = list()
		var/ore/ore_thing = ore_data[ore]
		ore_list["name"] = ore_thing.display_name
		ore_list["id"] = ore
		ore_list["current_action"] = machine.ores_processing[ore]
		ore_list["amount"] = machine.ores_stored[ore]
		switch(machine.ores_processing[ore])
			if(ORE_STORING)
				ore_list["current_action_string"] = "Storing"
			if(ORE_SMELTING)
				ore_list["current_action_string"] = "Smelting"
			if(ORE_COMPRESSING)
				ore_list["current_action_string"] = "Compressing"
			if(ORE_ALLOYING)
				ore_list["current_action_string"] = "Alloying"
		data["materials_data"] += list(ore_list)
	data["alloy_data"] = list()
	for(var/datum/alloy/alloy in machine.alloy_data)
		var/list/alloy_list = list()
		alloy_list["name"] = alloy.name
		alloy_list["creating"] = TRUE
		data["alloy_data"] += list(alloy_list)
	data["currently_alloying"] = machine.selected_alloy
	data["running"] = machine.active
	data["sheet_rate"] = machine.sheets_per_tick
	return data

/obj/machinery/mineral/processing_unit_console/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	if(..())
		return
	if(action == "set_alloying")
		var/target_name = params["id"]
		for(var/datum/alloy/the_alloy in machine.alloy_data)
			if(target_name == the_alloy.name)
				machine.selected_alloy = the_alloy
				for(var/required in machine.selected_alloy.requires)
					machine.ores_processing[required] = ORE_ALLOYING
		return TRUE
	if(action == "set_smelting")
		var/target_material = params["id"]
		var/processing_type = params["action_type"]
		if(processing_type > ORE_ALLOYING)
			processing_type = ORE_STORING
		machine.ores_processing[target_material] = processing_type
		return TRUE
	if(action == "set_running")
		machine.active = !(machine.active)
		return TRUE
	if(action == "set_rate")
		machine.sheets_per_tick = params["sheets"]
		return TRUE
	if(action == "machine_link")
		machine = locate(/obj/machinery/mineral/processing_unit) in range(3, src)
		if (machine)
			machine.console = src
		return TRUE



/obj/machinery/mineral/processing_unit_console/interact(mob/user)
	if(..())
		return
	if(!allowed(user))
		to_chat(user, "\red Access denied.")
		return
<<<<<<< HEAD

	user.set_machine(src)

	var/dat = "<h1>Ore processor console</h1>"

	dat += "<hr><table>"

	for(var/ore in machine.ores_processing)

		if(!machine.ores_stored[ore] && !show_all_ores) continue
		var/ore/O = ore_data[ore]
		if(!O) continue
		dat += "<tr><td width = 40><b>[capitalize(O.display_name)]</b></td><td width = 30>[machine.ores_stored[ore]]</td><td width = 100>"
		if(machine.ores_processing[ore])
			switch(machine.ores_processing[ore])
				if(0)
					dat += "<font color='red'>not processing</font>"
				if(1)
					dat += "<font color='orange'>smelting</font>"
				if(2)
					dat += "<font color='blue'>compressing</font>"
				if(3)
					dat += "<font color='gray'>alloying</font>"
		else
			dat += "<font color='red'>not processing</font>"
		dat += ".</td><td width = 30><a href='?src=\ref[src];toggle_smelting=[ore]'>\[change\]</a></td></tr>"

	dat += "</table><hr>"
	dat += "Currently displaying [show_all_ores ? "all ore types" : "only available ore types"]. <A href='?src=\ref[src];toggle_ores=1'>\[[show_all_ores ? "show less" : "show more"]\]</a></br>"
	dat += "The ore processor is currently <A href='?src=\ref[src];toggle_power=1'>[(machine.active ? "<font color='green'>processing</font>" : "<font color='red'>disabled</font>")]</a>."
	user << browse(dat, "window=processor_console;size=400x500")
	onclose(user, "processor_console")
	return

/obj/machinery/mineral/processing_unit_console/Topic(href, href_list)
	if(..())
		return 1
	usr.set_machine(src)

	if(href_list["toggle_smelting"])
		var/choice = input("What setting do you wish to use for processing [href_list["toggle_smelting"]]?") as null|anything in list("Smelting","Compressing","Alloying","Nothing")
		if(!choice) return

		switch(choice)
			if("Nothing") choice = 0
			if("Smelting") choice = 1
			if("Compressing") choice = 2
			if("Alloying") choice = 3

		machine.ores_processing[href_list["toggle_smelting"]] = choice

	if(href_list["toggle_power"])
		machine.active = !machine.active

	if(href_list["toggle_ores"])
		show_all_ores = !show_all_ores

	playsound(loc, 'sound/machines/machine_switch.ogg', 100, 1)
	src.updateUsrDialog()

=======
	ui_interact(user)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/**********************Mineral processing unit**************************/


/obj/machinery/mineral/processing_unit
	name = "material processor" //This isn't actually a goddamn furnace, we're in space and it's processing platinum and flammable phoron...
	icon = 'icons/obj/machines/mining_machines.dmi'
	desc = "A large grinder, compressor , and smelter for all your sheet and material needs."
	icon_state = "furnace"
	density = TRUE
	anchored = TRUE
	light_range = 3

	var/obj/machinery/mineral/console = null
	var/sheets_per_tick = 10
	var/list/ores_processing
	var/list/ores_stored
	var/static/list/alloy_data
	var/datum/alloy/selected_alloy = null
	var/active = 0
	var/input_dir = 0
	var/output_dir = 0
	var/points = 0
	var/static/list/ore_values = list(
		ORE_SAND = 0.1,
		ORE_IRON = 0.5,
		ORE_CARBON = 0.5,
		ORE_PLASMA = 1,
		ORE_SILVER = 1.5,
		ORE_GOLD = 2,
		ORE_URANIUM = 2,
		ORE_DIAMOND = 2.5,
		ORE_PLATINUM = 2.5,
		ORE_HYDROGEN = 3)

/obj/machinery/mineral/processing_unit/laber
	name = "labor material processor"

/obj/machinery/mineral/processing_unit/scrap_heaven
	name = "scrap haven material processor"

/obj/machinery/mineral/processing_unit/New()
	..()

	ores_processing = list()
	ores_stored = list()

	// initialize static alloy_data list
	if(!alloy_data)
		alloy_data = list()
		for(var/alloytype in typesof(/datum/alloy)-/datum/alloy)
			alloy_data += new alloytype()

	if(!ore_data || !ore_data.len)
		for(var/oretype in typesof(/ore)-/ore)
			var/ore/OD = new oretype()
			ore_data[OD.name] = OD

	for(var/orename in ore_data)
		ores_processing[orename] = 0
		ores_stored[orename] = 0

	spawn()
		//Locate our output and input machinery.
		var/obj/marker = null
		marker = locate(/obj/landmark/machinery/input) in range(1, loc)
		if(marker)
			input_dir = get_dir(src, marker)
		marker = locate(/obj/landmark/machinery/output) in range(1, loc)
		if(marker)
			output_dir = get_dir(src, marker)

/obj/machinery/mineral/processing_unit/update_icon()
	icon_state = "furnace[active ? "_on" : ""]"

/obj/machinery/mineral/processing_unit/Process()

	if(!output_dir || !input_dir)
		return
<<<<<<< HEAD

	var/list/tick_alloys = list()

	//Grab some more ore to process this tick.
	for(var/obj/item/ore/O in get_step(src, input_dir))
		if(!isnull(ores_stored[O.material]))
			ores_stored[O.material]++
=======
	//Grab some more ore to process this tick.
	for(var/obj/item/stack/ore/O in get_step(src, input_dir))
		if(!isnull(ores_stored[O.material]))
			ores_stored[O.material] += O.sheet_amout * O.amount
		else
			ores_stored[O.material] = O.sheet_amout * O.amount
		if(isnull(ores_processing[O.material]))
			ores_processing[O.material] = 0
		points += (ore_values[O.material] * O.amount) // Give Points!
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		qdel(O)
	if(!active)
		return
	//Process our stored ores and spit out sheets.
<<<<<<< HEAD
	var/sheets = 0
	var/currently_alloying = FALSE
	for(var/metal in ores_stored)

		if(sheets >= sheets_per_tick) break

		if(ores_stored[metal] > 0 && ores_processing[metal] != 0)

			var/ore/O = ore_data[metal]

			if(!O) continue

			if(ores_processing[metal] == 3 && O.alloy) //Alloying.

				for(var/datum/alloy/A in alloy_data)

					if(A.metaltag in tick_alloys)
						continue
					if(currently_alloying) //Occulus Edit
						break //Occulus Edit
					tick_alloys += A.metaltag
					var/enough_metal

					if(!isnull(A.requires[metal]) && ores_stored[metal] >= A.requires[metal]) //We have enough of our first metal, we're off to a good start.

						enough_metal = 1

						for(var/needs_metal in A.requires)
							//Check if we're alloying the needed metal and have it stored.
							if(ores_processing[needs_metal] != 3 || ores_stored[needs_metal] < A.requires[needs_metal])
								enough_metal = 0
								break

					if(!enough_metal)
						continue
					else
						var/total
						for(var/needs_metal in A.requires)
							ores_stored[needs_metal] -= A.requires[needs_metal]
							total += A.requires[needs_metal]
						total = max(1,round(total*A.product_mod)) //Always get at least one sheet.
						sheets += total //Occulus edit: For some reason alloys were counting as one less sheet per tick? Dumb

						for(var/i=0,i<total,i++)
							new A.product(get_step(src, output_dir))
						currently_alloying = TRUE//Occulus Edit

			else if(ores_processing[metal] == 2 && O.compresses_to) //Compressing.

				var/can_make = CLAMP(ores_stored[metal],0,sheets_per_tick-sheets)
				if(can_make%2>0) can_make--

				var/material/M = get_material_by_name(O.compresses_to)

				if(!istype(M) || !can_make || ores_stored[metal] < 1)
					continue

				for(var/i=0,i<can_make,i+=2)
					ores_stored[metal]-=2
					sheets+=2
					new M.stack_type(get_step(src, output_dir))

			else if(ores_processing[metal] == 1 && O.smelts_to) //Smelting.

				var/can_make = CLAMP(ores_stored[metal],0,sheets_per_tick-sheets)

				var/material/M = get_material_by_name(O.smelts_to)
				if(!istype(M) || !can_make || ores_stored[metal] < 1)
					continue

				for(var/i=0,i<can_make,i++)
					ores_stored[metal]--
					sheets++
					new M.stack_type(get_step(src, output_dir))
			else
				ores_stored[metal]--
				sheets++
				new /obj/item/ore/slag(get_step(src, output_dir))
		else
=======
	var/sheets_to_process = sheets_per_tick
	// So it doesn't get changed mid-process and leads to funny glitches / dupings by switching it mid-process
	var/datum/alloy/cur_alloy = selected_alloy
	var/produced_sheets = 0
	while(sheets_to_process && cur_alloy)
		var/valid = TRUE
		for(var/required_ore in cur_alloy.requires)
			if(ores_processing[required_ore] != ORE_ALLOYING)
				valid = FALSE
				break
			if(ores_stored[required_ore] < cur_alloy.requires[required_ore])
				valid = FALSE
				break
		if(!valid)
			break
		for(var/required_ore in cur_alloy.requires)
			ores_stored[required_ore] -= cur_alloy.requires[required_ore]
		produced_sheets += cur_alloy.product_mod * cur_alloy.ore_input
		sheets_to_process--
	sheets_to_process = sheets_per_tick - round(produced_sheets)
	while(round(produced_sheets) > 0)
		new cur_alloy.product(get_step(src, output_dir))
		produced_sheets--
	for(var/ore in ores_processing)
		if(sheets_to_process < 1)
			break
		if(ores_processing[ore] == ORE_ALLOYING)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			continue
		if(ores_processing[ore] == ORE_STORING)
			continue
		/// Would've named this ore_data , but it gives infinite cross reference ( and also conflicts with the global version)
		var/ore/stored_ore_data = ore_data[ore]
		if(ores_processing[ore] == ORE_SMELTING && stored_ore_data.smelts_to)
			if(ores_stored[ore] < 1)
				continue
			var/sheet_amount = min(round(ores_stored[ore]), sheets_per_tick)
			sheet_amount = min(sheet_amount, sheets_to_process)
			sheets_to_process -= sheet_amount
			var/material/product = get_material_by_name(stored_ore_data.smelts_to)
			while(sheet_amount)
				new product.stack_type(get_step(src, output_dir))
				sheet_amount--
				ores_stored[ore]--
		if(ores_processing[ore] == ORE_COMPRESSING && stored_ore_data.compresses_to)
			if(ores_stored[ore] < 2)
				continue
			var/sheet_amount = min(round(ores_stored[ore] / 2), round(sheets_per_tick / 2))
			sheet_amount = min(sheet_amount, sheets_to_process)
			sheets_to_process -= sheet_amount
			var/material/product = get_material_by_name(stored_ore_data.compresses_to)
			while(sheet_amount)
				new product.stack_type(get_step(src, output_dir))
				sheet_amount--
				ores_stored[ore] -= 2
	return
