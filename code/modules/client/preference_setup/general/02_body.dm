var/global/list/valid_bloodtypes = list("A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-")

/datum/preferences
	var/species = SPECIES_HUMAN
<<<<<<< HEAD

	var/species_preview                 //Used for the species selection window.

	var/b_type = "A+"					//blood type (not-chooseable)
=======
	var/species_form = FORM_HUMAN
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	var/s_base = ""						//Base skin colour
	var/s_tone = 0						//Skin tone

	var/h_style = 		"Bald"				//Hair type
	var/f_style = 		"Shaved"				//Face hair type

<<<<<<< HEAD
	var/r_hair = 0						//Hair color
	var/g_hair = 0						//Hair color
	var/b_hair = 0						//Hair color
	var/r_facial = 0					//Face hair color
	var/g_facial = 0					//Face hair color
	var/b_facial = 0					//Face hair color
	var/r_skin = 238					//Skin color
	var/g_skin = 206					//Skin color
	var/b_skin = 179					//Skin color
	var/r_eyes = 0						//Eye color
	var/g_eyes = 0						//Eye color
	var/b_eyes = 0						//Eye color

	var/list/body_markings = list()
	var/list/body_descriptors = list()



	var/disabilities = 0
=======
	var/hair_color = 	"#000000"			//Hair color
	var/facial_color = 	"#000000"		//Face hair color
	var/skin_color = 	"#FFE0D0"			//Skin color
	var/eyes_color = 	"#000000"			//Eye color
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	var/equip_preview_mob = EQUIP_PREVIEW_ALL

	var/icon/bgstate = "black"
	var/list/bgstate_options = list("steel", "dark_steel", "white_tiles", "black_tiles", "wood", "carpet", "white", "black")
//	var/has_soulcrypt = TRUE

	var/size_multiplier = RESIZE_NORMAL
	var/scale_effect = 0

	var/grad_style = 	"None"			//Gradient style
	var/grad_color =	"#000000"		//Gradient Color

/datum/category_item/player_setup_item/physical/body
	name = "Body"
	sort_order = 2
	var/hide_species = TRUE

/datum/category_item/player_setup_item/physical/body/load_character(var/savefile/S)
	from_file(S["species"], pref.species)
	from_file(S["species_form"], pref.species_form)
	from_file(S["skin_tone"], pref.s_tone)
	from_file(S["skin_base"], pref.s_base)
	from_file(S["hair_style_name"], pref.h_style)
	from_file(S["facial_style_name"], pref.f_style)
<<<<<<< HEAD
	from_file(S["b_type"], pref.b_type)
	from_file(S["disabilities"], pref.disabilities)
	from_file(S["skin_red"], pref.r_skin)
	from_file(S["skin_green"], pref.g_skin)
	from_file(S["skin_blue"], pref.b_skin)
	from_file(S["skin_base"], pref.s_base)
	pref.preview_icon = null
	from_file(S["bgstate"], pref.bgstate)
	from_file(S["eyes_red"], pref.r_eyes)
	from_file(S["eyes_green"], pref.g_eyes)
	from_file(S["eyes_blue"], pref.b_eyes)
	from_file(S["hair_red"], pref.r_hair)
	from_file(S["hair_green"], pref.g_hair)
	from_file(S["hair_blue"], pref.b_hair)
	from_file(S["facial_red"], pref.r_facial)
	from_file(S["facial_green"], pref.g_facial)
	from_file(S["facial_blue"], pref.b_facial)
	from_file(S["body_markings"], pref.body_markings)
//	from_file(S["has_soulcrypt"], pref.has_soulcrypt)

=======
	pref.preview_icon = null
	from_file(S["bgstate"], pref.bgstate)
	from_file(S["eyes_color"], pref.eyes_color)
	from_file(S["skin_color"], pref.skin_color)
	from_file(S["hair_color"], pref.hair_color)
	from_file(S["facial_color"], pref.facial_color)
	from_file(S["size_multiplier"], pref.size_multiplier)
	from_file(S["scale_effect"], pref.scale_effect)
	from_file(S["gradient_style"], pref.grad_style)
	from_file(S["gradient_color"], pref.grad_color)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/category_item/player_setup_item/physical/body/save_character(var/savefile/S)
	to_file(S["species"], pref.species)
	to_file(S["species_form"], pref.species_form)
	to_file(S["skin_tone"], pref.s_tone)
	to_file(S["skin_base"], pref.s_base)
	to_file(S["hair_style_name"],pref.h_style)
	to_file(S["facial_style_name"],pref.f_style)
	to_file(S["bgstate"], pref.bgstate)
<<<<<<< HEAD
	to_file(S["eyes_red"], pref.r_eyes)
	to_file(S["eyes_green"], pref.g_eyes)
	to_file(S["eyes_blue"], pref.b_eyes)
	to_file(S["hair_red"], pref.r_hair)
	to_file(S["hair_green"], pref.g_hair)
	to_file(S["hair_blue"], pref.b_hair)
	to_file(S["skin_red"], pref.r_skin)
	to_file(S["skin_green"], pref.g_skin)
	to_file(S["skin_base"], pref.s_base)
	to_file(S["skin_blue"], pref.b_skin)
	to_file(S["facial_red"], pref.r_facial)
	to_file(S["facial_green"], pref.g_facial)
	to_file(S["facial_blue"], pref.b_facial)
	to_file(S["body_markings"], pref.body_markings)
//	to_file(S["has_soulcrypt"], pref.has_soulcrypt)
=======
	to_file(S["eyes_color"], pref.eyes_color)
	to_file(S["skin_color"], pref.skin_color)
	to_file(S["hair_color"], pref.hair_color)
	to_file(S["facial_color"], pref.facial_color)
	to_file(S["size_multiplier"], pref.size_multiplier)
	to_file(S["scale_effect"], pref.scale_effect)
	to_file(S["gradient_style"], pref.grad_style)
	to_file(S["gradient_color"], pref.grad_color)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/datum/category_item/player_setup_item/physical/body/sanitize_character(var/savefile/S)
	pref.h_style		= sanitize_inlist(pref.h_style, GLOB.hair_styles_list, initial(pref.h_style))
	pref.f_style		= sanitize_inlist(pref.f_style, GLOB.facial_hair_styles_list, initial(pref.f_style))
<<<<<<< HEAD
	pref.b_type			= sanitize_text(pref.b_type, initial(pref.b_type))
	pref.r_hair			= sanitize_integer(pref.r_hair, 0, 255, initial(pref.r_hair))
	pref.g_hair			= sanitize_integer(pref.g_hair, 0, 255, initial(pref.g_hair))
	pref.b_hair			= sanitize_integer(pref.b_hair, 0, 255, initial(pref.b_hair))
	pref.r_facial		= sanitize_integer(pref.r_facial, 0, 255, initial(pref.r_facial))
	pref.g_facial		= sanitize_integer(pref.g_facial, 0, 255, initial(pref.g_facial))
	pref.b_facial		= sanitize_integer(pref.b_facial, 0, 255, initial(pref.b_facial))
	pref.r_skin			= sanitize_integer(pref.r_skin, 0, 255, initial(pref.r_skin))
	pref.g_skin			= sanitize_integer(pref.g_skin, 0, 255, initial(pref.g_skin))
	pref.b_skin			= sanitize_integer(pref.b_skin, 0, 255, initial(pref.b_skin))
	pref.r_eyes			= sanitize_integer(pref.r_eyes, 0, 255, initial(pref.r_eyes))
	pref.g_eyes			= sanitize_integer(pref.g_eyes, 0, 255, initial(pref.g_eyes))
	pref.b_eyes			= sanitize_integer(pref.b_eyes, 0, 255, initial(pref.b_eyes))
//	pref.has_soulcrypt = sanitize_bool(pref.has_soulcrypt, initial(pref.has_soulcrypt))
=======
	pref.grad_style		= sanitize_inlist(pref.grad_style, hair_gradients_list, initial(pref.grad_style))
	pref.hair_color		= iscolor(pref.hair_color) ? pref.hair_color : "#000000"
	pref.facial_color	= iscolor(pref.facial_color) ? pref.facial_color : "#000000"
	pref.skin_color		= iscolor(pref.skin_color) ? pref.skin_color : "#FFE0D0"
	pref.eyes_color		= iscolor(pref.eyes_color) ? pref.eyes_color : "#000000"
	pref.grad_color		= iscolor(pref.grad_color) ? pref.grad_color : "#000000"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if(pref.size_multiplier == null || pref.size_multiplier < RESIZE_TINY || pref.size_multiplier > RESIZE_HUGE)
		pref.size_multiplier = initial(pref.size_multiplier)
	if (pref.size_multiplier != 1)
		pref.scale_effect = round(pref.size_multiplier * 100 - 100)		//So players don't have to rewrite their char sizes
		pref.size_multiplier = initial(pref.size_multiplier)	//We don't need obsolete vars on our chars

	if(!pref.species || !(pref.species in global.playable_species))
		pref.species = SPECIES_HUMAN


	var/datum/species/cspecies = global.all_species[pref.species]
	var/datum/species_form/cform = GLOB.all_species_form_list[pref.species_form]
	if(!pref.species_form || !(pref.species_form in GLOB.playable_species_form_list) || (cspecies.obligate_form && cspecies.default_form != cform.name) )
		pref.species_form = cspecies.default_form
		if(!pref.species_form)
			pref.species_form = FORM_HUMAN

	sanitize_integer(pref.s_tone, -185, 34, initial(pref.s_tone))

	pref.s_base = ""

<<<<<<< HEAD
	if(!pref.body_markings)
		pref.body_markings = list()
	else
		pref.body_markings &= body_marking_styles_list

	pref.disabilities	= sanitize_integer(pref.disabilities, 0, 65535, initial(pref.disabilities))

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(!pref.bgstate || !(pref.bgstate in pref.bgstate_options))
		pref.bgstate = "black"

/datum/category_item/player_setup_item/physical/body/content(var/mob/user)
	if(!pref.preview_icon)
		pref.update_preview_icon()
	user << browse_rsc(pref.preview_icon, "previewicon.png")

<<<<<<< HEAD
	var/datum/species/mob_species = all_species[pref.species]
	var/title = "<b>Species<a href='?src=\ref[src];show_species=1'><small>?</small></a>:</b> <a href='?src=\ref[src];set_species=1'>[mob_species.name]</a>"
	var/append_text = "<a href='?src=\ref[src];toggle_species_verbose=1'>[hide_species ? "Expand" : "Collapse"]</a>"
=======
	var/datum/species_form/mob_species_form = GLOB.all_species_form_list[pref.species_form]
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	. += "<style>span.color_holder_box{display: inline-block; width: 20px; height: 8px; border:1px solid #000; padding: 0px;}</style>"
	. += "<hr>"
	. += mob_species.get_description(title, append_text, verbose = !hide_species, skip_detail = TRUE, skip_photo = TRUE)
	. += "<table><tr style='vertical-align:top; width: 100%'><td width=65%><b>Body</b> "
	. += "(<a href='?src=\ref[src];random=1'>&reg;</A>)"
	. += "<br>"
	var/speciesstring
	var/datum/species/cspecies = global.all_species[pref.species]
	speciesstring = "<b>Species:</b> <a href='?src=\ref[src];select_species=[cspecies.name]'>[cspecies.name]</a>"
	. += speciesstring
	. += "<br>"
	var/formstring = ""
	var/datum/species_form/cform = GLOB.all_species_form_list[pref.species_form]
	if(istype(cform) && cform.variants && cform.variants.len && !cspecies.obligate_form)
		formstring = "<a href='?src=\ref[src];select_form_variant=[cform.name]'>&#707;</a>" + formstring
	while(istype(cform))
		var/mode = (!cform.variantof || cform.name == cform.variantof) ? "select_form=1" : "select_variant=[cform.variantof]"
		var/prefix = ""
		if(cform.name == cspecies.default_form && cspecies.obligate_form)
			mode = "reset_form=1"
			prefix = "&#8634; "
		formstring = "<a href='?src=\ref[src];[mode]'>[prefix][cform.name]</a>" + formstring
		if(cform.name == cform.variantof || cform.name == cspecies.default_form && cspecies.obligate_form) break
		cform = GLOB.all_species_form_list[cform.variantof]
	formstring = "<b>Form:</b> " + formstring
	. += formstring
	. += "<br>"
	. += "<b>Hair:</b> <a href='?src=\ref[src];cycle_hair=right'>&lt;&lt;</a><a href='?src=\ref[src];cycle_hair=left'>&gt;&gt;</a><a href='?src=\ref[src];hair_style=1'>[pref.h_style]</a>"
	if(has_flag(mob_species_form, HAS_HAIR_COLOR))
		. += "<a href='?src=\ref[src];hair_color=1'><span class='color_holder_box' style='background-color:[pref.hair_color]'></span></a>"
	. += "<br>"

<<<<<<< HEAD
	. += "Blood Type: <a href='?src=\ref[src];blood_type=1'>[pref.b_type]</a><br>"

//	. += "Base Colour: <a href='?src=\ref[src];base_skin=1'>[pref.s_base]</a><br>"

//	. += "Skin Tone: <a href='?src=\ref[src];skin_tone=1'>[-pref.s_tone + 35]/220</a><br>"
/*
	. += "Soulcrypt: "
	. += pref.has_soulcrypt ? "present." : "<b>not present.</b>"
	. += " \[<a href='byond://?src=\ref[src];toggle_soulcrypt=1'>toggle</a>\]"
	. += "<br>"
*/
	. += "Needs Glasses: <a href='?src=\ref[src];disabilities=[NEARSIGHTED]'><b>[pref.disabilities & NEARSIGHTED ? "Yes" : "No"]</b></a><br><br>"

	. += "<b>Hair:</b><br>"
	. += " Style: <a href='?src=\ref[src];cycle_hair=right'>&lt;&lt;</a><a href='?src=\ref[src];cycle_hair=left'>&gt;&gt;</a><a href='?src=\ref[src];hair_style=1'>[pref.h_style]</a>"
	if(has_flag(mob_species, HAS_HAIR_COLOR))
		. += "<a href='?src=\ref[src];hair_color=1'>Change Color</a> <font face='fixedsys' size='3' color='#[num2hex(pref.r_hair, 2)][num2hex(pref.g_hair, 2)][num2hex(pref.b_hair, 2)]'><table style='display:inline;' bgcolor='#[num2hex(pref.r_hair, 2)][num2hex(pref.g_hair, 2)][num2hex(pref.b_hair)]'><tr><td>__</td></tr></table></font> "

	. += "<br><b>Facial:</b><br>"
	. += " Style: <a href='?src=\ref[src];cycle_facial_hair=right'>&lt;&lt;</a><a href='?src=\ref[src];cycle_facial_hair=left'>&gt;&gt;</a><a href='?src=\ref[src];facial_style=1'>[pref.f_style]</a>"
	if(has_flag(mob_species, HAS_HAIR_COLOR))
		. += "<a href='?src=\ref[src];facial_color=1'>Change Color</a> <font face='fixedsys' size='3' color='#[num2hex(pref.r_facial, 2)][num2hex(pref.g_facial, 2)][num2hex(pref.b_facial, 2)]'><table  style='display:inline;' bgcolor='#[num2hex(pref.r_facial, 2)][num2hex(pref.g_facial, 2)][num2hex(pref.b_facial)]'><tr><td>__</td></tr></table></font> "

	if(has_flag(mob_species, HAS_EYE_COLOR))
		. += "<br><b>Eyes</b><br>"
		. += "<a href='?src=\ref[src];eye_color=1'>Change Color</a> <font face='fixedsys' size='3' color='#[num2hex(pref.r_eyes, 2)][num2hex(pref.g_eyes, 2)][num2hex(pref.b_eyes, 2)]'><table  style='display:inline;' bgcolor='#[num2hex(pref.r_eyes, 2)][num2hex(pref.g_eyes, 2)][num2hex(pref.b_eyes)]'><tr><td>__</td></tr></table></font><br>"

	if(has_flag(mob_species, HAS_SKIN_COLOR))
		. += "<br><b>Body Color</b><br>"
		. += "<a href='?src=\ref[src];skin_color=1'>Change Color</a> <font face='fixedsys' size='3' color='#[num2hex(pref.r_skin, 2)][num2hex(pref.g_skin, 2)][num2hex(pref.b_skin, 2)]'><table style='display:inline;' bgcolor='#[num2hex(pref.r_skin, 2)][num2hex(pref.g_skin, 2)][num2hex(pref.b_skin)]'><tr><td>__</td></tr></table></font><br>"

	. += "<br><a href='?src=\ref[src];marking_style=1'>Body Markings +</a><br>"
	for(var/M in pref.body_markings)
		. += "[M] [pref.body_markings.len > 1 ? "<a href='?src=\ref[src];marking_up=[M]'>&#708;</a> <a href='?src=\ref[src];marking_down=[M]'>&#709;</a> " : ""]<a href='?src=\ref[src];marking_remove=[M]'>-</a> <a href='?src=\ref[src];marking_color=[M]'>Color</a>"
		. += "<font face='fixedsys' size='3' color='[pref.body_markings[M]]'><table style='display:inline;' bgcolor='[pref.body_markings[M]]'><tr><td>__</td></tr></table></font>"
		. += "<br>"


=======
	. += "<b>Gradient:</B><a href='?src=\ref[src];grad_style=1'>[pref.grad_style]</a>"
	. += "<a href='?src=\ref[src];grad_color=1'><span class='color_holder_box' style='background-color:[pref.grad_color]'></span></a>"
	. += "<br>"

	. += "<b>Facial:</b> <a href='?src=\ref[src];cycle_facial_hair=right'>&lt;&lt;</a><a href='?src=\ref[src];cycle_facial_hair=left'>&gt;&gt;</a><a href='?src=\ref[src];facial_style=1'>[pref.f_style]</a>"
	if(has_flag(mob_species_form, HAS_HAIR_COLOR))
		. += "<a href='?src=\ref[src];facial_color=1'><span class='color_holder_box' style='background-color:[pref.facial_color]'></span></a>"
	. += "<br>"

	if(has_flag(mob_species_form, HAS_EYE_COLOR))
		. += "<b>Eyes: </b><a href='?src=\ref[src];eye_color=1'><span class='color_holder_box' style='background-color:[pref.eyes_color]'></span></a><br>"

	if(has_flag(mob_species_form, HAS_SKIN_COLOR))
		. += "<b>Body Color: </b><a href='?src=\ref[src];skin_color=1'><span class='color_holder_box' style='background-color:[pref.skin_color]'></span></a><br>"
	else if(has_flag(mob_species_form, HAS_SKIN_TONE))
		. += "<b>Skin Tone: </b><a href='?src=\ref[src];skin_tone=1'>[-pref.s_tone + 35]/220</a><br>"

	. += "<b>Scale:</b> <a href='?src=\ref[src];scale_effect=1'>[pref.scale_effect+100]%</a><br>"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	. += "</td><td style = 'text-align:center;' width = 35%><b>Preview</b><br>"
	. += "<div style ='padding-bottom:-2px;' class='statusDisplay'><img src=previewicon.png width=[pref.preview_icon.Width()] height=[pref.preview_icon.Height()]></div>"
	. += "<br><a href='?src=\ref[src];cycle_bg=1'>Cycle background</a>"
	. += "<br><a href='?src=\ref[src];toggle_preview_value=[EQUIP_PREVIEW_LOADOUT]'>[pref.equip_preview_mob & EQUIP_PREVIEW_LOADOUT ? "Hide loadout" : "Show loadout"]</a>"
	. += "<br><a href='?src=\ref[src];toggle_preview_value=[EQUIP_PREVIEW_JOB]'>[pref.equip_preview_mob & EQUIP_PREVIEW_JOB ? "Hide job gear" : "Show job gear"]</a>"
	. += "</td></tr></table>"

<<<<<<< HEAD

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e



/datum/category_item/player_setup_item/physical/body/proc/has_flag(var/datum/species_form/form, var/flag)
	return form && (form.appearance_flags & flag)

/datum/category_item/player_setup_item/physical/body/OnTopic(var/href,var/list/href_list, var/mob/user)

	pref.categoriesChanged = "Body"
	var/datum/species/mob_species = all_species[pref.species]
	var/datum/species_form/mob_species_form = GLOB.all_species_form_list[pref.species_form]
	if(href_list["toggle_species_verbose"])
		hide_species = !hide_species
		return TOPIC_REFRESH

	else if(href_list["random"])
		pref.randomize_appearance_and_body_for()
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["select_species"])
		var/new_species = input(user, "Choose your character's species:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.species) as null|anything in global.playable_species
		if(new_species && CanUseTopic(user))
			pref.species = new_species
			pref.ears_style = "Default"
			pref.tail_style = "Default"
			pref.wings_style = "Default"
			pref.setup_options["Career"] = "None"
			pref.setup_options["Homeworld"] = "None"
			pref.setup_options["Upbringing"] = "None"
			pref.setup_options["Ethnicity"] = "None"
			pref.setup_options["Core implant"] = "None"
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["reset_form"])
		pref.species_form = mob_species.default_form
	else if(href_list["select_form"])
		if(mob_species.obligate_form)
			return TOPIC_NOACTION
		var/new_form = input(user, "Choose your character's form:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.species_form) as null|anything in GLOB.selectable_species_form_list
		if(new_form && CanUseTopic(user))
			pref.species_form = new_form
			return TOPIC_REFRESH_UPDATE_PREVIEW
	else if(href_list["select_form_variant"])
		var/datum/species_form/old_base = GLOB.playable_species_form_list[href_list["select_variant"]]
		if(istype(old_base))
			var/new_form = input(user, "Choose your character's form:", CHARACTER_PREFERENCE_INPUT_TITLE, href_list["select_variant"]) as null|anything in old_base.variants
			if(new_form && CanUseTopic(user))
				pref.species_form = new_form
				return TOPIC_REFRESH_UPDATE_PREVIEW

	/*else if(href_list["change_descriptor"])
		if(mob_species.descriptors)
			var/desc_id = href_list["change_descriptor"]
			if(pref.body_descriptors[desc_id])
				var/datum/mob_descriptor/descriptor = mob_species.descriptors[desc_id]
				var/choice = input("Please select a descriptor.", "Descriptor") as null|anything in descriptor.chargen_value_descriptors
				if(choice && mob_species.descriptors[desc_id]) // Check in case they sneakily changed species.
					pref.body_descriptors[desc_id] = descriptor.chargen_value_descriptors[choice]
					return TOPIC_REFRESH
	*/
<<<<<<< HEAD

	else if(href_list["blood_type"])
		var/new_b_type = input(user, "Choose your character's blood-type:", CHARACTER_PREFERENCE_INPUT_TITLE) as null|anything in valid_bloodtypes
		if(new_b_type && CanUseTopic(user))
			pref.b_type = new_b_type
			return TOPIC_REFRESH
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	else if(href_list["show_species"])
		var/choice = input("Which species would you like to look at?") as null|anything in playable_species
		if(choice)
			var/datum/species/current_species = all_species[choice]
			user << browse(current_species.get_description(), "window=species;size=700x400")
			return TOPIC_HANDLED
/*
	else if(href_list["toggle_soulcrypt"])
		pref.has_soulcrypt = !pref.has_soulcrypt
		return TOPIC_REFRESH
*/
	else if(href_list["set_species"])

		var/list/species_to_pick = list()
		for(var/species in playable_species)
			if(!check_rights(R_ADMIN, 0) && config.usealienwhitelist)
				var/datum/species/current_species = all_species[species]
				if(!(current_species.spawn_flags & CAN_JOIN))
					continue
				else if((current_species.spawn_flags & IS_WHITELISTED) && !is_alien_whitelisted(preference_mob(),current_species))
					continue
			species_to_pick += species

		var/choice = input("Select a species to play as.") as null|anything in species_to_pick
		if(!choice || !(choice in all_species))
			return

		var/prev_species = pref.species
		pref.species = choice
		if(prev_species != pref.species)
			mob_species = all_species[pref.species]
			if(!(pref.gender in mob_species.genders))
				pref.gender = mob_species.genders[1]

			ResetAllHair()

			//reset hair colour and skin colour
			pref.r_hair = 0//hex2num(copytext(new_hair, 2, 4))
			pref.g_hair = 0//hex2num(copytext(new_hair, 4, 6))
			pref.b_hair = 0//hex2num(copytext(new_hair, 6, 8))
			pref.s_tone = 0
			pref.age = max(min(pref.age, mob_species.max_age), mob_species.min_age)

			reset_limbs() // Safety for species with incompatible manufacturers; easier than trying to do it case by case.
			pref.body_markings.Cut() // Basically same as above.//TODO-NESTOR

			//prune_occupation_prefs()
			//pref.skills_allocated = pref.sanitize_skills(pref.skills_allocated)//TODO-NESTOR

			//pref.cultural_info = mob_species.default_cultural_info.Copy()//TODO-NESTOR

			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["hair_color"])
		if(!has_flag(mob_species_form, HAS_HAIR_COLOR))
			return TOPIC_NOACTION
<<<<<<< HEAD
		var/new_hair = input(user, "Choose your character's hair colour:", CHARACTER_PREFERENCE_INPUT_TITLE, rgb(pref.r_hair, pref.g_hair, pref.b_hair)) as color|null
		if(new_hair && has_flag(all_species[pref.species], HAS_HAIR_COLOR) && CanUseTopic(user))
			pref.r_hair = hex2num(copytext(new_hair, 2, 4))
			pref.g_hair = hex2num(copytext(new_hair, 4, 6))
			pref.b_hair = hex2num(copytext(new_hair, 6, 8))
=======
		var/new_hair = input(user, "Choose your character's hair colour:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.hair_color) as color|null
		if(new_hair && has_flag(mob_species_form, HAS_HAIR_COLOR) && CanUseTopic(user))
			pref.hair_color = new_hair
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			return TOPIC_REFRESH_UPDATE_PREVIEW


	else if(href_list["hair_style"])
		var/list/valid_hairstyles = mob_species_form.get_hair_styles()
		var/new_h_style = input(user, "Choose your character's hair style:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.h_style)  as null|anything in valid_hairstyles

		if(new_h_style && CanUseTopic(user) && (new_h_style in mob_species_form.get_hair_styles()))
			pref.h_style = new_h_style
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["grad_style"])
		var/list/valid_gradients = hair_gradients_list
		var/new_grad_style = input(user, "Choose a color pattern for your hair:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.grad_style)  as null|anything in valid_gradients
		if(new_grad_style && CanUseTopic(user))
			pref.grad_style = new_grad_style
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["grad_color"])
		if(!has_flag(mob_species_form, HAS_HAIR_COLOR))
			return TOPIC_NOACTION
		var/new_grad = input(user, "Choose your character's secondary hair color:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.grad_color) as color|null
		if(new_grad && has_flag(mob_species_form, HAS_HAIR_COLOR) && CanUseTopic(user))
			pref.grad_color = new_grad
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["facial_color"])
		if(!has_flag(mob_species_form, HAS_HAIR_COLOR))
			return TOPIC_NOACTION
<<<<<<< HEAD
		var/new_facial = input(user, "Choose your character's facial-hair colour:", CHARACTER_PREFERENCE_INPUT_TITLE, rgb(pref.r_facial, pref.g_facial, pref.b_facial)) as color|null
		if(new_facial && has_flag(all_species[pref.species], HAS_HAIR_COLOR) && CanUseTopic(user))
			pref.r_facial = hex2num(copytext(new_facial, 2, 4))
			pref.g_facial = hex2num(copytext(new_facial, 4, 6))
			pref.b_facial = hex2num(copytext(new_facial, 6, 8))
=======
		var/new_facial = input(user, "Choose your character's facial-hair colour:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.facial_color) as color|null
		if(new_facial && has_flag(mob_species_form, HAS_HAIR_COLOR) && CanUseTopic(user))
			pref.facial_color = new_facial
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["eye_color"])
		if(!has_flag(mob_species_form, HAS_EYE_COLOR))
			return TOPIC_NOACTION
<<<<<<< HEAD
		var/new_eyes = input(user, "Choose your character's eye colour:", CHARACTER_PREFERENCE_INPUT_TITLE, rgb(pref.r_eyes, pref.g_eyes, pref.b_eyes)) as color|null
		if(new_eyes && has_flag(all_species[pref.species], HAS_EYE_COLOR) && CanUseTopic(user))
			pref.r_eyes = hex2num(copytext(new_eyes, 2, 4))
			pref.g_eyes = hex2num(copytext(new_eyes, 4, 6))
			pref.b_eyes = hex2num(copytext(new_eyes, 6, 8))
=======
		var/new_eyes = input(user, "Choose your character's eye colour:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.eyes_color) as color|null
		if(new_eyes && has_flag(mob_species_form, HAS_EYE_COLOR) && CanUseTopic(user))
			pref.eyes_color = new_eyes
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["base_skin"])
		var/new_s_base = input(user, "Choose your character's base colour:", CHARACTER_PREFERENCE_INPUT_TITLE) as null//|anything in mob_species_form.base_skin_colours
		if(new_s_base && CanUseTopic(user))
			pref.s_base = new_s_base
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["skin_tone"])
		//var/new_s_tone = input(user, "Choose your character's skin-tone. Lower numbers are lighter, higher are darker. Range: 1 to [mob_species.max_skin_tone()]", CHARACTER_PREFERENCE_INPUT_TITLE, (-pref.s_tone) + 35) as num|null
		var/new_s_tone = input(user, "Choose your character's skin-tone. Lower numbers are lighter, higher are darker. Range: 1 to 225", CHARACTER_PREFERENCE_INPUT_TITLE, (-pref.s_tone) + 35) as num|null

		if(new_s_tone && CanUseTopic(user))
			//pref.s_tone = 35 - max(min(round(new_s_tone), mob_species.max_skin_tone()), 1)
			pref.s_tone = 35 - max(min(round(new_s_tone), 220), 1)
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["skin_color"])
		if(!has_flag(mob_species_form, HAS_SKIN_COLOR))
			return TOPIC_NOACTION
<<<<<<< HEAD
		var/new_skin = input(user, "Choose your character's skin colour: ", CHARACTER_PREFERENCE_INPUT_TITLE, rgb(pref.r_skin, pref.g_skin, pref.b_skin))  as color|null
		if(new_skin && has_flag(all_species[pref.species], HAS_SKIN_COLOR) && CanUseTopic(user))
			pref.r_skin = hex2num(copytext(new_skin, 2, 4))
			pref.g_skin = hex2num(copytext(new_skin, 4, 6))
			pref.b_skin = hex2num(copytext(new_skin, 6, 8))
=======
		var/new_skin = input(user, "Choose your character's skin colour: ", CHARACTER_PREFERENCE_INPUT_TITLE, pref.skin_color) as color|null
		if(new_skin && has_flag(mob_species_form, HAS_SKIN_COLOR) && CanUseTopic(user))
			pref.skin_color = new_skin
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["facial_style"])
		var/list/valid_facialhairstyles = mob_species_form.get_facial_hair_styles(pref.gender)

		var/new_f_style = input(user, "Choose your character's facial-hair style:", CHARACTER_PREFERENCE_INPUT_TITLE, pref.f_style)  as null|anything in valid_facialhairstyles

		if(new_f_style && CanUseTopic(user) && mob_species_form.get_facial_hair_styles(pref.gender))
			pref.f_style = new_f_style
			return TOPIC_REFRESH_UPDATE_PREVIEW

<<<<<<< HEAD

	else if(href_list["marking_style"])
		var/list/usable_markings = pref.body_markings.Copy() ^ body_marking_styles_list.Copy()
		var/new_marking = input(user, "Choose a body marking:", "Character Preference")  as null|anything in usable_markings
		if(new_marking && CanUseTopic(user))
			pref.body_markings[new_marking] = "#000000" //New markings start black
			return TOPIC_REFRESH_UPDATE_PREVIEW


	else if(href_list["marking_up"])
		var/M = href_list["marking_up"]
		var/start = pref.body_markings.Find(M)
		if(start != 1) //If we're not the beginning of the list, swap with the previous element.
			moveElement(pref.body_markings, start, start-1)
		else //But if we ARE, become the final element -ahead- of everything else.
			moveElement(pref.body_markings, start, pref.body_markings.len+1)
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["marking_down"])
		var/M = href_list["marking_down"]
		var/start = pref.body_markings.Find(M)
		if(start != pref.body_markings.len) //If we're not the end of the list, swap with the next element.
			moveElement(pref.body_markings, start, start+2)
		else //But if we ARE, become the first element -behind- everything else.
			moveElement(pref.body_markings, start, 1)
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["marking_remove"])
		var/M = href_list["marking_remove"]
		pref.body_markings -= M
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["marking_color"])
		var/M = href_list["marking_color"]
		var/mark_color = input(user, "Choose the [M] color: ", "Character Preference", pref.body_markings[M]) as color|null
		if(mark_color && CanUseTopic(user))
			pref.body_markings[M] = "[mark_color]"
			return TOPIC_REFRESH_UPDATE_PREVIEW


	else if(href_list["disabilities"])
		var/disability_flag = text2num(href_list["disabilities"])
		pref.disabilities ^= disability_flag
		return TOPIC_REFRESH_UPDATE_PREVIEW

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	else if(href_list["toggle_preview_value"])
		pref.equip_preview_mob ^= text2num(href_list["toggle_preview_value"])
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["cycle_bg"])
		pref.bgstate = next_list_item(pref.bgstate, pref.bgstate_options)
		return TOPIC_REFRESH_UPDATE_PREVIEW

	else if(href_list["cycle_hair"])
		var/list/valid_hairstyles = mob_species_form.get_hair_styles()
		var/old_pos = valid_hairstyles.Find(pref.h_style)
		var/new_h_style
		if(href_list["cycle_hair"] == "right")
			if(old_pos - 1 < 1)
				return TOPIC_NOACTION
			new_h_style = valid_hairstyles[old_pos-1]
		else
			if(old_pos + 1 > valid_hairstyles.len)
				return TOPIC_NOACTION
			new_h_style = valid_hairstyles[old_pos+1]
<<<<<<< HEAD

		mob_species = all_species[pref.species]
		if(new_h_style && CanUseTopic(user) && (new_h_style in mob_species.get_hair_styles()))
=======
		if(new_h_style && CanUseTopic(user) && (new_h_style in mob_species_form.get_hair_styles()))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			pref.h_style = new_h_style
			return TOPIC_REFRESH_UPDATE_PREVIEW
	else if(href_list["cycle_facial_hair"])
		var/list/valid_facialhairstyles = mob_species_form.get_facial_hair_styles()
		var/old_pos = valid_facialhairstyles.Find(pref.f_style)
		var/new_f_style
		if(href_list["cycle_facial_hair"] == "right")
			if(old_pos - 1 < 1)
				return TOPIC_NOACTION
			new_f_style = valid_facialhairstyles[old_pos-1]
		else
			if(old_pos + 1 > valid_facialhairstyles.len)
				return TOPIC_NOACTION
			new_f_style = valid_facialhairstyles[old_pos+1]
		if(new_f_style && CanUseTopic(user) && mob_species_form.get_facial_hair_styles())
			pref.f_style = new_f_style
			return TOPIC_REFRESH_UPDATE_PREVIEW
	else if(href_list["scale_effect"])
		var/new_size_mult = input(user, "Choose your character's size, ranging from -20% to +20% form normal sprite size. Note that 100% is roughly equals to 1.77 meters or 5'10.", "Set Size") as num|null
		if (!ISINRANGE(new_size_mult,-20,20))
			//pref.size_multiplier = 1 		Obsolete
			pref.scale_effect = 0
			to_chat(user, "<span class='notice'>Invalid size.</span>")
			return TOPIC_REFRESH_UPDATE_PREVIEW
		else if(new_size_mult == -10 || new_size_mult == 10)
			to_chat(user, "<span class='notice'>You're trying to set character size value which will result broken sprites. Your scaling is auto adjusted.</span>")
			if (new_size_mult == -10)
				pref.scale_effect = -9
			else pref.scale_effect = 9
		else if(new_size_mult)
		//	was pref.size_multiplier
			pref.scale_effect = (new_size_mult)
			return TOPIC_REFRESH_UPDATE_PREVIEW

	return ..()

/datum/category_item/player_setup_item/physical/body/proc/reset_limbs()
	return
/*
	pref.organ_data.Cut()
	pref.rlimb_data.Cut()*/ //TODO-NESTOR

/datum/category_item/player_setup_item/proc/ResetAllHair()
	ResetHair()
	ResetFacialHair()

/datum/category_item/player_setup_item/proc/ResetHair()

<<<<<<< HEAD
	var/datum/species/mob_species = all_species[pref.species]
	var/list/valid_hairstyles = mob_species.get_hair_styles()
=======
	var/datum/species/mob_species_form = GLOB.all_species_form_list[pref.species]
	var/list/valid_hairstyles = mob_species_form.get_hair_styles()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if(valid_hairstyles.len)
		pref.h_style = pick(valid_hairstyles)
	else
		//this shouldn't happen
		pref.h_style = GLOB.hair_styles_list["Bald"]

	pref.h_style = GLOB.hair_styles_list["Bald"]

/datum/category_item/player_setup_item/proc/ResetFacialHair()

<<<<<<< HEAD
	var/datum/species/mob_species = all_species[pref.species]
	var/list/valid_facialhairstyles = mob_species.get_facial_hair_styles(pref.gender)
=======
	var/datum/species/mob_species_form = GLOB.all_species_form_list[pref.species]
	var/list/valid_facialhairstyles = mob_species_form.get_facial_hair_styles(pref.gender)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if(valid_facialhairstyles.len)
		pref.f_style = pick(valid_facialhairstyles)
	else
		//this shouldn't happen
		pref.f_style = GLOB.facial_hair_styles_list["Shaved"]
	pref.f_style = GLOB.facial_hair_styles_list["Shaved"]

/datum/category_item/player_setup_item/general/body/proc/SetSpecies(mob/user)
	if(!pref.species_preview || !(pref.species_preview in all_species))
		pref.species_preview = "Human"
	var/datum/species/current_species = all_species[pref.species_preview]
	var/dat = "<body>"
	dat += "<center><h2>[current_species.name] \[<a href='?src=\ref[src];show_species=1'>change</a>\]</h2></center><hr/>"
	dat += "<table padding='8px'>"
	dat += "<tr>"
	dat += "<td width = 400>[current_species.blurb]</td>"
	dat += "<td width = 200 align='center'>"
	if("preview" in icon_states(current_species.icobase))
		usr << browse_rsc(icon(current_species.icobase,"preview"), "species_preview_[current_species.name].png")
		dat += "<img src='species_preview_[current_species.name].png' width='64px' height='64px'><br/><br/>"
	dat += "<b>Language:</b> [current_species.language]<br/>"
	dat += "<small>"
	if(current_species.spawn_flags & CAN_JOIN)
		dat += "</br><b>Often present on human stations.</b>"
	if(current_species.spawn_flags & IS_WHITELISTED)
		dat += "</br><b>Whitelist restricted.</b>"
	if(current_species.flags & NO_BLOOD)
		dat += "</br><b>Does not have blood.</b>"
	if(current_species.flags & NO_BREATHE)
		dat += "</br><b>Does not breathe.</b>"
	if(current_species.flags & NO_SCAN)
		dat += "</br><b>Does not have DNA.</b>"
	if(current_species.flags & NO_PAIN)
		dat += "</br><b>Does not feel pain.</b>"
	if(current_species.flags & NO_SLIP)
		dat += "</br><b>Has excellent traction.</b>"
	if(current_species.flags & NO_POISON)
		dat += "</br><b>Immune to most poisons.</b>"
	if(current_species.appearance_flags & HAS_SKIN_TONE)
		dat += "</br><b>Has a variety of skin tones.</b>"
	if(current_species.appearance_flags & HAS_SKIN_COLOR)
		dat += "</br><b>Has a variety of skin colours.</b>"
	if(current_species.appearance_flags & HAS_EYE_COLOR)
		dat += "</br><b>Has a variety of eye colours.</b>"
	if(current_species.flags & IS_PLANT)
		dat += "</br><b>Has a plantlike physiology.</b>"
	dat += "</small></td>"
	dat += "</tr>"
	dat += "</table><center><hr/>"

	var/restricted = 0
	if(config.usealienwhitelist) //If we're using the whitelist, make sure to check it!
		if(!(current_species.spawn_flags & CAN_JOIN))
			restricted = 2
		else if((current_species.spawn_flags & IS_WHITELISTED) && !is_alien_whitelisted(preference_mob(),current_species))
			restricted = 1

	if(restricted)
		if(restricted == 1)
			dat += "<font color='red'><b>You cannot play as this species.</br><small>If you wish to be whitelisted, you can make an application post on <a href='?src=\ref[user];preference=open_whitelist_forum'>the forums</a>.</small></b></font></br>"
		else if(restricted == 2)
			dat += "<font color='red'><b>You cannot play as this species.</br><small>This species is not available for play as a station race..</small></b></font></br>"
	if(!restricted || check_rights(R_ADMIN, 0))
		dat += "\[<a href='?src=\ref[src];set_species=[pref.species_preview]'>select</a>\]"
	dat += "</center></body>"

	user << browse(dat, "window=species;size=700x400")