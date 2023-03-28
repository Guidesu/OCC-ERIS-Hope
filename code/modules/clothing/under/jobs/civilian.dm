//Alphabetical order of civilian jobs.
/obj/item/clothing/under/rank/assistant
	desc = "A standard-issue black and orange colonist uniform."
	name = "colonist's uniform"
	icon_state = "assistant"
	item_state = "assistant"

/obj/item/clothing/under/rank/assistant/formal
	name = "colonist's formal uniform"
	desc = "An assistant's formal-wear. Why an assistant needs formal-wear is still unknown."
	icon_state = "assistant_formal"
	item_state = "gy_suit"

/obj/item/clothing/under/rank/bartender
<<<<<<< HEAD
	desc = "Expensive shirt and tie with tailored pants."
=======
	desc = "An expensive shirt and tie with tailored pants."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "bartender's uniform"
	icon_state = "ba_suit"
	item_state = "ba_suit"

<<<<<<< HEAD
/obj/item/clothing/under/rank/bartender/skirt
	desc = "Expensive shirt and tie with a tailored skirt."
	name = "bartender's skirtsuit"
	icon_state = "ba_skirt"
	item_state = "ba_skirt"
=======
/obj/item/clothing/under/rank/bartender/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["bartender's uniform"] = "ba_suit"
	options["bartender's skirtsuit"] = "ba_skirt"
	options["waiter's skirtsuit"] = "waiter_skirt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjust your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/under/rank/captain //Alright, technically not a 'civilian' but its better then giving a .dm file for a single define.
	desc = "An authoritative green uniform with gold flair denoting the rank of Premier."
	name = "premier's uniform"
	icon_state = "captain"
	item_state = "b_suit"

<<<<<<< HEAD
=======
/obj/item/clothing/under/rank/captain/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["premier's uniform"] = "captain"
	options["premier's formal uniform"] = "captain_formal"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjust your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/clothing/under/rank/cargotech
	name = "lonestar cargo uniform"
	desc = "A grey and orange Lonestar jumpsuit to fit Lonestar regulations."
	icon_state = "cargotech"
<<<<<<< HEAD
	item_state = "lb_suit"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/preacher
	desc = "Ceremonial garb of Mekhane preachers."
	name = "preacher vestments"
	icon_state = "preacher"
	item_state = "w_suit"

/obj/item/clothing/under/rank/acolyte
	desc = "Ceremonial garb of Mekhane disciples."
	name = "acolyte vestments"
	icon_state = "acolyte"
	item_state = "acolyte"

=======
	item_state = "miner"

	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/cargoclerk
	name = "lonestar office uniform"
	desc = "A grey and orange Lonestar suit to fit Lonestar regulations."
	icon_state = "cargoclerk"
	item_state = "miner"

	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/under/rank/preacher
	desc = "A dark ceremonial robe tailored for Primes."
	name = "prime's robe"
	icon_state = "preacher"
	item_state = "w_suit"


/obj/item/clothing/under/rank/preacher/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Preacher"] = "preacher"
	options["Preacher Basic"] = "preacher_basic"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You roll your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/under/rank/acolyte
	desc = "Ceremonial garb of the Absolute's vectors."
	name = "vector's vestments"
	icon_state = "acolyte"
	item_state = "acolyte"

/obj/item/clothing/under/rank/acolyte/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Acolyte"] = "acolyte"
	options["Acolyte Basic"] = "acolyte_basic"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You roll your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/clothing/under/rank/church
	desc = "Smells like incense."
	name = "church vestments"
	icon_state = "church"
	item_state = "church"

<<<<<<< HEAD
/obj/item/clothing/under/rank/church/sport
	desc = "Smells like lilac."
	name = "church sports vestment"
	icon_state = "nt_sports"
	item_state = "nt_sports"
=======
/obj/item/clothing/under/rank/church/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Vestments"] = "church"
	options["Vestments Basic"] = "church_basic"
	options["Vestments Sports"] = "nt_sports"
	options["Vestments Sports"] = "nt_sports"
	options["Vestments Robe"] = "churchgrobe"
	options["Vestments Ornate Robe"] = "nt_ornate"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You roll your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/under/rank/church/toga
	desc = "Smells like laurel wreath."
	name = "church toga"
	icon_state = "numerical_garbs_red"

/obj/item/clothing/under/rank/church/toga/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Red"] = "numerical_garbs_red"
	options["Red Pauldronless"] = "churchtoga_alt"
	options["Black"] = "churchtoga_black"
	options["Black Pauldronless"] = "churchtoga_blackalt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You roll your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/under/rank/chef
	desc = "A pleasant yet practical suit for professional kitchen staff."
	name = "chef's uniform"
	icon_state = "chef"
	item_state = "w_suit"

<<<<<<< HEAD
/obj/item/clothing/under/rank/artist
	name = "Jester's Garments"
	desc = "The bright colors are almost distracting."
	icon_state = "artist"
	item_state = "artist"
	spawn_frequency = 0

/obj/item/clothing/under/rank/clown
	name = "clown suit"
	desc = "<i>'HONK!'</i>"
	icon_state = "clown"
	item_state = "clown"

/obj/item/clothing/under/rank/first_officer
	desc = "It's a jumpsuit worn by a person with the title \"Head of Personnel\"."
	name = "head of personnel's jumpsuit"
	icon_state = "hop"
	item_state = "b_suit"

/obj/item/clothing/under/rank/hydroponics
	desc = "It's a jumpsuit designed to protect against minor plant-related hazards."
=======
/obj/item/clothing/under/rank/first_officer
	desc = "A tan shirt with a Steward's badge, worn alongside some black leggings."
	name = "steward's uniform"
	icon_state = "hop"
	item_state = "b_suit"

/obj/item/clothing/under/rank/first_officer/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["steward's uniform"] = "hop"
	options["steward's skirt"] = "hop_skirt"
	options["steward's suit"] = "teal_suit"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		item_state_slots = null
		to_chat(M, "You adjust your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/under/rank/botanist
	desc = "A hardy dark green jumpsuit, designed to provide protection from botanic dangers."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "botanist's jumpsuit"
	icon_state = "hydroponics"
	item_state = "g_suit"
	permeability_coefficient = 0.50

/obj/item/clothing/under/rank/janitor
<<<<<<< HEAD
	desc = "It's the official uniform of the ship's janitor."
=======
	desc = "A sturdy janitorial jumpsuit, designed to provide minor protection from biohazards."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "janitor's jumpsuit"
	icon_state = "janitor"
	item_state = "janitor"
	permeability_coefficient = 0.50
<<<<<<< HEAD
	armor = list(
=======
	armor_list = list(
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		melee = 0,
		bullet = 0,
		energy = 0,
		bomb = 0,
		bio = 10,
		rad = 0
	)
<<<<<<< HEAD

/obj/item/clothing/under/librarian
	name = "sensible suit"
	desc = "It's very... sensible."
	icon_state = "red_suit"
	item_state = "lawyer_red"

/obj/item/clothing/under/mime
	name = "mime's outfit"
	desc = "It's not very colourful."
	icon_state = "mime"
	item_state = "ba_suit"

=======

/obj/item/clothing/under/rank/artist
	name = "Jester's Garments"
	desc = "The bright colors are almost distracting."
	icon_state = "artist"
	item_state = "artist"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/clothing/under/rank/miner
	desc = "A snappy Lonestar jumpsuit to handle the harshness of the mines."
	name = "lonestar miner uniform"
	icon_state = "miner"
<<<<<<< HEAD
	item_state = "lb_suit"
=======
	item_state = "miner"

/obj/item/clothing/under/outcast
	name = "tactical baggy rags"
	desc = "A jury rugged set of baggy pants with leather reinforcement paddings and other fibers, as comfortable as clothes can get when made by whatever you scavenged off the land."
	icon_state = "tactical_rags"
	item_state = "tactical_rags"
	armor_list = list(melee = 5, bullet = 0, energy = 10, bomb = 0, bio = 0, rad = 5)

/obj/item/clothing/under/rank/lonestar_gorka
	name = "lonestar gorka jumpsuit"
	desc = "A gorka suit painted over with Lonestar orange and black."
	icon_state = "ls_gorka"
	item_state = "ls_gorka"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
