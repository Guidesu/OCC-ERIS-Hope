<<<<<<< HEAD
#define THIEF_MASK_SANITY_COEFF_BUFF 1.6
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
#define NORMAL_MASK_SANITY_COEFF_BUFF 1.3

/obj/item/clothing/mask/muzzle
	name = "muzzle"
	desc = "To stop that awful noise."
	icon_state = "muzzle"
	item_state = "muzzle"
	body_parts_covered = FACE
	w_class = ITEM_SIZE_SMALL
	gas_transfer_coefficient = 0.90
<<<<<<< HEAD
	voicechange = 1
	rarity_value = 100
=======
	muffle_voice = FALSE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/clothing/mask/muzzle/tape
	name = "length of tape"
	desc = "It's a robust DIY muzzle!"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "tape_cross"
	item_state = null
	w_class = ITEM_SIZE_TINY

/obj/item/clothing/mask/muzzle/New()
    ..()
    say_messages = list("Mmfph!", "Mmmf mrrfff!", "Mmmf mnnf!")
    say_verbs = list("mumbles", "says")

// Clumsy folks can't take the mask off themselves.
/obj/item/clothing/mask/muzzle/attack_hand(mob/user as mob)
	if(user.wear_mask == src && !user.IsAdvancedToolUser())
		return 0
	..()

/obj/item/clothing/mask/attackby(obj/item/W, mob/user)
	if(istype(W, /obj/item/device/assembly/voice))
		if(src.muffle_voice == TRUE)
			to_chat(user, SPAN_NOTICE("[src] already has a voice transmitter in it!"))
			return
		to_chat(user, SPAN_NOTICE("[user] installs a voice transmitter in [src]."))
		src.muffle_voice = TRUE
		qdel(W)

/obj/item/clothing/mask/surgical
	name = "sterile mask"
	desc = "A sterile mask designed to help prevent the spread of diseases."
	icon_state = "sterile"
	item_state = "sterile"
	rarity_value = 25
	w_class = ITEM_SIZE_SMALL
	body_parts_covered = FACE
	item_flags = FLEXIBLEMATERIAL
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.01
<<<<<<< HEAD
	armor = list(
=======
	armor_list = list(
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		melee = 0,
		bullet = 0,
		energy = 0,
		bomb = 0,
		bio = 75,
		rad = 0
	)
	price_tag = 10

/obj/item/clothing/mask/surgical/New()
	..()
	AddComponent(/datum/component/clothing_sanity_protection, NORMAL_MASK_SANITY_COEFF_BUFF)

<<<<<<< HEAD
/obj/item/clothing/mask/thief
	name = "mastermind's mask"
	desc = "A white mask with some strange drawings. Designed to hide the wearer's face"
	icon_state = "dallas"
	flags_inv = HIDEFACE
	w_class = ITEM_SIZE_SMALL
	body_parts_covered = FACE
	armor = list(
		melee = 10,
		bullet = 10,
		energy = 10,
		bomb = 0,
		bio = 0,
		rad = 0
	)
	price_tag = 150

/obj/item/clothing/mask/thief/New()
	..()
	AddComponent(/datum/component/clothing_sanity_protection, THIEF_MASK_SANITY_COEFF_BUFF)

/obj/item/clothing/mask/thief/wolf
	name = "technician's mask"
	icon_state = "wolf"

/obj/item/clothing/mask/thief/hoxton
	name = "fugitive's mask"
	icon_state = "hoxton"

/obj/item/clothing/mask/thief/chains
	name = "enforcer's mask"
	icon_state = "chains"

//Adminbus versions with extremly high armor, should never spawn in game
/obj/item/clothing/mask/thief/adminspawn
	spawn_blacklisted = TRUE
	body_parts_covered = HEAD|FACE
	armor = list(
		melee = 60,
		bullet = 65,
		energy = 60,
		bomb = 75,
		bio = 100,
		rad = 30
	)

/obj/item/clothing/mask/thief/adminspawn/wolf
	name = "technician's mask"
	icon_state = "wolf"

/obj/item/clothing/mask/thief/adminspawn/hoxton
	name = "fugitive's mask"
	icon_state = "hoxton"

/obj/item/clothing/mask/thief/adminspawn/chains
	name = "enforcer's mask"
	icon_state = "chains"

/obj/item/clothing/mask/fakemoustache
	name = "fake moustache"
	desc = "Warning: moustache is fake."
	icon_state = "fake-moustache"
=======
//Alt race masks here
/obj/item/clothing/mask/surgical/kriosan
	name = "kriosan surgical mask"
	desc = "A sterile mask designed and fitted to help prevent the spread of diseases for your local kriosan."
	icon_state = "kriosan_sterile"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	flags_inv = HIDEFACE
	body_parts_covered = 0

//End

/obj/item/clothing/mask/snorkel
	name = "snorkel"
	desc = "Diving goggles complete with an attached air tube."
	icon_state = "snorkel"
	flags_inv = HIDEFACE
	body_parts_covered = 0

<<<<<<< HEAD
//scarves (fit in in mask slot)
/obj/item/clothing/mask/scarf
	name = "blue neck scarf"
	desc = "A blue neck scarf."
	icon_state = "blue_scarf"
	item_state = "blue_scarf"
	body_parts_covered = FACE
	item_flags = FLEXIBLEMATERIAL
	w_class = ITEM_SIZE_SMALL
	gas_transfer_coefficient = 0.90
	price_tag = 50
	rarity_value = 100

/obj/item/clothing/mask/scarf/stripedblue
	name = "striped blue scarf"
	desc = "A striped blue scarf."
	icon_state = "stripedbluescarf"
	item_state = "stripedbluescarf"

/obj/item/clothing/mask/scarf/red
	name = "red scarf"
	desc = "A red neck scarf."
	icon_state = "red_scarf"
	item_state = "red_scarf"

/obj/item/clothing/mask/scarf/stripedred
	name = "striped red scarf"
	desc = "A striped red scarf."
	icon_state = "stripedredscarf"
	item_state = "stripedredscarf"

/obj/item/clothing/mask/scarf/redwhite
	name = "checkered scarf"
	desc = "A red and white checkered neck scarf."
	icon_state = "redwhite_scarf"
	item_state = "redwhite_scarf"

/obj/item/clothing/mask/scarf/green
	name = "green scarf"
	desc = "A green neck scarf."
	icon_state = "green_scarf"
	item_state = "green_scarf"

/obj/item/clothing/mask/scarf/stripedgreen
	name = "striped green scarf"
	desc = "A striped green scarf."
	icon_state = "stripedgreenscarf"
	item_state = "stripedgreenscarf"

/obj/item/clothing/mask/scarf/ninja
	name = "ninja scarf"
	desc = "A stealthy, ominous scarf."
	icon_state = "ninja_scarf"
	item_state = "ninja_scarf"
	siemens_coefficient = 0

/obj/item/clothing/mask/pig
	name = "pig mask"
	desc = "A rubber pig mask."
	icon_state = "pig"
	item_state = "pig"
	flags_inv = HIDEFACE|BLOCKHAIR
	w_class = ITEM_SIZE_SMALL
	siemens_coefficient = 0.9
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/mask/pig/New()
	..()
	AddComponent(/datum/component/clothing_sanity_protection, NORMAL_MASK_SANITY_COEFF_BUFF)

/obj/item/clothing/mask/horsehead
	name = "horse head mask"
	desc = "A mask made of soft vinyl and latex, representing the head of a horse."
	icon_state = "horsehead"
	item_state = "horsehead"
	flags_inv = HIDEFACE|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES
	w_class = ITEM_SIZE_SMALL
	siemens_coefficient = 0.9

/obj/item/clothing/mask/horsehead/New()
	..()
	// The horse mask doesn't cause voice changes by default, the wizard spell changes the flag as necessary
	say_messages = list("NEEIIGGGHHHH!", "NEEEIIIIGHH!", "NEIIIGGHH!", "HAAWWWWW!", "HAAAWWW!")
	say_verbs = list("whinnies", "neighs", "says")
	AddComponent(/datum/component/clothing_sanity_protection, NORMAL_MASK_SANITY_COEFF_BUFF)


=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/clothing/mask/ai
	name = "camera MIU"
	desc = "Allows for direct mental connection to accessible camera networks."
	icon_state = "s-ninja"
	item_state = "s-ninja"
	flags_inv = HIDEFACE
	body_parts_covered = 0
	var/mob/observer/eye/aiEye/eye

/obj/item/clothing/mask/ai/Initialize(mapload, ...)
	. = ..()
	eye = new(src)

/obj/item/clothing/mask/ai/equipped(var/mob/user, var/slot)
	..(user, slot)
	if(slot == slot_wear_mask)
		eye.owner = user
		user.eyeobj = eye

		for(var/datum/chunk/c in eye.visibleChunks)
			c.remove(eye)
		eye.setLoc(user)

/obj/item/clothing/mask/ai/dropped(var/mob/user)
	..()
	if(eye.owner == user)
		for(var/datum/chunk/c in eye.visibleChunks)
			c.remove(eye)

		eye.owner.eyeobj = null
		eye.owner = null

// Bandanas below
/obj/item/clothing/mask/bandana
	name = "black bandana"
<<<<<<< HEAD
	//SYZYGY Edit Start
	desc = "A fine bandana with nanotech lining."
	flags_inv = null	//Now ears and hair show through it
	slot_flags = SLOT_HEAD | SLOT_MASK
	body_parts_covered = HEAD|FACE
	item_icons = list(
		slot_head_str = 'icons/mob/head.dmi',
		slot_wear_mask_str = 'icons/mob/mask.dmi'		)
	//SYZYGY Edit end
=======
	desc = "A black bandana with nanotech lining. Can be worn on the head or face."
	flags_inv = HIDEFACE
	slot_flags = SLOT_MASK|SLOT_HEAD
	body_parts_covered = FACE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon_state = "bandblack"
	item_state = "bandblack"
	item_flags = FLEXIBLEMATERIAL
	w_class = ITEM_SIZE_SMALL
	price_tag = 20
<<<<<<< HEAD
	rarity_value = 18.2
//SYZYGY Edit - Renabling this
=======
	muffle_voice = FALSE

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/clothing/mask/bandana/equipped(var/mob/user, var/slot)
	switch(slot)
		if(slot_wear_mask) //Mask is the default for all the settings
			flags_inv = HIDEFACE
			body_parts_covered = FACE
			icon_state = initial(icon_state)
		if(slot_head)
			flags_inv = 0
			body_parts_covered = HEAD
			icon_state = "[initial(icon_state)]_up"

	return ..()
//SYZYG Edit end

/obj/item/clothing/mask/bandana/red
	name = "red bandana"
	desc = "A red bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandred"
	item_state = "bandred"

/obj/item/clothing/mask/bandana/blue
	name = "blue bandana"
	desc = "A blue bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandblue"
	item_state = "bandblue"

/obj/item/clothing/mask/bandana/green
	name = "green bandana"
	desc = "A green bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandgreen"
	item_state = "bandgreen"

/obj/item/clothing/mask/bandana/yellow
	name = "yellow bandana"
	desc = "A yellow bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandgold"
	item_state = "bandgold"

/obj/item/clothing/mask/bandana/orange
	name = "orange bandana"
	desc = "A orange bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandorange"
	item_state = "bandorange"

/obj/item/clothing/mask/bandana/purple
	name = "purple bandana"
	desc = "A purple bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandpurple"
	item_state = "bandpurple"

/obj/item/clothing/mask/rank/botanist
	name = "botany bandana"
	desc = "A botany bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandbotany"
	item_state = "bandbotany"

/obj/item/clothing/mask/bandana/camo
	name = "camo bandana"
	desc = "A tactical camouflage bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandcamo"
	item_state = "bandcamo"

/obj/item/clothing/mask/bandana/skull
	name = "skull bandana"
	desc = "A skull-pattern bandana with nanotech lining. Can be worn on the head or face."
	icon_state = "bandskull"
	item_state = "bandskull"
