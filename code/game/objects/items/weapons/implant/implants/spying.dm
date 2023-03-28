/obj/item/implanter/spying
	name = "implanter (S)"
	implant = /obj/item/implant/spying
<<<<<<< HEAD
	spawn_tags = null
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e


/obj/item/implant/spying
	name = "spying implant"
<<<<<<< HEAD
	icon_state = "implant_tracking"
	implant_overlay = "implantstorage_tracking"
=======
	icon_state = "implant_uplink"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	is_legal = FALSE
	var/timer
	var/datum/mind/owner
	cruciform_resist = TRUE

<<<<<<< HEAD
=======
	overlay_icon = "uplink"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/spying/attack_self(mob/user)
	if(owner == user.mind)
		return
	owner = user.mind
	to_chat(user, "You claim \the [src].")

/obj/item/implant/spying/on_install()
	timer = addtimer(CALLBACK(src, .proc/report), 1 MINUTES, TIMER_STOPPABLE)

/obj/item/implant/spying/on_uninstall()
	deltimer(timer)

/obj/item/implant/spying/proc/report()
	if(!wearer)
		return
	for(var/datum/antag_contract/implant/C in GLOB.various_antag_contracts)
		if(C.completed)
			continue
		C.check(src)
	cruciform_resist = FALSE
