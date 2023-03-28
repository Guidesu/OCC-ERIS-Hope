/obj/item/storage/pill_bottle/dice
	name = "pack of dice"
	desc = "It's a small container with dice inside."
	spawn_tags = SPAWN_TAG_ITEM

/obj/item/storage/pill_bottle/dice/populate_contents()
	new /obj/item/dice(src)
	new /obj/item/dice/d20(src)

/*
 * Donut Box
 */

/obj/item/storage/box/donut
<<<<<<< HEAD
=======
	name = "donut box"
	desc = "A small cardboard box for storing donuts."
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/food.dmi'
	icon_state = "donutbox"
	var/startswith = 6
	max_storage_space = 12 //The amount of starting donuts multiplied by the donut item size to keep only exact space requirement met.
	can_hold = list(/obj/item/reagent_containers/food/snacks/donut)
	foldable = /obj/item/stack/material/cardboard
	initial_amount = 6
	spawn_type = /obj/item/reagent_containers/food/snacks/donut/normal

/obj/item/storage/box/donut/populate_contents()
<<<<<<< HEAD
	for(var/i in 1 to initial_amount)
		new spawn_type(src)
	update_icon()

/obj/item/storage/box/donut/on_update_icon()
	cut_overlays()
	var/i = 0
	for(var/obj/item/reagent_containers/food/snacks/donut/D in contents)
		//Occulus Edit - Refactoring this
		var/image/inthebox = new('zzzz_modular_occulus/icons/obj/food.dmi',"[i]box-donutC")
		inthebox.color = D.filling_color
		add_overlays(inthebox)
		i++

/obj/item/storage/box/donut/empty
	initial_amount = 0
=======
	for(var/i in 1 to 6)
		new /obj/item/reagent_containers/food/snacks/donut/normal(src)
	update_icon()

/obj/item/storage/box/donut/update_icon()
	cut_overlays()
	var/i = 0
	for(var/obj/item/reagent_containers/food/snacks/donut/D in contents)
		add_overlay(image('icons/obj/food.dmi', "[i][D.overlay_state]"))
		i++

/obj/item/storage/box/donut/empty
	startswith = 0
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/*
 * Emergency Ration Pack
 */

/obj/item/storage/ration_pack
	icon = 'icons/obj/food.dmi'
	icon_state = "erp_closed"
	name = "emergency ration pack"
	desc = "Silvery plastic package, with the letters \"ERP\" pasted onto the front. Seems air tight, and vacuumed sealed. \
	The packaging holds usage information within the fineprint: \
<<<<<<< HEAD
	\"Instructions: Remove contents from packaging, open both mre container and ration can, use them in-hand to activate thermal heater. \
	Thermal insulation will keep them warm for over four hours. Nutrient paste and morale bar contains medicinal additives for field performace, DO NOT OVERCONSUME.\""
=======
	\"Instructions: Remove contents from packaging, open both MRE container and ration can, use them in-hand to activate thermal heater. \
	Thermal insulation will keep them warm for over four hours. Nutrient paste and morale bar contains medicinal additives for field performance, DO NOT OVER-CONSUME.\""
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	can_hold = list(
		/obj/item/reagent_containers/food/snacks,
		/obj/item/storage/fancy/mre_cracker,
		/obj/item/material/kitchen/utensil/spoon/mre
	)
	var/open = FALSE

/obj/item/storage/ration_pack/open(mob/user)
	if (!open)
		to_chat(user, SPAN_NOTICE("You tear \the [src] open."))
		icon_state = "erp_open"
		open = TRUE
	..()

/obj/item/storage/ration_pack/populate_contents()
<<<<<<< HEAD
	new /obj/item/reagent_containers/food/snacks/mre(src)
	new /obj/item/reagent_containers/food/snacks/mre/can(src)
	new /obj/item/reagent_containers/food/snacks/mre_paste(src)
	new /obj/item/storage/fancy/mre_cracker(src)
	new /obj/item/reagent_containers/food/snacks/candy/mre(src)
	new /obj/item/material/kitchen/utensil/spoon/mre(src)
=======
	if(prob(50))
		new /obj/item/reagent_containers/food/snacks/openable/mre(src)
	else
		new /obj/item/reagent_containers/food/snacks/openable/mre/alt(src)
	new /obj/item/reagent_containers/food/snacks/openable/can(src)
	new /obj/item/storage/fancy/mre_cracker(src)
	new /obj/item/reagent_containers/food/snacks/openable/mre(src)
	new /obj/item/material/kitchen/utensil/spoon/mre(src)
	if(prob(50))
		new /obj/item/reagent_containers/food/snacks/mre_paste(src)
	else
		new /obj/item/reagent_containers/food/snacks/canned_peaches(src)
	if(prob(33))
		new /obj/item/reagent_containers/food/snacks/openable/candy
	else if(prob(33))
		new /obj/item/reagent_containers/food/snacks/openable/candy/shokoladka
	else
		new /obj/item/reagent_containers/food/snacks/openable/candy/dalococh
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
