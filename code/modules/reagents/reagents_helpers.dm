<<<<<<< HEAD
/proc/get_reagent_name_by_id(id)
=======
/proc/get_reagent_name_by_id(var/id)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!GLOB.chemical_reagents_list.len)
		return "REAGENTS NOT INITIALISED"
	var/datum/reagent/D = GLOB.chemical_reagents_list[id]
	if(D)
		return D.name

	return "REAGENT NOT FOUND"

<<<<<<< HEAD
/proc/get_reagent_type_by_id(id)
=======
/proc/get_reagent_type_by_id(var/id)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!GLOB.chemical_reagents_list.len)
		return "REAGENTS NOT INITIALISED"
	var/datum/reagent/D = GLOB.chemical_reagents_list[id]
	if(D)
		return D.type

	return "REAGENT NOT FOUND"

<<<<<<< HEAD
/proc/is_reagent_with_id_exist(id)
=======
/proc/is_reagent_with_id_exist(var/id)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!GLOB.chemical_reagents_list.len)
		error("REAGENTS NOT INITIALISED")
		return FALSE
	var/datum/reagent/D = GLOB.chemical_reagents_list[id]
	if(D)
		return TRUE

	return FALSE