#define INSTALL_HANDS 0
#define INSTALL_FOOTS 1

/obj/item/implant/freedom
	name = "freedom implant"
<<<<<<< HEAD
	desc = "Use this if you ever get tied up. Has a cooldown of ten minutes."
	icon_state = "implant_freedom"
	implant_overlay = "implantstorage_freedom"
=======
	desc = "Use this to escape from those evil Red Shirts."
	icon_state = "implant_freedom"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/activation_emote = "chuckle"
	var/uses = 1.0
	var/install_organ = INSTALL_HANDS
	is_legal = FALSE
	origin_tech = list(TECH_COMBAT=5, TECH_MAGNET=3, TECH_BIO=4, TECH_COVERT=2)
	allowed_organs = list(BP_L_HAND, BP_R_HAND, BP_L_FOOT, BP_R_FOOT)

<<<<<<< HEAD
=======
	overlay_icon = "freedom"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/freedom/trigger(emote, mob/living/carbon/source)
	if (src.uses < 1)
		to_chat (source, "You don't feel anything")
		return
	if (emote == src.activation_emote)
		src.uses--
<<<<<<< HEAD
		spawn(10 MINUTES)
			src.uses++
		to_chat(source, "You feel a faint click.")
=======
		to_chat(source, "You feel a faint click.")
		log_and_message_admins(" - Freedom implant used at \the [jumplink(src)] X:[src.x] Y:[src.y] Z:[src.z] User:[source]") //So we can go to it
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if (source.handcuffed && install_organ == INSTALL_HANDS)
			var/obj/item/W = source.handcuffed
			source.handcuffed = null
			if(source.buckled && source.buckled.buckle_require_restraints)
				source.buckled.unbuckle_mob()
			source.update_inv_handcuffed()
			if (source.client)
				source.client.screen -= W
			if (W)
				W.loc = source.loc
				dropped(source)
				if (W)
					W.layer = initial(W.layer)
		if (source.legcuffed && install_organ == INSTALL_FOOTS)
			var/obj/item/W = source.legcuffed
			source.legcuffed = null
			source.update_inv_legcuffed()
			if (source.client)
				source.client.screen -= W
			if (W)
				W.loc = source.loc
				dropped(source)
				if (W)
					W.layer = initial(W.layer)

/obj/item/implant/freedom/on_install(mob/living/carbon/source, obj/item/organ/O)
<<<<<<< HEAD
	if(O.organ_tag in list(BP_L_FOOT, BP_R_FOOT))
=======
	if(O.organ_tag in list(BP_L_LEG, BP_R_LEG))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		install_organ = INSTALL_FOOTS

/obj/item/implant/freedom/on_install(mob/living/source)

	activation_emote = input("Choose activation emote:") in list("blink", "blink_r", "eyebrow", "chuckle", "twitch_s", "frown", "nod", "blush", "giggle", "grin", "groan", "shrug", "smile", "pale", "sniff", "whimper", "wink")
<<<<<<< HEAD
	uses = 1
=======
	uses = rand(2, 5)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	if(source.mind)
		source.mind.store_memory("Freedom matter implant can be activated by using the [src.activation_emote] emote, <B>say *[src.activation_emote]</B> to attempt to activate.", 0, 0)
	to_chat(source, "The freedom implant can be activated by using the [src.activation_emote] emote, <B>say *[src.activation_emote]</B> to attempt to activate.")

/obj/item/implant/freedom/get_data()
	var/data = {"
		<b>Implant Specifications:</b><BR>
		<b>Name:</b> Freedom Beacon<BR>
		<b>Life:</b> optimum 5 uses<BR>
		<b>Important Notes:</b> <font color='red'>Illegal</font><BR>
		<HR>
		<b>Implant Details:</b> <BR>
		<b>Function:</b> Transmits a specialized cluster of signals to override handcuff locking
		mechanisms<BR>
		<b>Special Features:</b><BR>
		<i>Neuro-Scan</i>- Analyzes certain shadow signals in the nervous system<BR>
		<b>Integrity:</b> The battery is extremely weak and commonly after injection its
		life can drive down to only 1 use.<HR>
		No Implant Specifics"}
	return data

/obj/item/implantcase/freedom
	name = "glass case - 'freedom'"
	desc = "A case containing a freedom implant."
	implant = /obj/item/implant/freedom

/obj/item/implanter/freedom
	name = "implanter (freedom)"
	implant = /obj/item/implant/freedom
<<<<<<< HEAD
	spawn_tags = null
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
