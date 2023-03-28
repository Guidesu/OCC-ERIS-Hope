/obj/item/stack/nanopaste
	name = "nanopaste"
	singular_name = "nanite swarm"
<<<<<<< HEAD:code/game/objects/items/stacks/nanopaste.dm
	desc = "A tube of paste containing swarms of repair nanites. Very effective in repairing robotic machinery."
	icon = 'icons/obj/stack/items.dmi'
	icon_state = "nanopaste"
	matter = list(MATERIAL_PLASTEEL = 0.1, MATERIAL_STEEL = 1)
=======
	desc = "A tube of paste containing swarms of repair nanites. Very effective in repairing mechanical bodyparts, organs, and smart purging of toxic buildup."
	icon = 'icons/obj/stack/items.dmi'
	icon_state = "nanopaste"
	matter = list(MATERIAL_PLASTIC = 1, MATERIAL_PLASTEEL = 0.2, MATERIAL_STEEL = 1)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/game/objects/items/stacks/medical_stacks/nanopaste.dm
	origin_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 3)
	amount = 5
	w_class = ITEM_SIZE_SMALL //just so you can place same places that a brute pack would be
	price_tag = 80
<<<<<<< HEAD:code/game/objects/items/stacks/nanopaste.dm
	spawn_tags = SPAWN_TAG_MEDICINE
	rarity_value = 40
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/game/objects/items/stacks/medical_stacks/nanopaste.dm


/obj/item/stack/nanopaste/attack(mob/living/M, mob/user)
	if(..())
		return 1
	if (!istype(M) || !istype(user))
		return 0
	if (isrobot(M))	//Repairing cyborgs
		var/mob/living/silicon/robot/R = M
		if (R.getBruteLoss() || R.getFireLoss() )
			user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
			R.adjustBruteLoss(-15)
			R.adjustFireLoss(-15)
			R.updatehealth()
			use(1)
			user.visible_message(SPAN_NOTICE("\The [user] applied some [src] at [R]'s damaged areas."),\
				SPAN_NOTICE("You apply some [src] at [R]'s damaged areas."))
		else
			to_chat(user, SPAN_NOTICE("All [R]'s systems are nominal."))

	if (ishuman(M))		//Repairing robolimbs
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/external/S = H.get_organ(user.targeted_organ)

<<<<<<< HEAD:code/game/objects/items/stacks/nanopaste.dm
		if(S && BP_IS_ROBOTIC(S) && S.get_damage() && S.open == 0)
			for(var/datum/wound/W in S.wounds)
				if(W.internal)
					return
				if(amount <= 0)
					break
				if(!do_mob(user, M, W.damage/5))
					to_chat(user, SPAN_NOTICE("You must stand still to repair \the [S]."))
					break
				if(!use(1))
					to_chat(user, SPAN_WARNING("You have run out of \the [src]."))
					return
				W.heal_damage(CLAMP(user.stats.getStat(STAT_MEC)/2.5, 5, 20))
				to_chat(user, SPAN_NOTICE("You patch some wounds on \the [S]."))
			S.update_damages()
			if(S.get_damage())
				to_chat(user, SPAN_WARNING("\The [S] still needs further repair."))
				return
		if (can_operate(H, user) == CAN_OPERATE_ALL)        //Checks if mob is lying down on table for surgery
			do_surgery(H,user,src, TRUE)
=======
		if(S && S.open == 1)
			if(BP_IS_ROBOTIC(S))
				if(S.get_damage())
					user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
					S.heal_damage(15, 15, TRUE)
					H.updatehealth()
					use(1)
					user.visible_message(
						"<span class='notice'>\The [user] applies some nanite paste at[user != M ? " \the [M]'s" : " \the"][S.name] with \the [src].</span>",
						"<span class='notice'>You apply some nanite paste at [user == M ? "your" : "[M]'s"] [S.name].</span>"
					)
				else
					to_chat(user, SPAN_NOTICE("Nothing to fix here."))
		else
			if (can_operate(H, user))        //Checks if mob is lying down on table for surgery
				if (do_surgery(H,user,src))
					return
			else
				to_chat(user, SPAN_NOTICE("Nothing to fix in here.")) //back to the original


//For medical crafting; not nanopaste but hey, it's close.
/obj/item/stack/sterilizer_crystal
	name = "sterilizer crystals"
	singular_name = "sterilizer crystal"
	desc = "A solid, crystalized form of steralized reagents. Used by Soteria typically in making medical supplies. Or by crack-addicts who want a mouth full of cleaning solution."
	icon = 'icons/obj/stack/items.dmi'
	icon_state = "sterilizer_crystal"
	amount = 5
	w_class = ITEM_SIZE_TINY
	price_tag = 40
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e:code/game/objects/items/stacks/medical_stacks/nanopaste.dm
