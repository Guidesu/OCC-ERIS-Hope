/*
 * Contains:
 *		Security
 *		Detective
 *		Aegis Commander
 */

/*
 * Security
 */
/obj/item/clothing/under/rank/warden
	desc = "A durable supply specialist's jumpsuit, designed to provide moderate combat protection."
	name = "supply specialist's jumpsuit"
	icon_state = "warden"
	item_state = "r_suit"
	siemens_coefficient = 0.8

<<<<<<< HEAD
/obj/item/clothing/under/rank/warden/skirt
	name = "Gunnery Sergeant jumpskirt"
	desc = "It's made of a slightly sturdier material than standard jumpskirts, to allow for more robust protection. It has the words \"Gunnery Sergeant\" written on the shoulders."
	icon_state = "warden_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
=======
/obj/item/clothing/under/rank/warden/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["specialist jumpsuit"] = "warden"
	options["specialist jumpskirt"] = "warden_skirt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/head/rank/warden
	name = "supply specialist's helmet"
	desc = "A distinctive red military helmet signifying a supply specialist rank."
	icon_state = "policehelm"
	body_parts_covered = NONE

/obj/item/clothing/under/rank/security
<<<<<<< HEAD
	name = "Cobalt Operative jumpsuit"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
=======
	name = "marshal officer's jumpsuit"
	desc = "A durable officer's jumpsuit, designed to provide moderate combat protection."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "security"
	item_state = "ba_suit"
	siemens_coefficient = 0.8

<<<<<<< HEAD
/obj/item/clothing/under/rank/security/turtleneck
	name = "Cobalt Operative's turtleneck" //Occulus Edit - I blame whoever made this non-modular in the first place
	desc = "Military style turtleneck, made of a slightly sturdier material than standard jumpsuits, to allow for robust protection"
	icon_state = "securityrturtle"

/obj/item/clothing/under/rank/security/skirt
	name = "Cobalt Operative jumpskirt"
	desc = "It's made of a slightly sturdier material than standard jumpskirts, to allow for robust protection."
	icon_state = "security_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/medspec
	name = "Medical Specialist jumpsuit"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection. It has the words \"Medical Specialist\" written on the shoulders."
	icon_state = "medspec"
	item_state = "ba_suit"
	siemens_coefficient = 0.8

/obj/item/clothing/under/rank/medspec/skirt
	name = "Medical Specialist jumpskirt"
	desc = "It's made of a slightly sturdier material than standard jumpskirts, to allow for robust protection. It has the words \"Medical Specialist\" written on the shoulders."
	icon_state = "medspec_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
=======
/obj/item/clothing/under/rank/security/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["officer default"] = "security"
	options["officer jumpskirt"] = "security_skirt"
	options["officer turtleneck"] = "securityrturtle"
	options["cadet default"] = "seccadet"
	options["cadet jumpskirt"] = "cadet"
	options["cadet alt"] = "seccadetalt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/under/tactical
	name = "tactical turtleneck"
	desc = "A reinforced military turtleneck, designed to provide moderate combat protection."
	icon_state = "syndicate"
	siemens_coefficient = 0.8

/obj/item/clothing/under/rank/bdu/marshal
	name = "marshal officer's BDU"
	desc = "A durable officer's Battle Dress Uniform, designed to provide moderate combat protection."
	icon_state = "bdumarshal"
	item_state = "bdumarshal"

/obj/item/clothing/under/rank/bdu/marshal/verb/toggle_style()
	set name = "Adjust style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["suit up"] = ""
	options["suit down"] = "_pants"
	options["sleeves up"] = "_rolled"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		var/base = initial(icon_state)
		base += options[choice]
		icon_state = base
		item_state = base
		item_state_slots = null
		to_chat(M, "You roll your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/*
 * Detective
 */
/obj/item/clothing/under/rank/inspector
<<<<<<< HEAD
	name = "inspector's suit"
	desc = "Casual turtleneck and jeans, civilian clothes of the Aegis Inspector."
	icon_state = "insp_under"
	item_state = "insp_under"
	siemens_coefficient = 0.8
	no_fibers = TRUE	// OCCULUS EDIT

/obj/item/clothing/under/rank/det
	name = "inspector's suit"
	desc = "A rumpled white dress shirt paired with well-worn grey slacks, complete with a blue striped tie and a faux-gold tie clip."
	icon_state = "detective"
	item_state = "det"
	siemens_coefficient = 0.8
	no_fibers = TRUE	// OCCULUS EDIT

/obj/item/clothing/under/rank/det/black
	icon_state = "detective3"
	//item_state = "sl_suit"
	desc = "An immaculate white dress shirt, paired with a pair of dark grey dress pants, a red tie, and a charcoal vest."

/obj/item/clothing/head/det
=======
	name = "ranger's turtleneck"
	desc = "A casual turtleneck and jeans serving as civilian ranger clothing."
	icon_state = "insp_under"
	item_state = "insp_under"
	siemens_coefficient = 0.8

/obj/item/clothing/under/rank/inspector/verb/toggle_style()
	set name = "Adjust style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Ranger's Turtleneck"] = "detective"
	options["Patrol Uniform"] = "det_corporate"
	options["Detective Pants"] = "detective"
	options["Detective Skirt"] = "detective_f"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1 //Or you could just use this instead of making another subtype just for races

/obj/item/clothing/head/rank/inspector
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "fedora"
	desc = "A brown fedora - either the cornerstone of a detective's style or a poor attempt at looking cool, depending on the person wearing it."
	icon_state = "detective"
	item_state_slots = list(
		slot_l_hand_str = "det_hat",
		slot_r_hand_str = "det_hat",
		)
	allowed = list(/obj/item/reagent_containers/food/snacks/candy_corn, /obj/item/pen)
<<<<<<< HEAD
	armor = list(
=======
	armor_list = list(
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		melee = 10,
		bullet = 0,
		energy = 0,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	siemens_coefficient = 0.8
<<<<<<< HEAD
	body_parts_covered = NONE
=======
	body_parts_covered = 0
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/head/rank/inspector/verb/toggle_style()
	set name = "Adjust style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Brown"] = "detective"
	options["Black"] = "detective3"
	options["Gray"] = "detective2"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1 //Or you could just use this instead of making another subtype just for races


/*
 * Aegis Commander
 */
/obj/item/clothing/under/rank/ih_commander
<<<<<<< HEAD
	desc = "It's a jumpsuit worn by those few with the dedication to achieve the position of \"Aegis Commander\"."
	name = "Aegis Cobalt Commander's jumpsuit"
=======
	desc = "It's a jumpsuit worn by those few with the dedication to achieve the position of \"Warrant Officer\". It has additional armor to protect the wearer."
	name = "warrant officer's jumpsuit"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "hos"
	item_state = "r_suit"
	siemens_coefficient = 0.8

<<<<<<< HEAD
/obj/item/clothing/under/rank/ih_commander/skirt
	name = "Aegis Cobalt Commander's jumpskirt"
	desc = "It's a jumpskirt worn by those few with the dedication to achieve the position of \"Aegis Commander\"."
	icon_state = "hos_skirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/head/HoS
	name = "Aegis Cobalt Commander Hat"
	desc = "The hat of the Aegis Commander. For showing the officers who's in charge."
	icon_state = "hoshat"
	body_parts_covered = NONE
	siemens_coefficient = 0.8
	rarity_value = 50

/*
 * Navy uniforms
 */
/obj/item/clothing/under/rank/cadet
	name = "Cobalt Cadet jumpskirt"
	desc = "It's a sailor's uniform used for cadets in training, though more frequently in acts of hazing."
	icon_state = "cadet"
	item_state = "cadet"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
=======
/obj/item/clothing/under/rank/ih_commander/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["wo jumpsuit"] = "hos"
	options["wo jumpskirt"] = "hos_skirt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/head/rank/commander
	name = "warrant officer's Hat"
	desc = "The hat of the Warrant Officer. For showing the officers who's in charge."
	icon_state = "hoshat"
	body_parts_covered = 0
	siemens_coefficient = 0.6

/obj/item/clothing/head/rank/mcommander
	name = "commander's Hat"
	desc = "The hat of the blackshield commander. Has a scent of napalm. Smells like victory."
	icon_state = "hoshat"
	body_parts_covered = 0
	siemens_coefficient = 0.6

//Jensen cosplay gear
/obj/item/clothing/under/rank/jensen
	desc = "You never asked for anything that stylish."
	name = "stylish augmented jumpsuit"
	icon_state = "jensen"
	item_state = "jensen"

/obj/item/clothing/suit/armor/jensen
	name = "armored trenchcoat"
	desc = "A trenchcoat augmented with a special alloy for some protection and style."
	icon_state = "jensencoat"
	item_state = "jensencoat"
	flags_inv = 0
	body_parts_covered = UPPER_TORSO|ARMS

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
