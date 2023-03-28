/* Weapons
 * Contains:
 *		Sword
 *		Classic Baton
 */

/*
 * Classic Baton
 */
<<<<<<< HEAD
/obj/item/melee
	bad_type = /obj/item/melee
	spawn_tags = SPAWN_TAG_WEAPON

=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/melee/classic_baton
	name = "police baton"
	desc = "A wooden truncheon for beating criminal scum."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "baton"
	item_state = "classic_baton"
	hitsound = 'sound/effects/woodhit.ogg'
	slot_flags = SLOT_BELT
	damtype = BRUTE
	armor_penetration = ARMOR_PEN_SHALLOW
	force = WEAPON_FORCE_ROBUST
	structure_damage_factor = STRUCTURE_DAMAGE_BLUNT

<<<<<<< HEAD
/obj/item/melee/classic_baton/attack(mob/M, mob/living/user)
	if ((CLUMSY in user.mutations) && prob(50))
		to_chat(user, SPAN_WARNING("You club yourself over the head."))
		user.Weaken(3 * force)
=======
/obj/item/melee/classic_baton/attack(mob/M as mob, mob/living/user as mob)
	if(user.a_intent == I_HELP)
		damtype = HALLOSS
		force = WEAPON_FORCE_PAINFUL
		armor_penetration = ARMOR_PEN_MODERATE

	if(user.a_intent == I_DISARM)
		damtype = HALLOSS
		force = WEAPON_FORCE_PAINFUL
		armor_penetration = ARMOR_PEN_SHALLOW

	if(user.a_intent == I_HURT)
		damtype = BRUTE
		force = WEAPON_FORCE_ROBUST

	if ((CLUMSY in user.mutations) && prob(10))
		to_chat(user, SPAN_WARNING("You club yourself over the head."))
		playsound(src.loc, 'sound/effects/woodhit.ogg', 50, 1, -1)
		user.Weaken(0.2 * force)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.damage_through_armor(2 * force, BRUTE, BP_HEAD, ARMOR_MELEE)
		else
			user.take_organ_damage(2 * force)
			playsound(src.loc, 'sound/effects/woodhit.ogg', 50, 1, -1)
		return
	return ..()


//Telescopic baton
/obj/item/melee/telebaton
	name = "telescopic baton"
	desc = "A compact yet rebalanced personal defense weapon. Can be concealed when folded."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "telebaton_0"
	item_state = "telebaton_0"
	slot_flags = SLOT_BELT
	w_class = ITEM_SIZE_SMALL
	force = 3
	structure_damage_factor = STRUCTURE_DAMAGE_BLUNT
	var/on = FALSE


<<<<<<< HEAD
/obj/item/melee/telebaton/attack_self(mob/user)
=======
/obj/item/melee/telebaton/attack_self(mob/user as mob)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	on = !on
	if(on)
		user.visible_message(
			SPAN_WARNING("With a flick of their wrist, [user] extends their telescopic baton."),
			SPAN_WARNING("You extend the baton."),
			"You hear an ominous click."
		)
		icon_state = "telebaton_1"
		item_state = "telebaton_1"
		update_wear_icon()
		w_class = ITEM_SIZE_NORMAL
		force = WEAPON_FORCE_PAINFUL//quite robust
		damtype = BRUTE
		attack_verb = list("smacked", "struck", "slapped")
	else
		user.visible_message(
			SPAN_NOTICE("\The [user] collapses their telescopic baton."),
			SPAN_NOTICE("You collapse the baton."),
			"You hear a click."
		)
		icon_state = "telebaton_0"
		item_state = "telebaton_0"
		update_wear_icon()
		w_class = ITEM_SIZE_SMALL
		force = 3//not so robust now
		attack_verb = list("hit", "punched")

	playsound(src.loc, 'sound/weapons/empty.ogg', 50, 1)
	add_fingerprint(user)

	if(blood_overlay && blood_DNA && (blood_DNA.len >= 1)) //updates blood overlay, if any
<<<<<<< HEAD
		cut_overlays()//this might delete other item overlays as well but eeeeeeeh
=======
		cut_overlays()//this might delete other item over-lays as well but eeeeeeeh
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

		var/icon/I = new /icon(src.icon, src.icon_state)
		I.Blend(new /icon('icons/effects/blood.dmi', rgb(255,255,255)),ICON_ADD)
		I.Blend(new /icon('icons/effects/blood.dmi', "itemblood"),ICON_MULTIPLY)
		blood_overlay = I

<<<<<<< HEAD
		add_overlays(blood_overlay)

	return

/obj/item/melee/telebaton/attack(mob/target, mob/living/user)
	if(on)
		if ((CLUMSY in user.mutations) && prob(50))
			to_chat(user, SPAN_WARNING("You club yourself over the head."))
			user.Weaken(3 * force)
=======
		add_overlay(blood_overlay)

	return

/obj/item/melee/telebaton/attack(mob/target as mob, mob/living/user as mob)
	if(on)
		if(user.a_intent == I_HELP)
			damtype = HALLOSS
			force = WEAPON_FORCE_PAINFUL
			armor_penetration = ARMOR_PEN_MODERATE

		if(user.a_intent == I_DISARM)
			damtype = HALLOSS
			force = 18 //3 more then help but not as good as a wooden classic
			armor_penetration = ARMOR_PEN_SHALLOW

		if(user.a_intent == I_HURT)
			damtype = BRUTE
			force = WEAPON_FORCE_DANGEROUS

		if ((CLUMSY in user.mutations) && prob(10))
			to_chat(user, SPAN_WARNING("You club yourself over the head."))
			user.Weaken(0.1 * force)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			if(ishuman(user))
				var/mob/living/carbon/human/H = user
				H.damage_through_armor(2 * force, BRUTE, BP_HEAD, ARMOR_MELEE)
			else
				user.take_organ_damage(2*force)
			return
		if(..())
			playsound(src.loc, 'sound/effects/woodhit.ogg', 50, 1, -1)
			return
	else
		return ..()
