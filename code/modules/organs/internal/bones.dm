/obj/item/organ/internal/bone
	name = "bone"
	icon_state = "bone_braces"
	desc = "You have got a bone to pick with this"
	organ_efficiency = list(OP_BONE = 100)
	price_tag = 100
	force = WEAPON_FORCE_NORMAL
<<<<<<< HEAD
	max_damage = 100
	var/broken_description = ""
	var/reinforced = FALSE

/obj/item/organ/internal/bone/Initialize()
    . = ..()
    src.transform *= 0.5 // this little trick makes bone size small while keeping detail level of 32x32 bones.

/obj/item/organ/internal/bone/proc/fracture()
	if(owner)
		owner.visible_message(
			SPAN_DANGER("You hear a loud cracking sound coming from \the [owner]."),
			SPAN_DANGER("Something feels like it shattered in your [name]"),
			SPAN_DANGER("You hear a sickening crack.")
		)
		if(owner.species && !(owner.species.flags & NO_PAIN))
			owner.emote("scream")

	parent.status |= ORGAN_BROKEN	//Holding the status on the parent organ to make transition to erismed organ processes easier.
	broken_description = pick("broken","fracture","hairline fracture")
	parent.perma_injury = parent.brute_dam
	take_damage(10, 0)

	// Fractures have a chance of getting you out of restraints
	if(prob(25))
		parent.release_restraints()

/obj/item/organ/internal/bone/proc/mend()
	parent.status &= ~ORGAN_BROKEN
	parent.status &= ~ORGAN_SPLINTED
	parent.perma_injury = 0


/obj/item/organ/internal/bone/proc/reinforce()
	if(!reinforced) //Just in case
		organ_efficiency[OP_BONE] += 33
		reinforced = TRUE
		name = "reinforced [name]"
		icon_state = "reinforced_[icon_state]"
=======
	var/broken_description = ""
	var/reinforced = FALSE
	max_damage = IORGAN_SKELETAL_HEALTH
	min_bruised_damage = 4
	min_broken_damage = 6

/// Bones can be repaired after being destroyed. It's not ideal to have this here instead of in the parent (checking for bone efficiencies), but there are fewer corner cases this way.
/obj/item/organ/internal/bone/die()
	return

obj/item/organ/internal/bone/add_initial_transforms()
	. = ..()

	add_new_transformation(/datum/transform_type/modular, list(0.5, 0.5, flag = BONE_INITIAL_SCALE_TRANSFORM, priority = BONE_INITIAL_SCALE_TRANSFORM_PRIORITY))

/obj/item/organ/internal/bone/get_possible_wounds(damage_type, sharp, edge)
	var/list/possible_wounds = list()

	// Determine possible wounds based on nature and damage type
	var/is_robotic = BP_IS_ROBOTIC(src)
	var/is_organic = BP_IS_ORGANIC(src) || BP_IS_ASSISTED(src)

	switch(damage_type)
		if(BRUTE)
			if(!edge)
				if(sharp)
					if(is_organic)
						LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/organic/bone_sharp))
					if(is_robotic)
						LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/robotic/sharp))
				else
					if(is_organic)
						LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/organic/bone_blunt))
					if(is_robotic)
						LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/robotic/blunt))
			else
				if(is_organic)
					LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/organic/bone_edge))
				if(is_robotic)
					LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/robotic/edge))
		if(BURN)
			if(is_organic)
				LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/organic/burn))
			if(is_robotic)
				LAZYADD(possible_wounds, subtypesof(/datum/component/internal_wound/robotic/emp_burn))

	return possible_wounds
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/organ/internal/bone/chest
	name = "ribcage"
	icon_state = "ribcage"
	parent_organ_base = BP_CHEST

/obj/item/organ/internal/bone/groin
	name = "pelvis"
	icon_state = "pelvis"
	parent_organ_base = BP_GROIN

/obj/item/organ/internal/bone/head
	name = "skull"
	icon_state = "skull"
<<<<<<< HEAD
=======
	item_state = "yorick"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	parent_organ_base = BP_HEAD

/obj/item/organ/internal/bone/r_arm
	name = "right humerus"
	icon_state = "right_arm"
	parent_organ_base = BP_R_ARM

/obj/item/organ/internal/bone/l_arm
	name = "left humerus"
	icon_state = "left_arm"
	parent_organ_base = BP_L_ARM

<<<<<<< HEAD
/obj/item/organ/internal/bone/r_hand
	name = "right carpals"
	icon_state = "right_arm"
	organ_tag = BP_B_R_HAND
	parent_organ_base = BP_R_HAND

/obj/item/organ/internal/bone/l_hand
	name = "left carpals"
	icon_state = "left_arm"
	organ_tag = BP_B_L_HAND
	parent_organ_base = BP_L_HAND

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/organ/internal/bone/r_leg
	name = "right femur"
	icon_state = "right_leg"
	parent_organ_base = BP_R_LEG
	force = WEAPON_FORCE_PAINFUL

/obj/item/organ/internal/bone/l_leg
	name = "left femur"
	icon_state = "left_leg"
	parent_organ_base = BP_L_LEG
	force = WEAPON_FORCE_PAINFUL

<<<<<<< HEAD
/obj/item/organ/internal/bone/r_foot
	name = "right tibia"
	icon_state = "right_leg"
	organ_tag = BP_B_R_FOOT
	parent_organ_base = BP_R_FOOT

/obj/item/organ/internal/bone/l_foot
	name = "left tibia"
	icon_state = "left_leg"
	organ_tag = BP_B_L_FOOT
	parent_organ_base = BP_L_FOOT

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
//Robotic limb variants
/obj/item/organ/internal/bone/chest/robotic
	name = "chest frame"
	icon_state = "metal_ribcage"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/organ/internal/bone/groin/robotic
	name = "groin frame"
	icon_state = "metal_pelvis"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/organ/internal/bone/head/robotic
	name = "head frame"
	icon_state = "metal_skull"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/organ/internal/bone/r_arm/robotic
	name = "right arm frame"
	icon_state = "metal_right_arm"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/organ/internal/bone/l_arm/robotic
	name = "left arm frame"
	icon_state = "metal_left_arm"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

<<<<<<< HEAD
/obj/item/organ/internal/bone/r_hand/robotic
	name = "right hand frame"
	icon_state = "metal_right_arm"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/organ/internal/bone/l_hand/robotic
	name = "left hand frame"
	icon_state = "metal_left_arm"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/organ/internal/bone/r_leg/robotic
	name = "right leg frame"
	icon_state = "metal_right_leg"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/organ/internal/bone/l_leg/robotic
	name = "left leg frame"
	icon_state = "metal_left_leg"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)
<<<<<<< HEAD

/obj/item/organ/internal/bone/r_foot/robotic
	name = "right foot frame"
	icon_state = "metal_right_leg"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

/obj/item/organ/internal/bone/l_foot/robotic
	name = "left foot frame"
	icon_state = "metal_left_leg"
	nature = MODIFICATION_SILICON
	matter = list(MATERIAL_STEEL = 2, MATERIAL_PLASTIC = 2)

//Bone braces
/obj/item/bone_brace
	name = "bone braces"
	desc = "Little metal bits that bones can be reinforced with"
	icon = 'icons/obj/surgery.dmi'
	icon_state = "bone_braces"
	w_class = ITEM_SIZE_SMALL
	matter = list(MATERIAL_PLASTEEL = 3)
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
