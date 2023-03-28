/obj/item/implant/carrion_spider/flashbang
	name = "flashbang spider"
	icon_state = "spiderling_flashbang"
	spider_price = 15
<<<<<<< HEAD
=======
	var/det_time = 2 SECONDS
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e

/obj/item/implant/carrion_spider/flashbang/activate()
	..()
	if(wearer)
		wearer.apply_damage(10, BURN, part)
<<<<<<< HEAD

=======
		to_chat(wearer, SPAN_DANGER("You feel an uncomfortable heat build up within you!"))
		visible_message(SPAN_WARNING("[wearer] suddenly turns brighter and brighter!"))
		src.uninstall()
	else
		visible_message(SPAN_DANGER("[src] flashes brightly!"))
	playsound(src, 'sound/voice/insect_battle_screeching.ogg', 80, 1, 5)
	src.set_light(3,3, COLOR_YELLOW)
	spawn(det_time)
		src?.prime()

/obj/item/implant/carrion_spider/flashbang/proc/prime()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	for(var/obj/structure/closet/L in view(7, get_turf(src)))
		if(locate(/mob/living/carbon/, L))
			for(var/mob/living/carbon/M in L)
				flashbang_bang(get_turf(src), M)

	for(var/mob/living/carbon/M in view(7, get_turf(src)))
		flashbang_bang(get_turf(src), M)

	new/obj/effect/sparks(get_turf(src))
	new/obj/effect/effect/smoke/illumination(get_turf(src), brightness=15)
<<<<<<< HEAD
	die()
=======
	die()
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
