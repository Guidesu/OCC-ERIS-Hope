<<<<<<< HEAD
/obj/item/implantpad
	name = "implant pad"
=======
//This file was auto-corrected by findeclaration.exe on 25.5.2012 20:42:32

/obj/item/implantpad
	name = "implantpad"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	desc = "Used to modify implants."
	icon = 'icons/obj/items.dmi'
	icon_state = "implantpad-0"
	item_state = "electronic"
	throw_speed = 1
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	var/obj/item/implantcase/case = null
<<<<<<< HEAD


/obj/item/implantpad/on_update_icon()
	cut_overlays()
	if(case)
		icon_state = "implantpad-1"
		if(case.implant)
			var/image/content = image('icons/obj/items.dmi', icon_state = case.implant.implant_overlay, pixel_x = 7, pixel_y = -6)
			add_overlay(content)
=======
	var/broadcasting = null
	var/listening = 1.0


/obj/item/implantpad/proc/update()
	cut_overlays()
	if (src.case)
		if(src.case.implant)
			if(istype(src.case.implant, /obj/item/implant))
				src.icon_state = "implantpad-1"
				add_overlay("implant_[case.implant:overlay_icon]")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	else
		icon_state = "implantpad-0"

<<<<<<< HEAD
/obj/item/implantpad/attack_hand(mob/living/user)
=======

/obj/item/implantpad/attack_hand(mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if ((src.case && (user.l_hand == src || user.r_hand == src)))
		user.put_in_active_hand(case)
		case = null

		add_fingerprint(user)
		update_icon()
	else
		return ..()
	return


<<<<<<< HEAD
/obj/item/implantpad/attackby(obj/item/implantcase/C, mob/living/user)
	..()
	if(istype(C, /obj/item/implantcase))
		if(!case)
			user.drop_item()
			C.forceMove(src)
			case = C
			update_icon()
	return


/obj/item/implantpad/attack_self(mob/living/user)
	user.set_machine(src)
	var/dat = "<B>Implant Mini-Computer:</B><HR>"
	if(case)
		if(case.implant)
			dat += case.implant.get_data()
=======
/obj/item/implantpad/attackby(obj/item/implantcase/C as obj, mob/user as mob)
	..()
	if(istype(C, /obj/item/implantcase))
		if(!( src.case ))
			user.drop_item()
			C.loc = src
			src.case = C
			src.update()
	return


/obj/item/implantpad/attack_self(mob/user as mob)
	user.set_machine(src)
	var/dat = "<B>Implant Mini-Computer:</B><HR>"
	if (src.case)
		if(src.case.implant)
			if(istype(src.case.implant, /obj/item/implant))
				dat += src.case.implant.get_data()
				if(istype(src.case.implant, /obj/item/implant/tracking))
					dat += {"ID (1-100):
					<A href='byond://?src=\ref[src];tracking_id=-10'>-</A>
					<A href='byond://?src=\ref[src];tracking_id=-1'>-</A> [case.implant:id]
					<A href='byond://?src=\ref[src];tracking_id=1'>+</A>
					<A href='byond://?src=\ref[src];tracking_id=10'>+</A><BR>"}
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		else
			dat += "The implant casing is empty."
	else
		dat += "Please insert an implant casing!"
	user << browse(dat, "window=implantpad")
	onclose(user, "implantpad")
	return


/obj/item/implantpad/Topic(href, href_list)
	..()
	if (usr.stat)
		return
	if ((usr.contents.Find(src)) || ((in_range(src, usr) && istype(src.loc, /turf))))
		usr.set_machine(src)
<<<<<<< HEAD
=======
		if (href_list["tracking_id"])
			var/obj/item/implant/tracking/T = src.case.implant
			T.id += text2num(href_list["tracking_id"])
			T.id = min(100, T.id)
			T.id = max(1, T.id)

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if (ismob(loc))
			attack_self(src.loc)
		else
			for(var/mob/M in viewers(1, src))
				if (M.client)
					src.attack_self(M)
		src.add_fingerprint(usr)
	else
		usr << browse(null, "window=implantpad")
		return
	return
