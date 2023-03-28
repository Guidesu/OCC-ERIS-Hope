//XENOMORPH ORGANS
/obj/item/organ/internal/xenos
	name = "xeno organ"
	icon = 'icons/effects/blood.dmi'
	desc = "It smells like an accident in a chemical factory."

/obj/item/organ/internal/xenos/proc/check_alien_ability(var/cost,var/needs_foundation)
	var/obj/item/organ/internal/xenos/phoronvessel/P = owner.internal_organs_by_name[BP_PHORON]
	if(!istype(P))
<<<<<<< HEAD
		to_chat(owner, SPAN_DANGER("Your phoron vessel has been removed!"))
		return

	if(P.stored_phoron < cost)
		to_chat(owner, SPAN_WARNING("You don't have enough phoron stored to do that."))
=======
		to_chat(owner, SPAN_DANGER("Your plasma vessel has been removed!"))
		return

	if(P.stored_plasma < cost)
		to_chat(owner, SPAN_WARNING("You don't have enough plasma stored to do that."))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		return FALSE

	if(needs_foundation)
		var/turf/T = get_turf(src)
		var/has_foundation = FALSE
		if(T)
			//TODO: Work out the actual conditions this needs.
			if(!(istype(T,/turf/space)))
				has_foundation = TRUE
		if(!has_foundation)
			to_chat(owner, SPAN_WARNING("You need a solid foundation to do that on."))
			return FALSE

	P.stored_phoron -= cost
	return TRUE