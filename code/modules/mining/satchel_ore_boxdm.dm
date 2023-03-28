
/**********************Ore box**************************/

/obj/structure/ore_box
	icon = 'icons/obj/mining.dmi'
	icon_state = "orebox0"
	name = "ore box"
	desc = "A heavy box used for storing ore."
<<<<<<< HEAD
	density = TRUE
	rarity_value = 10
	spawn_tags = SPAWN_TAG_STRUCTURE_COMMON
	var/last_update = 0
	var/list/stored_ore = list()

/obj/structure/ore_box/attackby(obj/item/W, mob/user)
	if (istype(W, /obj/item/ore))
		user.remove_from_mob(W)
		src.contents += W
	if (istype(W, /obj/item/storage))
		var/obj/item/storage/S = W
		S.hide_from(usr)
		if (locate(/obj/item/ore) in S.contents)
			for(var/obj/item/ore/O in S.contents)
=======
	density = 1

/obj/structure/ore_box/attackby(obj/item/W as obj, mob/user as mob)
	if (istype(W, /obj/item/stack/ore))
		user.remove_from_mob(W)
		W.forceMove(src)
	if (istype(W, /obj/item/storage))
		var/obj/item/storage/S = W
		S.hide_from(usr)
		if (locate(/obj/item/stack/ore) in S.contents)
			for(var/obj/item/stack/ore/O in S.contents)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
				S.remove_from_storage(O, src) //This will move the item to this item's contents
			playsound(loc, S.use_sound, 50, 1, -5)
			user.visible_message(SPAN_NOTICE("[user.name] empties the [S] into the box"), SPAN_NOTICE("You empty the [S] into the box."), SPAN_NOTICE("You hear a rustling sound"))
		else
			to_chat(user, SPAN_WARNING("There's no ore inside the [S] to empty into here"))
<<<<<<< HEAD
	update_ore_count()

	return

/obj/structure/ore_box/proc/update_ore_count()

	stored_ore = list()

	for(var/obj/item/ore/O in contents)

		if(stored_ore[O.name])
			stored_ore[O.name]++
		else
			stored_ore[O.name] = 1

/obj/structure/ore_box/examine(mob/user)
	to_chat(user, "That's an [src].")
	to_chat(user, desc)

	// Borgs can now check contents too.
	if((!ishuman(user)) && (!isrobot(user)))
		return

	if(!Adjacent(user)) //Can only check the contents of ore boxes if you can physically reach them.
		return

	add_fingerprint(user)

	if(!contents.len)
		to_chat(user, "It is empty.")
		return

	if(world.time > last_update + 10)
		update_ore_count()
		last_update = world.time

	to_chat(user, "It holds:")
	for(var/ore in stored_ore)
		to_chat(user, "- [stored_ore[ore]] [ore]")
	return

=======

	return

/obj/structure/ore_box/examine(mob/user)
	..()
	to_chat(user, SPAN_NOTICE("The box contains:"))
	var/list/nice_display_list = list()
	for(var/type in contents)
		var/obj/item/stack/ore/O = type
		nice_display_list[initial(O.name)] += O.amount
	for(var/element in nice_display_list)
		var/numtoshow = nice_display_list[element]
		to_chat(user, SPAN_NOTICE("[numtoshow] of [element]"))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/structure/ore_box/verb/empty_box()
	set name = "Empty Ore Box"
	set category = "Object"
	set src in view(1)

<<<<<<< HEAD
	if(!ishuman(usr)) //Only living, intelligent creatures with hands can empty ore boxes.
=======
	if(!ishuman(usr) && !isrobot(usr)) //Only living, intelligent creatures with hands can empty material boxes.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		to_chat(usr, "\red You are physically incapable of emptying the ore box.")
		return

	if( usr.stat || usr.restrained() )
		return

	if(!Adjacent(usr)) //You can only empty the box if you can physically reach it
		to_chat(usr, "You cannot reach the ore box.")
		return

	add_fingerprint(usr)

	if(contents.len < 1)
		to_chat(usr, "\red The ore box is empty")
		return

<<<<<<< HEAD
	for (var/obj/item/ore/O in contents)
		contents -= O
		O.loc = src.loc
	to_chat(usr, "\blue You empty the ore box")
=======

	dump_box_contents()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	return


/obj/structure/ore_box/proc/dump_box_contents(drop_loc = null)
	var/drop = drop_loc ? drop_loc : drop_location()
	for(var/obj/item/stack/ore/O in src)
		if(QDELETED(O))
			continue
		if(QDELETED(src))
			break
		O.forceMove(drop)
		if(TICK_CHECK)
			stoplag()
			drop = drop_loc ? drop_loc : drop_location()

/obj/structure/ore_box/ex_act(severity)
	if(severity == 1.0 || (severity < 3.0 && prob(50)))
<<<<<<< HEAD
		for (var/obj/item/ore/O in contents)
=======
		for (var/obj/item/stack/ore/O in contents)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			O.loc = src.loc
			O.ex_act(severity++)
		qdel(src)
		return
