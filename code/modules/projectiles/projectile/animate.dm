/obj/item/projectile/animate
	name = "bolt of animation"
	icon_state = "ice_1"
	damage_types = list(BURN = 0)
	nodamage = 1
	check_armour = ARMOR_ENERGY

<<<<<<< HEAD
/obj/item/projectile/animate/Bump(change, forced)
	if((istype(change, /obj/item) || istype(change, /obj/structure)) && !is_type_in_list(change, protected_objects))
		var/obj/O = change
		new /mob/living/simple_animal/hostile/mimic/copy(O.loc, O, firer)
	..()
=======
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
