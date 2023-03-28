/datum/objective/custom
	explanation_text = "Only gods know what you should do."

/datum/objective/custom/get_panel_entry()
	return "[explanation_text]</br><a href='?src=\ref[src];set_explane=1'>Change explanation text</a>"

/datum/objective/custom/Topic(href, href_list)
	if(..())
		return TRUE
	if(href_list["set_explane"])
<<<<<<< HEAD
		var/new_explane = input(usr, "Set explanation text", "Custom objective", explanation_text, "message")
=======
		var/new_explane = input(usr, "Set explanation text", "Custom objective", explanation_text) as message|null
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if(!new_explane)
			return
		explanation_text = new_explane
		antag.antagonist_panel()
