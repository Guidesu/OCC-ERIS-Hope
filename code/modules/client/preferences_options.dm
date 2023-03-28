/datum/preferences
	var/list/setup_options = list()

/datum/preferences/proc/get_option(category)
	RETURN_TYPE(/datum/category_item/setup_option)
	if(!SScharacter_setup.setup_options[category])
<<<<<<< HEAD
		warning("Asking for invalid setup_option category: [category]")
		return
=======
		warning("Asking for invalid setup_option category [category].")
		return
	if(!SScharacter_setup.setup_options[category][setup_options[category]])
		warning("Asking for null setup_option [setup_options[category]] in [category].")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	return SScharacter_setup.setup_options[category][setup_options[category]]

/datum/preferences/proc/load_option(savefile/S, datum/category_group/setup_option_category/category)
	from_file(S[category.name], setup_options[category.name])

/datum/preferences/proc/save_option(savefile/S, datum/category_group/setup_option_category/category)
	to_file(S[category.name], setup_options[category.name])

/datum/preferences/proc/sanitize_option(datum/category_group/setup_option_category/category)
	if(!setup_options[category.name])
		setup_options[category.name] = "None"
