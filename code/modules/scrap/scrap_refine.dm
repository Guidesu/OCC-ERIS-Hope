/obj/structure/scrap_cube
	name = "compressed scrap"
	desc = "A cube made of scrap compressed by an exosuit's hydraulic clamp. A good hard whack should be enough to knock the scrap loose."
	density = TRUE
	anchored = FALSE
	icon_state = "trash_cube"
	icon = 'icons/obj/structures/scrap/refine.dmi'

/obj/structure/scrap_cube/proc/make_pile()
	for(var/obj/item in contents)
		item.forceMove(loc)
	qdel(src)

/obj/structure/scrap_cube/Initialize(mapload, size = -1)
	if(size < 0)
		new /obj/spawner/scrap(src)
	. = ..()

/obj/structure/scrap_cube/attackby(obj/item/W, mob/user)
	user.do_attack_animation(src)
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	if(istype(W,/obj/item) && W.force >= 8)
<<<<<<< HEAD
		visible_message(SPAN_NOTICE("\The [user] smashes \the [src], restoring its original form."))
=======
		visible_message("<span class='notice'>\The [user] smashes the [src], restoring it's original form.</span>")
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
		make_pile()
	else
		visible_message(SPAN_NOTICE("\The [user] smashes \the [src], but [W] is too weak to break it!"))

/obj/item/scrap_lump
	name = "unrefined scrap"
	desc = "This thing is messed up beyond any recognition. Into the grinder it goes!"
	icon = 'icons/obj/structures/scrap/refine.dmi'
	icon_state = "unrefined"
<<<<<<< HEAD
	w_class = ITEM_SIZE_BULKY

/obj/item/scrap_lump/Initialize()
	. = ..()
	create_reagents(10)
	var/reag_num = rand(0, 3)
	for(var/i in 1 to reag_num)
		if(reagents.total_volume == reagents.maximum_volume)
			break
		reagents.add_reagent(pick(GLOB.chemical_reagents_list), rand(1, reagents.maximum_volume))
=======
	w_class = ITEM_SIZE_TINY //so we can fit more then 2 in a bag

/obj/item/scrap_lump/Initialize()
	. = ..()
	//So you can make boards or something along those lines - getto chemistry
	if(prob(30))
		create_reagents(10)
		if(prob(50))
			reagents.add_reagent("silicon", 5)
		reagents.add_reagent("silicon", 5)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	pixel_x = rand(0, 16) - 8
	pixel_y = rand(0, 8) - 8

/obj/item/stack/material/refined_scrap 
	name = "refined scrap"
	desc = "This is ghetto gold! It could be used as fuel or building material."
	icon = 'icons/obj/structures/scrap/refine.dmi'
	icon_state = "refined"
<<<<<<< HEAD
	max_amount = 30
	amount = 1
	default_type = MATERIAL_RSCRAP

/obj/item/stack/material/refined_scrap/random
	rand_min = 1
	rand_max = 5
=======
	max_amount = 120
	amount = 1
	var/matter_type = MATERIAL_RSCRAP

/obj/item/stack/sheet/refined_scrap/random
	rand_min = 5
	rand_max = 20
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
