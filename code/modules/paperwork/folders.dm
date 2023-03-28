/obj/item/folder
	name = "folder"
	desc = "A folder."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "folder"
<<<<<<< HEAD
	w_class = ITEM_SIZE_SMALL
	matter = list(MATERIAL_BIOMATTER = 2)
	rarity_value = 5
	spawn_tags = SPAWN_TAG_JUNK

=======
	w_class = ITEM_SIZE_TINY
	/// The background color for tgui in hex (with a `#`)
	var/bg_color = "#7f7f7f"
	var/list/allowed_paper_items = list(
	/obj/item/oddity/ls/manual,
	/obj/item/folder,
	/obj/item/paper,
	/obj/item/paper_bundle,
	/obj/item/photo,
	/obj/item/paper/alchemy_recipes
	)

/obj/item/folder/black
	desc = "A black folder."
	icon_state = "folder_black"
	bg_color = "#313639"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/folder/blue
	desc = "A blue folder."
	icon_state = "folder_blue"
	bg_color = "#355e9f"

<<<<<<< HEAD
=======
/obj/item/folder/cyan
	desc = "A cyan folder."
	icon_state = "folder_cyan"
	bg_color = "##00ffff"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/folder/red
	desc = "A red folder."
	icon_state = "folder_red"
	bg_color = "#b5002e"

/obj/item/folder/yellow
	desc = "A yellow folder."
	icon_state = "folder_yellow"
	bg_color = "#b88f3d"

<<<<<<< HEAD
/obj/item/folder/cyan
	desc = "A cyan folder."
	icon_state = "folder_cyan"

/obj/item/folder/on_update_icon()
	cut_overlays()
	if(contents.len)
		add_overlays("folder_paper")
	return

/obj/item/folder/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W, /obj/item/paper) || istype(W, /obj/item/photo) || istype(W, /obj/item/paper_bundle))
		user.drop_item()
		W.loc = src
		playsound(src,'sound/effects/Paper_Shake.ogg',40,1)
		to_chat(user, SPAN_NOTICE("You put the [W] into \the [src]."))
		update_icon()
	else if(istype(W, /obj/item/pen))
		var/n_name = sanitizeSafe(input(usr, "What would you like to label the folder?", "Folder Labelling", null)  as text, MAX_NAME_LEN)
		if((loc == usr && usr.stat == 0))
			name = "folder[(n_name ? text("- '[n_name]'") : null)]"
	return

/obj/item/folder/attack_self(mob/user as mob)
	var/dat = "<title>[name]</title>"

	for(var/obj/item/paper/P in src)
		dat += "<A href='?src=\ref[src];remove=\ref[P]'>Remove</A> <A href='?src=\ref[src];rename=\ref[P]'>Rename</A> - <A href='?src=\ref[src];read=\ref[P]'>[P.name]</A><BR>"
	for(var/obj/item/photo/Ph in src)
		dat += "<A href='?src=\ref[src];remove=\ref[Ph]'>Remove</A> <A href='?src=\ref[src];rename=\ref[Ph]'>Rename</A> - <A href='?src=\ref[src];look=\ref[Ph]'>[Ph.name]</A><BR>"
	for(var/obj/item/paper_bundle/Pb in src)
		dat += "<A href='?src=\ref[src];remove=\ref[Pb]'>Remove</A> <A href='?src=\ref[src];rename=\ref[Pb]'>Rename</A> - <A href='?src=\ref[src];browse=\ref[Pb]'>[Pb.name]</A><BR>"
	user << browse(dat, "window=folder")
	onclose(user, "folder")
	add_fingerprint(usr)
	return

/obj/item/folder/Topic(href, href_list)
	..()
	if((usr.stat || usr.restrained()))
=======
/obj/item/folder/white
	desc = "A white folder."
	icon_state = "folder_white"
	bg_color = "#d9d9d9"

/obj/item/folder/syndicate
	icon_state = "folder_red"
	bg_color = "#3f3f3f"
	name = "folder- 'TOP SECRET'"
	desc = "A folder stamped \"Top Secret - Property of The Syndicate.\""

/obj/item/folder/Initialize()
	update_icon()
	. = ..()

/obj/item/folder/examine()
	. = ..()
	if(contents)
		. += "<span class='notice'>Alt-click to remove [contents[1]].</span>"

/obj/item/folder/proc/rename(mob/user)
	var/inputvalue = stripped_input(user, "What would you like to label the folder?", "Folder Labelling", "", MAX_NAME_LEN)

	if(!inputvalue)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return

	if(user.CanUseTopic(user))
		name = "folder[(inputvalue ? " - '[inputvalue]'" : null)]"

<<<<<<< HEAD
		if(href_list["remove"])
			var/obj/item/P = locate(href_list["remove"])
			if(P && (P.loc == src) && istype(P))
				P.loc = usr.loc
				playsound(src,'sound/effects/Paper_Remove.ogg',40,1)
				usr.put_in_hands(P)

		else if(href_list["read"])
			var/obj/item/paper/P = locate(href_list["read"])
			playsound(src,'sound/effects/Paper_Shake.ogg',40,1)
			if(P && (P.loc == src) && istype(P))
				if(!(ishuman(usr) || isghost(usr) || issilicon(usr)))
					usr << browse("<HTML><HEAD><TITLE>[P.name]</TITLE></HEAD><BODY>[stars(P.info)][P.stamps]</BODY></HTML>", "window=[P.name]")
					onclose(usr, "[P.name]")
				else
					usr << browse("<HTML><HEAD><TITLE>[P.name]</TITLE></HEAD><BODY>[P.info][P.stamps]</BODY></HTML>", "window=[P.name]")
					onclose(usr, "[P.name]")
		else if(href_list["look"])
			var/obj/item/photo/P = locate(href_list["look"])
			if(P && (P.loc == src) && istype(P))
				P.show(usr)
		else if(href_list["browse"])
			var/obj/item/paper_bundle/P = locate(href_list["browse"])
			if(P && (P.loc == src) && istype(P))
				P.attack_self(usr)
				onclose(usr, "[P.name]")
		else if(href_list["rename"])
			var/obj/item/O = locate(href_list["rename"])

			if(O && (O.loc == src))
				if(istype(O, /obj/item/paper))
					var/obj/item/paper/to_rename = O
					to_rename.rename()

				else if(istype(O, /obj/item/photo))
					var/obj/item/photo/to_rename = O
					to_rename.rename()

				else if(istype(O, /obj/item/paper_bundle))
					var/obj/item/paper_bundle/to_rename = O
					to_rename.rename()

		//Update everything
		attack_self(usr)
=======
/obj/item/folder/proc/remove_item(obj/item/Item, mob/user)
	if(istype(Item))
		Item.forceMove(user.loc)
		user.put_in_hands(Item)
		to_chat(user, "<span class='notice'>You remove [Item] from [src].</span>")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		update_icon()

/obj/item/folder/AltClick(mob/user)
	..()
	if(contents)
		remove_item(contents[1], user)

/obj/item/folder/update_icon()
	. = ..()
	cut_overlays()
	if(contents.len)
		add_overlay("folder_paper")

/obj/item/folder/attackby(obj/item/weapon, mob/user, params)
	if(LAZYLEN(allowed_paper_items))
		if(is_type_in_list(weapon,allowed_paper_items))
			//Add paper, photo or documents into the folder
			user.drop_item()
			weapon.loc = src
			playsound(src,'sound/effects/Paper_Shake.ogg',40,1)
			to_chat(user, "<span class='notice'>You put [weapon] into [src].</span>")
			update_icon()
	if(istype(weapon, /obj/item/pen))
		rename(user)

/obj/item/folder/attack_self(mob/user)
	add_fingerprint(usr)
	ui_interact(user)
	return

/obj/item/folder/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "Folder")
		ui.open()

/obj/item/folder/ui_data(mob/user)
	var/list/data = list()
	if(istype(src, /obj/item/folder/syndicate))
		data["theme"] = "syndicate"
	data["bg_color"] = "[bg_color]"
	data["folder_name"] = "[name]"

	data["contents"] = list()
	data["contents_ref"] = list()
	for(var/Content in src)
		data["contents"] += "[Content]"
		data["contents_ref"] += "[REF(Content)]"

	return data

/obj/item/folder/ui_act(action, params)
	. = ..()
	if(.)
		return

	if(usr.stat != CONSCIOUS)
		return

	switch(action)
		// Take item out
		if("remove")
			var/obj/item/Item = locate(params["ref"]) in src
			remove_item(Item, usr)
			. = TRUE
		// Inspect the item
		if("examine")
			var/obj/item/Item = locate(params["ref"]) in src
			if(istype(Item))
				usr.examinate(Item)
				. = TRUE
