<<<<<<< HEAD
=======

// Plasma shards have been moved to code/game/objects/items/weapons/shards.dm

//legacy crystal
/obj/machinery/crystal
	name = "crystal"
	icon = 'icons/obj/mining.dmi'
	icon_state = "crystal"

/obj/machinery/crystal/New()
	if(prob(50))
		icon_state = "crystal2"

>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
//Talk crystal

/obj/item/talkingcrystal

<<<<<<< HEAD
	name = "Crystal"
=======
	name = "crystal"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "talk_crystal"
	spawn_tags = SPAWN_TAG_XENOARCH_ITEM
	spawn_blacklisted = TRUE

<<<<<<< HEAD
/obj/item/talkingcrystal/Initialize(mapload)
	. = ..()
	src.talking_atom = new (src)
	if(prob(50))
		icon_state = "talk_crystal2"
=======
/obj/item/talkingcrystal/New()
	src.talking_atom = new (src)
	if(prob(50))
		icon_state = "talk_crystal2"
	//START_PROCESSING(SSobj, src)


///obj/item/crystal/Destroy()
	//..()
	//STOP_PROCESSING(SSobj, src)
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
