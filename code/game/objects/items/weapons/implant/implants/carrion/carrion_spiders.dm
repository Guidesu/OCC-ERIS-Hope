<<<<<<< HEAD
=======
 #define SPIDER_GROUP_1 1
 #define SPIDER_GROUP_2 2
 #define SPIDER_GROUP_3 4
 #define SPIDER_GROUP_4 8

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/carrion_spider
	name = "spooky spider"
	desc = "Small spider filled with some sort of strange fluid."
	icon = 'icons/obj/carrion_spiders.dmi'
	icon_state = "spiderling"
	allowed_organs = list(BP_HEAD, BP_CHEST, BP_GROIN)
	cruciform_resist = TRUE
	var/hidden = FALSE
	var/ready_to_attack = FALSE
	var/spider_price = 15
	var/gene_price = 0
	var/do_gibs = TRUE
<<<<<<< HEAD
	var/last_stun_time = 0 //Used to avoid cheese
=======
	var/gibs_color = "#666600"
	var/last_stun_time = 0 //Used to avoid cheese
	var/ignore_activate_all = FALSE
	var/assigned_groups
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	var/obj/item/organ/internal/carrion/core/owner_core
	var/mob/living/carbon/human/owner_mob

<<<<<<< HEAD
=======
	is_metal = FALSE
	scanner_hidden = TRUE

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/carrion_spider/New()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/item/implant/carrion_spider/Destroy()
	. = ..()
	if(owner_core)
		owner_core.active_spiders -= src

/obj/item/implant/carrion_spider/Move(NewLoc, Dir, step_x, step_y, glide_size_override)
	last_stun_time = world.time
	..()

/obj/item/implant/carrion_spider/Process()
	if(ready_to_attack && (last_stun_time <= world.time - 4 SECONDS))
<<<<<<< HEAD
		for(var/mob/living/L in mobs_in_view(1, src))
=======
		for(var/mob/living/L in living_mobs_in_view(1, src))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
			if(istype(L, /mob/living/simple_animal) || istype(L, /mob/living/carbon))
				if(is_carrion(L))
					continue
				install(L)
				to_chat(owner_mob, SPAN_NOTICE("[src] infested [L]"))
<<<<<<< HEAD
				ready_to_attack = FALSE //Occulus Edit: once a spider jumps on someone it will stop trying to jump on them again.
				break

=======
				break

/obj/item/implant/carrion_spider/on_uninstall()
	..()
	last_stun_time = world.time

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
/obj/item/implant/carrion_spider/attackby(obj/item/I, mob/living/user, params) //Overrides implanter behaviour
	if(I.force >= WEAPON_FORCE_WEAK)
		attack_animation(user)
		die_from_attack()

/obj/item/implant/carrion_spider/bullet_act(obj/item/projectile/P, def_zone)
	..()
<<<<<<< HEAD
	die_from_attack()
=======
	if (!(P.testing))
		die_from_attack()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/implant/carrion_spider/proc/die_from_attack()
	visible_message(SPAN_WARNING("[src] explodes into a bloody mess"))
	to_chat(owner_mob, SPAN_WARNING("You lost your connection with \the [src]"))
	die()

/obj/item/implant/carrion_spider/proc/die()
	if(!wearer)
<<<<<<< HEAD
		gibs(loc, null, /obj/effect/gibspawner/generic, "#666600", "#666600")
=======
		gibs(loc, null, /obj/effect/gibspawner/generic, gibs_color, gibs_color)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

	qdel(src)

/obj/item/implant/carrion_spider/attack(mob/living/M, mob/living/user)
	if(!(istype(M, /mob/living/simple_animal) || istype(M, /mob/living/carbon)))
		to_chat(user, SPAN_WARNING("You can't implant spiders into robots."))
		return
	user.drop_item()
	M.attack_hand(user)
	user.setClickCooldown(DEFAULT_QUICK_COOLDOWN)
	if(install(M, user.targeted_organ, user))
		to_chat(user, SPAN_NOTICE("You stealthily implant [M] with \the [src]"))

/obj/item/implant/carrion_spider/attack_self(mob/user)
	toggle_attack(user)
	..()

/obj/item/implant/carrion_spider/proc/toggle_attack(mob/user)
	if (ready_to_attack)
		ready_to_attack = FALSE
<<<<<<< HEAD
		to_chat(user, SPAN_NOTICE("\The [src] wont attack nearby creatures anymore."))
=======
		to_chat(user, SPAN_NOTICE("\The [src] won't attack nearby creatures anymore."))
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	else
		ready_to_attack = TRUE
		to_chat(user, SPAN_NOTICE("\The [src] is ready to attack nearby creatures."))

/obj/item/implant/carrion_spider/verb/hide_spider()
	set name = "Hide"
	set category = "Object"
	set src in oview(1)

	if(hidden)
		hidden = FALSE
		layer = initial(layer)
	else
		hidden = TRUE
		layer = PROJECTILE_HIT_THRESHHOLD_LAYER //You are still able to shoot them while they apper below tables

/obj/item/implant/carrion_spider/proc/update_owner_mob()
	owner_mob = owner_core.owner
<<<<<<< HEAD
=======

/obj/item/implant/carrion_spider/proc/toggle_group(group)
	if(check_group(group))
		assigned_groups = assigned_groups & ~group
	else
		assigned_groups = assigned_groups | group

/obj/item/implant/carrion_spider/proc/check_group(group)
	if(assigned_groups & group)
		return TRUE
	else
		return FALSE
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
