/*
 * Job related
 */

//Assistant
/obj/item/clothing/suit/storage/rank/ass_jacket
	name = "colonist jacket"
	desc = "Practical and comfortable jacket. It seems have a little protection from physical harm."
	icon_state = "ass_jacket"
	item_state = "ass_jacket"
	blood_overlay_type = "coat"
<<<<<<< HEAD
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	rarity_value = 5
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/artist
	name = "Complicated Vest"
	desc = "The tubes don't even do anything."
	icon_state = "artist"
	item_state = "artist_armor"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	rarity_value = 0
	armor = list(
		melee = 5,
		bullet = 0,
		energy = 0,
=======
	body_parts_covered = UPPER_TORSO|ARMS
	armor_list = list(
		melee = 5,
		bullet = 5,
		energy = 5,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		bomb = 0,
		bio = 0,
		rad = 0
	)
<<<<<<< HEAD
	spawn_frequency = 0

//Guild Technician
/obj/item/clothing/suit/storage/cargo_jacket
	name = "union technician jacket"
=======

//Guild Technician
/obj/item/clothing/suit/storage/rank/cargo_jacket
	name = "lonestar jacket"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	desc = "Stylish jacket lined with pockets. It seems have a little protection from physical harm."
	icon_state = "cargo_jacket"
	item_state = "cargo_jacket"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
<<<<<<< HEAD
	rarity_value = 5
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 10,
=======
	armor_list = list(
		melee = 5,
		bullet = 5,
		energy = 5,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		bomb = 0,
		bio = 0,
		rad = 0
	)
<<<<<<< HEAD

//Quartermaster
/obj/item/clothing/suit/storage/qm_coat
	name = "union merchant coat"
=======

/obj/item/clothing/suit/storage/rank/cargoclerk_jacket
	name = "lonestar office jacket"
	desc = "Stylish jacket lined for lonestar office workers. It seems have a little protection from physical harm."
	icon_state = "cargoclerk_jacket"
	item_state = "cargo_jacket"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	armor_list = list(
		melee = 5,
		bullet = 5,
		energy = 5,
		bomb = 0,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/storage/cargovest
	name = "lonestar hazard vest"
	desc = "A Lonestar hazard vest in grey and orange to be used in work zones."
	icon_state = "cargovest"
	item_state = "hazard"
	blood_overlay_type = "armor"
	extra_allowed = list(/obj/item/tool)
	body_parts_covered = UPPER_TORSO
	armor_list = list(
		melee = 10,
		bullet = 10,
		energy = 5,
		bomb = 0,
		bio = 0,
		rad = 0
)

/obj/item/clothing/suit/storage/cargovest/verb/toggle_style()
	set name = "Adjust style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["standard"] = ""
	options["alt style"] = "_color"

	var/choice = input(M,"How would you like to wear your vest?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		var/base = initial(icon_state)
		base += options[choice]
		icon_state = base
		item_state = base
		item_state_slots = null
		to_chat(M, "You alter your [choice].")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

//Quartermaster
/obj/item/clothing/suit/storage/rank/qm_coat
	name = "executive officer coat"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	desc = "An ideal choice for a smuggler. This coat seems have good impact resistance, and is made from resistant and expensive materials."
	icon_state = "qm_coat"
	item_state = "qm_coat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
<<<<<<< HEAD
	rarity_value = 25
	armor = list(
		melee = 30,
		bullet = 20,
		energy = 20,
=======
	armor_list = list(
		melee = 20,
		bullet = 10,
		energy = 5,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		bomb = 0,
		bio = 0,
		rad = 0
	)
	siemens_coefficient = 0.8

<<<<<<< HEAD
//Botanist
/obj/item/clothing/suit/apron
=======
//Botonist
/obj/item/clothing/suit/rank/botanist
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	name = "apron"
	desc = "A basic yellow apron."
	icon_state = "apron"
	item_state = "apron"
	blood_overlay_type = "armor"
	body_parts_covered = 0
<<<<<<< HEAD
	spawn_blacklisted = TRUE
	extra_allowed = list(
		/obj/item/seeds,
		/obj/item/reagent_containers/glass/bottle,//Occulus Edit
=======
	extra_allowed = list(
		/obj/item/seeds,
		/obj/item/reagent_containers/glass/fertilizer,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		/obj/item/weedkiller
	)

//Civillian
/obj/item/clothing/suit/storage/toggle/club
<<<<<<< HEAD
	name = "Manager's jacket"
	desc = "A well tailored and rich jacket of the club manager"
=======
	name = "chief executive officer's jacket"
	desc = "A well tailored and rich jacket for the Chief Executive Officer."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "cm_coat"
	item_state = "cm_coat"
	icon_open = "cm_coat_open"
	icon_closed = "cm_coat"
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7
<<<<<<< HEAD
	spawn_blacklisted = TRUE

//Chaplain
/obj/item/clothing/suit/storage/neotheology_jacket
	name = "acolyte jacket"
	desc = "A long, lightly armoured jacket. Dark, stylish, and authoritarian."
	icon_state = "chaplain_hoodie"
	item_state = "chaplain_hoodie"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	spawn_blacklisted = TRUE
	armor = list(
		melee = 20,
		bullet = 15,
		energy = 15,
		bomb = 0,
		bio = 50,  //same as labcoats at LEAST
		rad = 0
	)

/obj/item/clothing/suit/storage/neotheology_coat
	name = "preacher coat"
	desc = "A snugly fitting, lightly armoured brown coat."
	icon_state = "church_coat"
	item_state = "church_coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	spawn_blacklisted = TRUE
	matter = list(MATERIAL_BIOMATTER = 20, MATERIAL_GOLD = 5)
	armor = list(
		melee = 30,
		bullet = 20,
		energy = 20,
		bomb = 0,
		bio = 50,  //same as labcoats at LEAST
		rad = 0
	)

/obj/item/clothing/suit/storage/neotheosports
	name = "Mekhane sports jacket"
	desc = "Mekhane styled sports jacket to keep the faithful always on their feet."
	icon_state = "nt_sportsjacket"
	item_state = "nt_sportsjacket"
	body_parts_covered = UPPER_TORSO|ARMS
	spawn_blacklisted = TRUE
	armor = list(
		melee = 25,
		bullet = 10,
		energy = 20,
		bomb = 0,
		bio = 0,
		rad = 0
	)

//Chaplain
/obj/item/clothing/suit/nun
	name = "nun robe"
	desc = "Maximum piety in this star system."
	icon_state = "nun"
	item_state = "nun"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDESHOES|HIDEJUMPSUIT
	spawn_blacklisted = TRUE
=======

//Artist
/obj/item/clothing/suit/artist
	name = "Complicated Vest"
	desc = "The tubes don't even do anything."
	icon_state = "artist"
	item_state = "artist_armor"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor_list = list(
		melee = 10,
		bullet = 5,
		energy = 0,
		bomb = 0,
		bio = 0,
		rad = 0
	)

//Chaplain
/obj/item/clothing/suit/storage/chaplain
	name = "prime longcoat"
	desc = "A long, lightly armoured jacket. Dark, stylish and authoritarian."
	icon_state = "chaplain_hoodie"
	item_state = "chaplain_hoodie"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	permeability_coefficient = 0.50
	siemens_coefficient = 0.7
	matter = list(MATERIAL_BIOMATTER = 20, MATERIAL_GOLD = 5)
	armor_list = list(
		melee = 20,
		bullet = 20,
		energy = 10,
		bomb = 30,
		bio = 100,
		rad = 100
	)

/obj/item/clothing/suit/storage/neotheosports
	name = "church sports jacket"
	desc = "Absolutism styled sports jacket to keep the faithful always on their feet."
	icon_state = "nt_sportsjacket"
	item_state = "nt_sportsjacket"
	body_parts_covered = UPPER_TORSO|ARMS
	armor_list = list(
		melee = 15,
		bullet = 10,
		energy = 5,
		bomb = 0,
		bio = 100,
		rad = 75
	)

/obj/item/clothing/suit/storage/chaplain/holiday
	name = "holiday priest"
	desc = "A garment worn seasonally by chaplains."
	icon_state = "holidaypriest"
	item_state_slots = list(slot_r_hand_str = "labcoat", slot_l_hand_str = "labcoat")

/obj/item/clothing/suit/storage/chaplain/coat
	name = "preacher coat"
	desc = "A snugly fitting, lightly armoured brown coat."
	icon_state = "church_coat"
	item_state = "church_coat"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

//Chef
/obj/item/clothing/suit/rank/chef
	name = "chef's apron"
	desc = "An apron used by a high class chef."
	icon_state = "chef"
	item_state = "chef"
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	spawn_blacklisted = TRUE

/obj/item/clothing/suit/rank/chef/classic
	name = "classic chef's apron"
	desc = "A basic, dull, white chef's apron."
	icon_state = "apronchef"
	item_state = "apronchef"
	blood_overlay_type = "armor"
	body_parts_covered = 0
	spawn_blacklisted = TRUE

//Detective
<<<<<<< HEAD
/obj/item/clothing/suit/storage/detective
	name = "brown trenchcoat"
	desc = "A rugged canvas trenchcoat, designed and created by TX Fabrication Corp. The coat is externally impact resistant - perfect for your next act of autodefenestration!"
	icon_state = "detective"
	item_state = "det_suit"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = 30,
		bullet = 20,
		energy = 20,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	siemens_coefficient = 0.8
	price_tag = 250
	no_fibers = TRUE	// OCCULUS EDIT

/obj/item/clothing/suit/storage/detective/ironhammer
	name = "Inspector's armored trenchcoat"
	desc = "Brown and armored trenchcoat, designed and created by Cobalt Aegis Security. The coat is externally impact resistant - perfect for your next act of autodefenestration!"
	icon_state = "insp_coat"
	item_state = "insp_coat"
	blood_overlay_type = "coat"
	rarity_value = 16.66
=======
/obj/item/clothing/suit/storage/rank/insp_trench
	name = "ranger's armored trenchcoat"
	desc = "Brown and armored trenchcoat, designed and created by the Marshals. The coat is externally impact resistant - perfect for your next act of autodefenestration!"
	icon_state = "rangercoat"
	item_state = "rangercoat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	armor_list = list(melee = 30, bullet = 25, energy = 25, bomb = 0, bio = 0, rad = 0)
	price_tag = 250

/obj/item/clothing/suit/storage/rank/insp_trench/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Rangercoat Default"] = "rangercoat"
	options["Brown Trenchcoat"] = "detective"
	options["Grey Trenchcoat"] = "detective_grey"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

//Engineering
/obj/item/clothing/suit/storage/hazardvest
	name = "hazard vest"
	desc = "A high-visibility vest used in work zones."
	icon_state = "hazard"
	item_state = "hazard"
	blood_overlay_type = "armor"
	extra_allowed = list(/obj/item/tool)
<<<<<<< HEAD
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
=======
	body_parts_covered = UPPER_TORSO
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	price_tag = 50
	rarity_value = 8

/obj/item/clothing/suit/storage/hazardvest/orange
	icon_state = "hazard_orange"
	item_state = "hazard_orange"

//Paramedics
/obj/item/clothing/suit/storage/hazardvest/black
	icon_state = "hazard_black"
	item_state = "hazard_black"

//Chief Engineer/Technomancer Exultant
/obj/item/clothing/suit/storage/te_coat
	name = "chief engineer coat"
	desc = "A sturdy and proud crimson coat. Lightly armored, with some protection against radiation."
	icon_state = "te_coat"
	item_state = "te_coat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	spawn_blacklisted = TRUE
	armor = list(
		melee = 25,
		bullet = 20,
		energy = 20,
		bomb = 0,
		bio = 0,
		rad = 10
	)
	price_tag = 250

/obj/item/clothing/suit/storage/hazardvest/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Orange"] = "hazard"
	options["Black"] =  "hazard_black"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		item_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

//Roboticist
/obj/item/clothing/suit/storage/rank/robotech_jacket
	name = "robotech jacket"
	desc = "Jacket for those who like to get dirty in a machine oil."
	icon_state = "robotech_jacket"
	item_state = "robotech_jacket"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	price_tag = 50
<<<<<<< HEAD
	rarity_value = 5
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

/obj/item/clothing/suit/storage/surgical_apron
	name = "surgical apron"
	desc = "Excellent blood collector."
	icon_state = "surgeon"
	item_state = "surgeon"
	blood_overlay_type = "armor"
	spawn_blacklisted = TRUE
	extra_allowed = list(
		/obj/item/tool/bonesetter,
		/obj/item/tool/cautery,
		/obj/item/tool/saw/circular,
		/obj/item/tool/hemostat,
		/obj/item/tool/retractor,
		/obj/item/tool/scalpel,
<<<<<<< HEAD
		/obj/item/tool/surgicaldrill,
		/obj/item/stack/medical/advanced/bruise_pack
=======
		/obj/item/tool/tape_roll/bonegel,
		/obj/item/stack/medical/bruise_pack/advanced
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	price_tag = 50
