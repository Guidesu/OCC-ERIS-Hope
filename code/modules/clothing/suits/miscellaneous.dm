/*
 * Lasertag
 */
/obj/item/clothing/suit/fluff/bluetag
	name = "blue plasma tag armour"
	desc = "Blue Pride, Station Wide."
	icon_state = "bluetag"
	item_state = "bluetag"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO
<<<<<<< HEAD
	allowed = list (/obj/item/gun/energy/lasertag/blue)
	siemens_coefficient = 3
	style = STYLE_NONE
=======
	allowed = list (/obj/item/gun/energy/lasertag)
	siemens_coefficient = 3.0
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/suit/fluff/redtag
	name = "red plasma tag armour"
	desc = "Reputed to go faster."
	icon_state = "redtag"
	item_state = "redtag"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO
<<<<<<< HEAD
	allowed = list (/obj/item/gun/energy/lasertag/red)
	siemens_coefficient = 3
	style = STYLE_NONE

/*
 * Costume
 */
/obj/item/clothing/suit/pirate
	name = "pirate coat"
	desc = "Yarr."
	icon_state = "pirate"
	item_state = "pirate"
	body_parts_covered = UPPER_TORSO|ARMS
	style = STYLE_LOW
=======
	allowed = list (/obj/item/gun/energy/lasertag)
	siemens_coefficient = 3.0

/obj/item/clothing/suit/fluff/greentag
	name = "green plasma tag armour"
	desc = "Started green, ended a legend."
	icon_state = "greentag"
	item_state = "greentag"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO
	allowed = list (/obj/item/gun/energy/lasertag)
	siemens_coefficient = 3.0

/obj/item/clothing/suit/fluff/yellowtag
	name = "yellow plasma tag armour"
	desc = "The only thing yellow about you is your armor."
	icon_state = "yellowtag"
	item_state = "yellowtag"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO
	allowed = list (/obj/item/gun/energy/lasertag)
	siemens_coefficient = 3.0

/obj/item/clothing/suit/cyborg_suit
	name = "cyborg suit"
	desc = "Suit for a cyborg costume."
	icon_state = "death"
	item_state = "death"
	flags = CONDUCT
	fire_resist = T0C+5200
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

obj/item/clothing/suit/fluff/kimono
	name = "kimono"
	desc = "A traditional Japanese kimono."
	icon_state = "kimono"

<<<<<<< HEAD
/obj/item/clothing/suit/judgerobe
	name = "judge's robe"
	desc = "This robe commands authority."
	icon_state = "judge"
	item_state = "judge"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	allowed = list(/obj/item/storage/fancy/cigarettes,/obj/item/spacecash)
	flags_inv = HIDEJUMPSUIT
	style = STYLE_LOW


/obj/item/clothing/suit/wcoat
	name = "waistcoat"
	desc = "For some classy, murderous fun."
	icon_state = "vest"
	item_state = "wcoat"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	style = STYLE_LOW


/obj/item/clothing/suit/syndicatefake
	name = "red space suit replica"
	icon_state = "syndicate"
	item_state = "space_suit_syndicate"
	desc = "A plastic replica of the syndicate space suit, you'll look just like a real murderous syndicate agent in this! This is a toy, it is not made for use in space!"
	w_class = ITEM_SIZE_NORMAL
	allowed = list(/obj/item/device/lighting/toggleable/flashlight,/obj/item/tank,/obj/item/toy)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	item_flags = COVER_PREVENT_MANIPULATION
	style = STYLE_LOW


/obj/item/clothing/suit/chickensuit
	name = "Chicken Suit"
	desc = "A suit made long ago by the ancient empire KFC."
	icon_state = "chickensuit"
	item_state = "chickensuit"
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	flags_inv = HIDESHOES|HIDEJUMPSUIT
	siemens_coefficient = 2
	style = STYLE_LOW


/obj/item/clothing/suit/monkeysuit
	name = "Monkey Suit"
	desc = "A suit that looks like a primate"
	icon_state = "monkeysuit"
	item_state = "monkeysuit"
	body_parts_covered = UPPER_TORSO|ARMS|LOWER_TORSO|LEGS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	siemens_coefficient = 2


/obj/item/clothing/suit/cardborg
	name = "cardborg suit"
	desc = "An ordinary cardboard box with holes cut in the sides."
	icon_state = "cardborg"
	item_state = "cardborg"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	flags_inv = HIDEJUMPSUIT
=======
obj/item/clothing/suit/fluff/miko
	name = "miko dress"
	desc = "A traditional purple Japanese miko dress."
	icon_state = "miko"

/obj/item/clothing/suit/fluff/customs
	name = "customs jacket"
	desc = "A standard SolFed Customs formal jacket."
	icon_state = "customs_jacket"
	item_state_slots = list(slot_r_hand_str = "suit_blue", slot_l_hand_str = "suit_blue")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/*
 * Misc
 */

/obj/item/clothing/suit/straight_jacket
	name = "straight jacket"
	desc = "A suit that completely restrains the wearer."
	icon_state = "straight_jacket"
	item_state = "straight_jacket"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL
	allowed = list(/obj/item/tank)

/*Swimsuit*/

<<<<<<< HEAD
//pyjamas
//originally intended to be pinstripes >.>

/obj/item/clothing/under/bluepyjamas
	name = "blue pyjamas"
	desc = "Slightly old-fashioned sleepwear."
	icon_state = "blue_pyjamas"
	item_state = "blue_pyjamas"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS

/obj/item/clothing/under/redpyjamas
	name = "red pyjamas"
	desc = "Slightly old-fashioned sleepwear."
	icon_state = "red_pyjamas"
	item_state = "red_pyjamas"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS


/obj/item/clothing/suit/xenos
	name = "xenos suit"
	desc = "A suit made out of chitinous alien hide."
	icon_state = "xenos"
	item_state = "xenos_helm"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	siemens_coefficient = 2

//swimsuit
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/clothing/under/swimsuit/
	siemens_coefficient = 1
	body_parts_covered = 0

/obj/item/clothing/under/swimsuit/black
	name = "black swimsuit"
	desc = "A black swimsuit perfect for the pool."
	icon_state = "swim_black"

/obj/item/clothing/under/swimsuit/blue
	name = "blue swimsuit"
	desc = "A blue swimsuit perfect for the pool."
	icon_state = "swim_blue"

<<<<<<< HEAD
/obj/item/clothing/under/swimsuit/purple
	name = "purple swimsuit"
	desc = "An oldfashioned purple swimsuit."
	icon_state = "swim_purp"
=======
/obj/item/clothing/under/swimsuit/earth
	name = "earth swimsuit"
	desc = "A earth swimsuit perfect for the pool."
	icon_state = "swim_earth"
	siemens_coefficient = 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/under/swimsuit/green
	name = "green swimsuit"
	desc = "A green swimsuit perfect for the pool."
	icon_state = "swim_green"

/obj/item/clothing/under/swimsuit/purple
	name = "purple swimsuit"
	desc = "A purple swimsuit perfect for the pool."
	icon_state = "swim_purp"
	siemens_coefficient = 1

/obj/item/clothing/under/swimsuit/red
	name = "red swimsuit"
	desc = "A red swimsuit perfect for the pool."
	icon_state = "swim_red"

/obj/item/clothing/under/swimsuit/striped
	name = "striped swimsuit"
	desc = "A striped swimsuit perfect for the pool."
	icon_state = "swim_striped"
	siemens_coefficient = 1

/obj/item/clothing/under/swimsuit
	name = "white swimsuit"
	desc = "A white swimsuit perfect for the pool."
	icon_state = "swim_white"
	siemens_coefficient = 1

/obj/item/clothing/under/swimsuit/ntswimsuit
	name = "Absolutist swimsuit"
	desc = "A fine, white and gold trim swimsuit produced and often worn by those of the faith"
	icon_state = "swim_nt"
	siemens_coefficient = 1

/*Poncho*/

/obj/item/clothing/suit/poncho/blue
	name = "blue poncho"
	desc = "A comfortable sleeveless poncho with a blue design."
	icon_state = "blueponcho"
	item_state = "blueponcho"

/obj/item/clothing/suit/poncho/brown
	name = "brown poncho"
	desc = "A comfortable sleeveless poncho with a brown design."
	icon_state = "classicponcho"
	item_state = "classicponcho"
	style = STYLE_LOW
	spawn_tags = SPAWN_TAG_CLOTHING_SUIT_PONCHO
	rarity_value = 5

/obj/item/clothing/suit/poncho/tactical
	name = "blue poncho"
	desc = "A simple, comfortable poncho in blue colors."
	icon_state = "tacticalponcho"
	item_state = "tacticalponcho"
	rarity_value = 80


/obj/item/clothing/suit/poncho/green
	name = "green poncho"
	desc = "A comfortable sleeveless poncho with a green design."
	icon_state = "greenponcho"
	item_state = "greenponcho"

/obj/item/clothing/suit/poncho/pink
	name = "pink poncho"
	desc = "A comfortable sleeveless poncho with a pink design."
	icon_state = "pinkponcho"
	item_state = "pinkponcho"

/obj/item/clothing/suit/poncho/purple
	name = "purple poncho"
	desc = "A comfortable sleeveless poncho with a purple design."
	icon_state = "purpleponcho"
	item_state = "purpleponcho"

/obj/item/clothing/suit/poncho
	name = "red poncho"
	desc = "A comfortable sleeveless poncho with a red design."
	icon_state = "redponcho"
	item_state = "redponcho"

/obj/item/clothing/suit/poncho/tactical
	name = "blue poncho"
	desc = "A simple, comfortable poncho in blue colors."
	icon_state = "tacticalponcho"
	item_state = "tacticalponcho"

/*Shirts*/

/obj/item/clothing/suit/shirt
	name = "corgi shirt"
	desc = "A curiously comfortable shirt covered with a picture of a corgi."
	icon_state = "ianshirt"
	item_state = "ianshirt"

/obj/item/clothing/suit/shirt/nerd
	name = "gamer shirt"
	desc = "A baggy shirt with vintage game character Phanic the Weasel. "
	icon_state = "nerdshirt"
	item_state = "nerdshirt"

/obj/item/clothing/suit/shirt/vape //wearing this is asking to get beat.
	name = "vape naysh shirt"
	desc = "A cheap shirt with a tacky VN logo on the front."
	icon_state = "vapeshirt"
	item_state = "vapeshirt"

/*Lizard*/

/obj/item/clothing/suit/lizard/robe
	name = "roughspun robes"
	desc = "A traditional roughspun garment."
	icon_state = "robe-unathi"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS

/obj/item/clothing/suit/lizard/mantle
	name = "hide mantle"
	desc = "A rather grisly selection of cured hides and skin, sewn together to form a ragged mantle."
	icon_state = "mantle-unathi"
	body_parts_covered = UPPER_TORSO

/*Feline*/

/obj/item/clothing/suit/feline/furs
	name = "heavy furs"
	desc = "A traditional heavy fur garment."
	icon_state = "zhan_furs"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL

/obj/item/clothing/suit/sling
	name = "universal sling"
	desc = "A generic universal equipment sling for whatever you could need on your back."
	icon_state = "universal_sling"
	allowed = list (/obj/item/gun,
	/obj/item/device,
	/obj/item/material,
	/obj/item/storage/pouch,
	/obj/item/storage/box,
	/obj/item/storage/firstaid,
	/obj/item/storage/lockbox,
	/obj/item/storage/part_replacer,
	/obj/item/storage/secure,
	/obj/item/storage/toolbox,
	/obj/item/storage/briefcase,
	/obj/item/tank,
	/obj/item/ammo_magazine,
	/obj/item/ammo_magazine/ammobox/
	)

/obj/item/clothing/suit/storage/punkvest
	name = "punk vest"
	desc = "Sleek grey vest with pockets in it. You feel absolutely punk wearing this sturdy leather coat."
	icon_state = "punk_vest"
	item_state = "punk_vest"
	armor_list = list(
		melee = 5,
		bullet = 5,
		energy = 5,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO


/obj/item/clothing/suit/tabard
	name = "ivory tabard"
	desc = "A somewhat revealing ivory tabard favored by older orders for ceremony, used often for funerals and coupled with dark under clothes."
	icon_state = "white_tabard"
	item_state = "white_tabard"

/obj/item/clothing/suit/tabard/blacksilk
	name = "blacksilk tabard"
	desc = "A somewhat revealing black and gold tabard favored by older orders for ceremony, used often for funerals and coupled with light under clothes."
	icon_state = "church_blacksilk_suit"
	item_state = "church_blacksilk_suit"

/obj/item/clothing/suit/punkvest
	name = "punk vest"
	desc = "A dark vest made out of light, breathable fabric. Feeling lucky, punk?"
	icon_state = "punkvest"
	item_state = "punkvest"
	armor_list = list(
		melee = 5,
		bullet = 5,
		energy = 0,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO

/obj/item/clothing/suit/storage/toggle/windbreaker
	name = "windbreaker"
	desc = "A dark blue jacket with black highlights. As an added bonus, it looks fairly resistant to stains and caustic chemicals."
	icon_state = "windbreaker_open"
	item_state = "windbreaker" //Is this even used for anything?
	icon_open = "windbreaker_open"
	icon_closed = "windbreaker"
	armor_list = list(
		melee = 0,
		bullet = 0,
		energy = 5,
		bomb = 0,
		bio = 30,
		rad = 10
	)
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/punkvest/cyber
	name = "cyberpunk vest"
	desc = "A red vest with golden streaks. It's made out of tough materials, and can protect fairly well against bullets. Wake the fuck up, Samurai."
	icon_state = "cyberpunk"
	item_state = "cyberpunk"
	armor_list = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/storage/scavengerarmor
	name = "scavenger armor"
	desc = "A rigged yet sturdy scavenger armor. Strong and protective as most vests, it is made entirely from reclaimed materials. It even has pockets as well as room for additional plates of armor to be added."
	icon_state = "scav_armor"
	item_state = "scav_armor"
	tool_qualities = list(QUALITY_ARMOR = 100)
	max_upgrades = 2
	stiffness = MEDIUM_STIFFNESS
	equip_delay = 2 SECONDS
	armor_list = list(
		melee = 30, //Not the best armor, but easily crafted and adds some utility with decent protection all round.
		bullet = 20,
		energy = 25,
		bomb = 25,
		bio = 0,
		rad = 0
	)
	matter = list(MATERIAL_PLASTEEL = 5, MATERIAL_GLASS = 10, MATERIAL_STEEL = 10, MATERIAL_PLATINUM = 2)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	siemens_coefficient = 0.7

<<<<<<< HEAD
/obj/item/clothing/suit/storage/leather_jacket
	name = "leather jacket"
	desc = "A sturdy, synthetic leather jacket with a high collar. It is able to protect you from a knife slice or a bite, but don't expect too much. More importantly, it makes you look like a really bad boy or girl. And remember, Tunnel Snakes rule!"
	icon_state = "leather_jacket"
	item_state = "leather_jacket"
	rarity_value = 5.55
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 10,
=======
/obj/item/clothing/suit/storage/scavengerarmor/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["scavenger armor"] = "scav_armor"
	options["alt scavenger armor"] = "alt_scavenger"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/storage/scav_heavy
	name = "scavenger plate armor"
	desc = "A set of scavenger armor with additional armour plating installed. Though the haphazardly-made plates are heavy and don't exactly excel against projectiles, they shrug off melee attacks nicely."
	icon_state = "scav_heavy"
	item_state = "scav_heavy"
	armor_list = list(
		melee = 50, //A bit worse than riot armour
		bullet = 25,
		energy = 25,
		bomb = 25,
		bio = 0,
		rad = 0
	)
	slowdown = 0.9

/obj/item/clothing/suit/storage/scav_heavy/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["scavenger plate"] = "scav_heavy"
	options["alt scavenger plate"] = "scav_heavy_alt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1

/obj/item/clothing/suit/storage/triad
	name = "triad jacket"//RUINER reference
	desc = "A well armoured trench coat. The label on the inside claims it comes from somewhere dangerous."
	icon_state = "triadkillers"
	item_state = "triadkillers"
	armor_list = list(
		melee = 10,
		bullet = 5,
		energy = 5,
		bomb = 0,
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	price_tag = 105


/obj/item/clothing/suit/storage/akira
	name = "red jacket"//Akira, preety obvious
	desc = "A red jacket designed for riding on a bike. Has a pill icon on the back."
	icon_state = "akira"
	item_state = "akira"
	armor_list = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|ARMS
	price_tag = 60

/obj/item/clothing/suit/storage/raggedcape
	name = "outcast's cloak"
	desc = "A haphazardly-made cloak made of reclaimed leather and other fiber materials, it's all you have for protection... for now."
	icon_state = "outcast_cloak"
	item_state = "outcast_cloak"
	armor_list = list(
		melee = 20,
		bullet = 10,
		energy = 20,
		bomb = 10,
		bio = 5,
		rad = 5
		)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = T0C - 20
<<<<<<< HEAD
	siemens_coefficient = 0.7
/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake
	name = "Sleek leather Jacket"
	desc = "A sturdy, synthetic leather jacket with a high collar. It is able to protect you from a knife slice or a bite, but don't expect too much. More importantly, it makes you look like a really bad boy or girl."
	icon_state = "tunnelsnake_blank"
	item_state = "tunnelsnake_blank"

/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake_jager
	name = "Jaeger leather Jacket"
	desc = "A sturdy, synthetic leather jacket with a high collar. It is able to protect you from a knife slice or a bite, but don't expect too much. More importantly, it makes you look like a really bad boy or girl. This jacket has a Jaeger roach pictured on the back. Jaeger Roach rules!"
	icon_state = "tunnelsnake_jager"
	item_state = "tunnelsnake_jager"

/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake_snake
	name = "Tunnelsnake Jacket"
	desc = "Tunnelsnakes Rule! That's us! And we Rule!"
	icon_state = "tunnelsnake"
	item_state = "tunnelsnake"

/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake
	name = "Sleek leather Jacket"
	desc = "A sturdy, synthetic leather jacket with a high collar. It is able to protect you from a knife slice or a bite, but don't expect too much. More importantly, it makes you look like a really bad boy or girl."
	icon_state = "tunnelsnake"
	item_state = "tunnelsnake"

/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake_jager
	name = "Jaeger leather Jacket"
	desc = "A sturdy, synthetic leather jacket with a high collar. It is able to protect you from a knife slice or a bite, but don't expect too much. More importantly, it makes you look like a really bad boy or girl. This jacket has a Jaeger roach pictured on the back. Jaeger Roach rules!"
	icon_state = "tunnelsnake"
	item_state = "tunnelsnake"

/obj/item/clothing/suit/storage/leather_jacket/tunnelsnake_snake
	name = "Tunnelsnake Jacket"
	desc = "Tunnelsnakes Rule! That's us! And we Rule!"
	icon_state = "tunnelsnake"
	item_state = "tunnelsnake"
=======
	price_tag = 50
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/suit/storage/numericalgarb
	name = "numerical garb"
	desc = "A padded cloak meant for numerical, made to be biomatter resistant. The cloak is reversible, with its switchable colors being red and grey."
	icon_state = "field_numerical"
	item_state = "field_numerical"
	armor_list = list(
		melee = 10,
		bullet = 0, //well armored its not going to help a bullet
		energy = 10,
		bomb = 5,
		bio = 100,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|ARMS
	price_tag = 60

<<<<<<< HEAD
/obj/item/clothing/suit/storage/toggle/hoodie
	name = "grey hoodie"
	desc = "A warm, grey sweatshirt."
	icon_state = "grey_hoodie"
	item_state = "grey_hoodie"
	icon_open = "grey_hoodie_open"
	icon_closed = "grey_hoodie"
	min_cold_protection_temperature = T0C - 20
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	style = STYLE_LOW
	rarity_value = 5

/obj/item/clothing/suit/storage/toggle/hoodie/black
	name = "black hoodie"
	desc = "A warm, black sweatshirt."
	icon_state = "black_hoodie"
	item_state = "black_hoodie"
	icon_open = "black_hoodie_open"
	icon_closed = "black_hoodie"

/obj/item/clothing/suit/storage/cyberpunksleek
	name = "\improper Enforcer's Overcoat"
	desc = "A sleek overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek"
	item_state = "brown_jacket"
	rarity_value = 6.25
	armor = list(
		melee = 5,
		bullet = 20,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS


/obj/item/clothing/suit/storage/cyberpunksleek/green
	name = "Enforcer's gray overcoat"
	desc = "A sleek overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek_green"
	item_state = "cyberpunksleek_green"


/obj/item/clothing/suit/storage/cyberpunksleek/black
	name = "Enforcer's gray overcoat"
	desc = "A sleek overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek_black"
	item_state = "cyberpunksleek_black"

/obj/item/clothing/suit/storage/cyberpunksleek/white
	name = "Enforcer's gray overcoat"
	desc = "A sleek overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek_white"
	item_state = "cyberpunksleek_white"

/obj/item/clothing/suit/storage/cyberpunksleek_long
	name = "\improper Enforcer's long Overcoat"
	desc = "A sleek long overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek_long"
	item_state = "cyberpunksleek_long"
	armor = list(
		melee = 10,
		bullet = 20,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	style = STYLE_HIGH


/obj/item/clothing/suit/storage/cyberpunksleek_long/green
	name = "Enforcer's long green overcoat"
	desc = "A sleek long overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek_long_green"
	item_state = "cyberpunksleek_long_green"


/obj/item/clothing/suit/storage/cyberpunksleek_long/black
	name = "Enforcer's long black overcoat"
	desc = "A sleek long overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek_long_black"
	item_state = "cyberpunksleek_long_black"

/obj/item/clothing/suit/storage/cyberpunksleek_long/white
	name = "Enforcer's long white overcoat"
	desc = "A sleek long overcoat made of neo-laminated fabric. Has a reasonably sized pocket on the inside."
	icon_state = "cyberpunksleek_long_white"
	item_state = "cyberpunksleek_long_white"

/obj/item/clothing/suit/storage/bladerunner
	name = "leather coat"
	desc = "An old leather coat. Has probably seen things you wouldn't believe."
	icon_state = "bladerunner_coat"
	item_state = "bladerunner_coat"
	rarity_value = 6.25
	armor = list(
		melee = 10,
		bullet = 20,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	style = STYLE_HIGH

/obj/item/clothing/suit/storage/drive_jacket
	name = "white jacket"
	desc = "With the warmth of this jacket you feel like you're a real human being."
	icon_state = "drive_jacket"
	item_state = "drive_jacket"
	body_parts_covered = UPPER_TORSO|ARMS
	rarity_value = 16.66

/obj/item/clothing/suit/storage/violet_jacket
	name = "violet jacket"
	desc = "Coat that you ride like lightning, and will crash with you like thunder."
	icon_state = "violet_jacket"
	item_state = "violet_jacket"
	body_parts_covered = UPPER_TORSO|ARMS
	rarity_value = 16.66

/obj/item/clothing/suit/storage/bomj
	name = "bomj coat"
	desc = "A coat padded with synthetic insulation."
	icon_state = "bomj"
	item_state = "bomj"
	armor = list(
		melee = 10,
		bullet = 20,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/punkvest
	name = "punk vest"
	desc = "A dark vest made out of light, breathable fabric. Feeling lucky, punk?"
	icon_state = "punkvest"
	item_state = "punkvest"
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 0,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO

/obj/item/clothing/suit/storage/toggle/windbreaker
	name = "windbreaker"
	desc = "A dark blue jacket with black highlights. You can't think of any reason why someone would need a windbreaker in space, but the jacket looks cool either way. As an added bonus, it looks fairly resistant to stains and caustic chemicals."
	icon_state = "windbreaker_open"
	item_state = "windbreaker" //Is this even used for anything?
	icon_open = "windbreaker_open"
	icon_closed = "windbreaker"
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 0,
		bomb = 0,
		bio = 30,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/punkvest/cyber
	name = "cyberpunk vest"
	desc = "A red vest with golden streaks. It's made out of tough materials, and can protect fairly well against bullets. Wake the fuck up, Samurai."
	icon_state = "cyberpunk"
	item_state = "cyberpunk"
	armor = list(
		melee = 10,
		bullet = 20,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)

/obj/item/clothing/suit/storage/scavengerarmor
	name = "Scavenger armor"
	desc = "A sturdy, rigged Scavenger armor. strong and sturdy as most vests. made fully from junk."
	icon_state = "scav_armor"
	item_state = "scav_armor"
	armor = list(
		melee = 30,
		bullet = 30,
		energy = 30,
		bomb = 10,
		bio = 0,
		rad = 0
	)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	siemens_coefficient = 0.7
	spawn_blacklisted = TRUE
=======
/obj/item/clothing/suit/storage/numericalgarb/verb/toggle_style()
	set name = "Adjust Style"
	set category = "Object"
	set src in usr

	if(!isliving(loc))
		return

	var/mob/M = usr
	var/list/options = list()
	options["Red Garb"] = "field_numerical"
	options["Gray Garb"] = "field_numerical_alt"

	var/choice = input(M,"What kind of style do you want?","Adjust Style") as null|anything in options

	if(src && choice && !M.incapacitated() && Adjacent(M))
		icon_state = options[choice]
		to_chat(M, "You adjusted your attire's style into [choice] mode.")
		update_icon()
		update_wear_icon()
		usr.update_action_buttons()
		return 1
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
