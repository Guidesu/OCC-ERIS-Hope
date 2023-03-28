/****************************************************
			   ORGAN DEFINES
****************************************************/

/obj/item/organ/external/chest
	default_description = /datum/organ_description/chest

/obj/item/organ/external/groin
	default_description = /datum/organ_description/groin

/obj/item/organ/external/head
	default_description = /datum/organ_description/head

<<<<<<< HEAD
=======

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/organ/external/head/removed_mob()
	name = "[owner.real_name]'s head"
	spawn(1)
		if(owner) // In case owner was destroyed already - gibbed, for example
			owner.update_hair()
	..()

<<<<<<< HEAD
/obj/item/organ/external/head/take_damage(brute, burn, sharp, edge, used_weapon = null, list/forbidden_limbs = list(), silent)
	. = ..()
	if(. && !disfigured)
		if (brute_dam > 40)
			if (prob(50))
				disfigure("brute")
		if (burn_dam > 40)
			disfigure("burn")
=======
/obj/item/organ/external/head/take_damage(amount, damage_type, armor_divisor = 1, wounding_multiplier = 1, sharp, edge, used_weapon = null, list/forbidden_limbs = list(), silent)
	. = ..()
	if(. && !disfigured)
		if(amount > 40)
			if(damage_type == BRUTE && prob(50))
				disfigure("brute")
		else
			if (damage_type == BURN)
				disfigure("burn")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/organ/external/head/get_conditions()
	var/list/conditions_list = ..()
	if(disfigured)
		var/list/condition = list(
			"name" = "Disfigured face",
			"fix_name" = "Restore",
			"step" = /datum/surgery_step/fix_face
		)
		conditions_list.Add(list(condition))

<<<<<<< HEAD
	return conditions_list
=======
	return conditions_list
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
