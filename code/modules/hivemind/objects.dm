//Hivemind special objects stored here, like projectiles, wreckages or artifacts


//toxic shot, turret's ability use it
/obj/item/projectile/goo
<<<<<<< HEAD
	name = "Electrolyzed goo"
	icon = 'icons/obj/hivemind.dmi'
	icon_state = "goo_proj"
	damage_types = list(BURN = 15)
	check_armour = ARMOR_ENERGY
=======
	name = "electrolyzed goo"
	icon = 'icons/obj/hivemind.dmi'
	icon_state = "goo_proj"
	damage_types = list(BURN = 10) //Shot in large amounts and stacks a bit with its toxin damage
	check_armour = ARMOR_ENERGY //Unlike Bio, it's not either 0% or 100%. Strong Energy armour isn't common, But most of armour has some protection against energy.
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	step_delay = 2

/obj/item/projectile/goo/weak
	name = "Weakened Electrolyzed goo"
	damage_types = list(BURN = 5)

<<<<<<< HEAD

/obj/item/projectile/goo/on_hit(atom/target)
	. = ..()
	if( isliving(target) && !issilicon(target) )
		var/mob/living/L = target
		L.damage_through_armor(10, TOX, attack_flag = ARMOR_ENERGY)
	if(!(locate(/obj/effect/decal/cleanable/spiderling_remains) in target.loc))
		var/obj/effect/decal/cleanable/spiderling_remains/goo = new /obj/effect/decal/cleanable/spiderling_remains(target.loc)
		goo.name = "Electrolyzed goo"
		goo.desc = "An unknown, bubbling liquid. The fumes smell awful with a hint of ozone."
=======
/obj/item/projectile/goo/on_hit(atom/target)
	. = ..()
	if (!testing)
		if(isliving(target) && !issilicon(target) )
			var/mob/living/L = target
			L.damage_through_armor(10, TOX, attack_flag = ARMOR_RAD)
			if(!(locate(/obj/effect/decal/cleanable/spiderling_remains) in target.loc))
				var/obj/effect/decal/cleanable/spiderling_remains/goo = new /obj/effect/decal/cleanable/spiderling_remains(target.loc)
				goo.name = "electrolyzed goo" //from "acrid goo" to "acidic goo", and from "acidic goo" to "electrolyzed goo"
				goo.desc = "An unknown, bubbling liquid. The fumes smell awful with a hint of ozone."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
