/obj/item/organ/internal/eyes
	name = "eyeballs"
	desc = "Eyes. They allow you to see."
	icon_state = "eyes"
	gender = PLURAL
	organ_efficiency = list(OP_EYES = 100)
	parent_organ_base = BP_HEAD
<<<<<<< HEAD
	price_tag = 100
=======
	price_tag = 1000
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	blood_req = 2
	max_blood_storage = 10
	oxygen_req = 1
	nutriment_req = 1
<<<<<<< HEAD
	var/eyes_color = "#000000"
	var/robo_color = "#000000"
	var/cache_key = BP_EYES
	var/list/colourmatrix = null
	var/list/colourblind_matrix = MATRIX_GREYSCALE //Special colourblindness parameters. By default, it's black-and-white.
=======
	min_bruised_damage = 4
	min_broken_damage = 7
	var/eyes_color = "#000000"
	var/robo_color = "#000000"
	var/cache_key = BP_EYES
	w_class =  ITEM_SIZE_TINY


/obj/item/organ/internal/eyes/plant
	name = "photoreceptors"
	desc = "Plant Eyes. They allow you to see."
	icon_state = "eyes_plant"

/obj/item/organ/internal/eyes/marqua
	name = "eyeball"
	desc = "A single, alien eye. It allows Mar'Qua to see."

/obj/item/organ/internal/eyes/marqua/get_icon()
	var/icon/eyes_icon = new/icon('icons/mob/human_face.dmi', "eye_marqua")
	eyes_icon.Blend(icon('icons/mob/human_face.dmi',"eye_marqua"), ICON_OVERLAY)
	eyes_icon.Blend(BP_IS_ROBOTIC(src) ? robo_color : eyes_color, ICON_ADD)
	return eyes_icon

/obj/item/organ/internal/eyes/prosthetic
	name = "prosthetic eyes"
	desc = "Eyes. They allow you to see. These one are made of metal."
	icon_state = "eyes-prosthetic"
	price_tag = 100
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 1)
	organ_efficiency = list(OP_EYES = 200)

/obj/item/organ/internal/eyes/prosthetic/fbp
	name = "advanced optical sensors"
	desc = "A pair of advanced optical sensors, providing sight for synthetics."
	price_tag = 200
	var/flash_protection = FLASH_PROTECTION_MODERATE	//For welding
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/organ/internal/eyes/proc/get_icon()
	var/icon/eyes_icon = new/icon('icons/mob/human_face.dmi', "eye_l")
	eyes_icon.Blend(icon('icons/mob/human_face.dmi', "eye_r"), ICON_OVERLAY)
	eyes_icon.Blend(BP_IS_ROBOTIC(src) ? robo_color : eyes_color, ICON_ADD)
	return eyes_icon

/obj/item/organ/internal/eyes/proc/get_cache_key()
	return "[cache_key][BP_IS_ROBOTIC(src) ? robo_color : eyes_color]"

/obj/item/organ/internal/eyes/replaced_mob(mob/living/carbon/human/target)
<<<<<<< HEAD
	..()
	// Apply our eye colour to the target.
	if(istype(target) && eyes_color)
		var/list/eyecolors = ReadRGB(eyes_color)
		target.r_eyes = eyecolors[1]
		target.g_eyes = eyecolors[2]
		target.b_eyes = eyecolors[3]
		target.update_eyes()
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	..()
	// Apply our eye colour to the target.
	if(eyes_color)
		owner.eyes_color = eyes_color
		owner.update_eyes()

/obj/item/organ/internal/eyes/proc/update_colour()
	if(!owner)
		return
	eyes_color = rgb(owner.r_eyes, owner.g_eyes, owner.b_eyes)

<<<<<<< HEAD
/obj/item/organ/internal/eyes/take_damage(amount, silent=0)
=======
/obj/item/organ/internal/eyes/take_damage(amount, damage_type = BRUTE, wounding_multiplier = 1, sharp = FALSE, edge = FALSE, silent = FALSE)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	var/oldbroken = is_broken()
	..()
	if(is_broken() && !oldbroken && owner && !owner.stat)
		to_chat(owner, SPAN_DANGER("You go blind!"))
<<<<<<< HEAD

/obj/item/organ/internal/eyes/proc/get_colourmatrix() //Returns a special colour matrix if the eyes are organic and the mob is colourblind, otherwise it uses the current one.
	//OCCULUS EDIT START - Kludge time! Due to an absurd, everyone spawns with a pair of eyes outside of their bodies, and they will switch between the two. The outside eyes will runtime without this.
	if(owner)	// Are we inside someone? Proceed as usual if we are.
		if(!(BP_IS_ROBOTIC(src)) && owner.stats.getPerk(PERK_OBORIN_SYNDROME) && !owner.is_dead())
			return colourblind_matrix
		else
			return colourmatrix
	else	// We are not. Whatever, let's just do this.
		return colourmatrix
=======


//Subtypes obsoleted by the heterochromia marking.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/organ/internal/eyes/oneeye
	icon_state = "eye_l"
	cache_key = "left_eye"

/obj/item/organ/internal/eyes/oneeye/get_icon()
	var/icon/eyes_icon
	eyes_icon = icon('icons/mob/human_face.dmi', "[icon_state]")
	eyes_icon.Blend(BP_IS_ROBOTIC(src) ? robo_color : eyes_color, ICON_ADD)
	return eyes_icon

/obj/item/organ/internal/eyes/oneeye/right
	icon_state = "eye_r"
	cache_key = "right_eye"

/obj/item/organ/internal/eyes/heterohromia
	var/second_color = "#000000"
	cache_key = "heterohromia"

/obj/item/organ/internal/eyes/heterohromia/get_cache_key()
	return "[cache_key][BP_IS_ROBOTIC(src) ? robo_color : eyes_color]&[second_color]"

/obj/item/organ/internal/eyes/heterohromia/get_icon()
	var/icon/eyes_icon = icon('icons/mob/human_face.dmi', "eye_l")
	eyes_icon.Blend(BP_IS_ROBOTIC(src) ? robo_color : eyes_color, ICON_ADD)

	var/icon/right_eye = icon('icons/mob/human_face.dmi', "eye_r")
	right_eye.Blend(second_color, ICON_ADD)
	eyes_icon.Blend(right_eye)

	return eyes_icon
